//____________________________________________________________________________
// IExpr ::= Var
//        |  Int
//        |  IExpr + IExpr
//        |  IExpr - IExpr
//        |  IExpr * IExpr

abstract class IExpr {
  abstract int    eval(Memory mem);
  abstract String show();

  abstract Code compileTo(Reg reg, Code next);
}

class Var extends IExpr {
  private String name;
  Var(String name) { this.name = name; }

  int    eval(Memory mem) { return mem.load(name); }
  String show() { return name; }

  Code compileTo(Reg reg, Code next) {
    return new Load(reg, name, next);
  }
}

class Int extends IExpr {
  private int num;
  Int(int num) { this.num = num; }

  int   eval(Memory mem) { return num; }
  String show() { return Integer.toString(num); }

  Code compileTo(Reg reg, Code next) {
    return new Immed(reg, num, next);
  }
}

class Plus extends IExpr {
  private IExpr l, r;
  Plus(IExpr l, IExpr r) { this.l = l; this.r = r; }

  int    eval(Memory mem) { return l.eval(mem) + r.eval(mem); }
  String show() { return "(" + l.show() + " + " + r.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
    Reg tmp = new Reg();
    return l.compileTo(tmp,
           r.compileTo(reg,
           new Op(reg, tmp, '+', reg, next)));
  }
}

class Multiply extends IExpr {
  private IExpr l, r;
  Multiply(IExpr l, IExpr r) { this.l = l; this.r = r; }

  int    eval(Memory mem) { return l.eval(mem) * r.eval(mem); }
  String show() { return "(" + l.show() + " * " + r.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
    Reg tmp = new Reg();
    return l.compileTo(tmp,
           r.compileTo(reg,
           new Op(reg, tmp, '*', reg, next)));
  }
}

class Minus extends IExpr {
  private IExpr l, r;
  Minus(IExpr l, IExpr r) { this.l = l; this.r = r; }

  int    eval(Memory mem) { return l.eval(mem) - r.eval(mem); }
  String show() { return "(" + l.show() + " - " + r.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
    Reg tmp = new Reg();
    return l.compileTo(tmp,
           r.compileTo(reg,
           new Op(reg, tmp, '-', reg, next)));
  }
}

//____________________________________________________________________________
// BExpr ::= IExpr < IExpr
//        |  IExpr == IExpr
//        |  BExpr && BExpr
//        |  BExpr || BExpr
//        |  ! BExpr

abstract class BExpr {
  abstract boolean eval(Memory mem);
  abstract String  show();
  abstract Code compileTo(Reg reg, Code next);
}

class LT extends BExpr {
  private IExpr l, r;
  LT(IExpr l, IExpr r) { this.l = l; this.r = r; }

  boolean eval(Memory mem) { return l.eval(mem) < r.eval(mem); }
  String show()  { return "(" + l.show() + " < " + r.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
    Reg tmp = new Reg();
    return l.compileTo(tmp,
           r.compileTo(reg,
           new Op(reg, tmp, '<', reg, next)));
  }
}

class EqEq extends BExpr {
  private IExpr l, r;
  EqEq(IExpr l, IExpr r) { this.l = l; this.r = r; }

  boolean eval(Memory mem) { return l.eval(mem) == r.eval(mem); }
  String show()  { return "(" + l.show() + " == " + r.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
    Reg tmp = new Reg();
    return l.compileTo(tmp,
           r.compileTo(reg,
           new Op(reg, tmp, '=', reg, next)));
  }
}

//____________________________________________________________________________
// Stmt  ::= Seq Stmt Stmt
//        |  Var := IExpr
//        |  While BExpr Stmt
//        |  If BExpr Stmt Stmt
//        |  Print IExpr

abstract class Stmt {
  abstract void exec(Memory mem);
  abstract Code compile(Program prog, Code next);
  abstract void print(int ind);

  void indent(int ind) {
    for (int i=0; i<ind; i++) {
      System.out.print(" ");
    }
  }
}

class Seq extends Stmt {
  private Stmt l, r;
  Seq(Stmt l, Stmt r) { this.l = l; this.r = r; }

  void exec(Memory mem) {
    l.exec(mem);
    r.exec(mem);
  }

  Code compile(Program prog, Code next) {
    return l.compile(prog, r.compile(prog, next));
  }

  void print(int ind) {
    l.print(ind);
    r.print(ind);
  }
}

class Assign extends Stmt {
  private String lhs;
  private IExpr  rhs;
  Assign(String lhs, IExpr rhs) {
    this.lhs = lhs; this.rhs = rhs;
  }

  void exec(Memory mem) {
    mem.store(lhs, rhs.eval(mem));
  }

  Code compile(Program prog, Code next) {
    Reg tmp = new Reg();
    return rhs.compileTo(tmp, new Store(lhs, tmp, next));
  }

  void print(int ind) {
    indent(ind);
    System.out.println(lhs + " = " + rhs.show() + ";");
  }
}

class While extends Stmt {
  private BExpr test;
  private Stmt  body;
  While(BExpr test, Stmt body) {
    this.test = test; this.body = body;
  }

  void exec(Memory mem) {
    while (test.eval(mem)) {
      body.exec(mem);
    }
  }

  Code compile(Program prog, Code next) {
    Block head = prog.block();
    Code  loop = new Goto(head);
    Reg   tmp  = new Reg();
    head.set(test.compileTo(tmp,
             new On(tmp,
                    prog.block(body.compile(prog, loop)),
                    prog.block(next))));
    return loop;
  }

  void print(int ind) {
    indent(ind);
    System.out.println("while (" + test.show() + ") {");
    body.print(ind+2);
    indent(ind);
    System.out.println("}");
  }
}

class Not extends BExpr {
  private BExpr b;
  Not(BExpr b) { this.b = b; }

  boolean eval(Memory mem) { return (b.eval(mem) == false); }
  String show()  { return "( ! " + b.show() + ")"; }

  Code compileTo(Reg reg, Code next) {
  //Code compile(Program prog, Code next) {
    Reg tmp = new Reg();
    IExpr z = new Int(0);

    return b.compileTo(tmp,
           z.compileTo(reg,
           new Op(reg, tmp, '=', reg, next)));
    //return b.compileTo(tmp,
    //       new Op(tmp, tmp, '=', tmp, next));
  }

  //void print(int ind) {
  //  indent(ind);
  //  System.out.println(b.show());
  //}
}


class If extends Stmt {
  private BExpr test;
  private Stmt  t, f;
  If(BExpr test, Stmt t, Stmt f) {
    this.test = test; this.t = t; this.f = f;
  }

  void exec(Memory mem) {
    if (test.eval(mem)) {
      t.exec(mem);
    } else {
      f.exec(mem);
    }
  }

  Code compile(Program prog, Code next) {
    Reg tmp  = new Reg();
    return test.compileTo(tmp,
           new On(tmp,
                  prog.block(t.compile(prog, next)),
                  prog.block(f.compile(prog, next))));
  }

  void print(int ind) {
    indent(ind);
    System.out.println("if (" + test.show() + ") {");
    t.print(ind+2);
    indent(ind);
    System.out.println("} else {");
    f.print(ind+2);
    indent(ind);
    System.out.println("}");
  }
}


class Print extends Stmt {
  private IExpr exp;
  Print(IExpr exp) { this.exp = exp; }

  void exec(Memory mem) {
    System.out.println("Output: " + exp.eval(mem));
  }
  
  Code compile(Program prog, Code next) {
    Reg tmp = new Reg();
    return exp.compileTo(tmp, new PCode(tmp, next));
  }

  void print(int ind) {
    indent(ind);
    System.out.println("print " + exp.show() + ";");
  }
}
