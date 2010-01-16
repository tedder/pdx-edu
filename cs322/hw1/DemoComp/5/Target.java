import java.util.Vector;

class Program {
  private Vector blocks = new Vector();

  Block block(Code code) {
    Block l = new Block(blocks.size(), code);
    blocks.add(l);
    return l;
  }

  Block block() {
    return block(null);
  }

  void show() {
    for (int i=0; i<blocks.size(); i++) {
      ((Block)blocks.elementAt(i)).print();
      System.out.println();
    }
  }
}  

class Block {
  private int num;
  private Code code;

  Block(int num, Code code) {
    this.num  = num;
    this.code = code;
  }

  void set(Code code) {
    this.code = code;
  }

  Code code() {
    return code;
  }

  public String toString() {
    return "L" + num;
  }

  void print() {
    System.out.println(this + ":");
    code.print();
  }
}

class Reg {
  private static int count = 0;
  private int num;
  private int val = 0;

  Reg() { num = count++; }

  public String toString() { return "r" + num; }

  void set(int x) { val = x; }
  int  get()      { return val; }

  void setBool(boolean x) { val = (x ? 1 : 0); }
  boolean getBool() { return (val != 0); }
}

//____________________________________________________________________________
// Code ::= Stop
//        |  Goto Block
//        |  On Reg Block Block
//        |  Load Reg Var Code
//        |  Store Var Reg Code
//        |  Immed Reg Int Code
//        |  Op Reg Reg Reg Code
//        |  PCode Reg Code

abstract class Code {
  abstract Block run(Memory mem);
  abstract void print();
}

class Stop extends Code {
  Stop() {}

  void print() { System.out.println("  stop"); }

  Block run(Memory mem) { return null; }
}

class Goto extends Code {
  private Block block;
  Goto(Block block) { this.block = block; }

  void print() { System.out.println("  goto " + block); }

  Block run(Memory mem) { return block; }
}

class On extends Code {
  private Reg reg;
  private Block t, f;
  On(Reg reg, Block t, Block f) { this.reg = reg; this.t = t; this.f = f; }

  void print() { System.out.println( "  " + reg + " -> " + t + ", " + f); }
  Block run(Memory mem) { return reg.getBool() ? t : f; }
}

class Load extends Code {
  private Reg reg;
  private String name;
  private Code next;
  Load(Reg reg, String name, Code next) {
    this.reg = reg; this.name = name; this.next = next;
  }

  void print() { System.out.println("  " + reg + " <- [" + name + "]");  next.print(); }

  Block run(Memory mem) {
    reg.set(mem.load(name));
    return next.run(mem);
  }
}

class Store extends Code {
  private String name;
  private Reg reg;
  private Code next;
  Store(String name, Reg reg, Code next) {
    this.name = name; this.reg = reg; this.next = next;
  }

  void print() { System.out.println("  [" + name + "] <- " + reg);  next.print(); }

  Block run(Memory mem) {
    mem.store(name, reg.get());
    return next.run(mem);
  }
}

class Immed extends Code {
  private Reg reg;
  private int num;
  private Code next;
  Immed(Reg reg, int num, Code next) {
    this.reg = reg; this.num = num; this.next = next;
  }

  void print() { System.out.println("  " + reg + " <- " + num);  next.print(); }

  Block run(Memory mem) {
    reg.set(num);
    return next.run(mem);
  }
}

class Op extends Code {
  private Reg r, x, y;
  private char op;
  private Code next;
  Op(Reg r, Reg x, char op, Reg y, Code next) {
    this.r = r; this.x = x; this.op = op; this.y = y; this.next = next;
  }

  void print() { System.out.println("  " + r + " <- " + x + op + y);  next.print(); }

  Block run(Memory mem) {
    switch (op) {
      case '+' : r.set(x.get() + y.get());
                 break;
      case '-' : r.set(x.get() - y.get());
                 break;
      case '<' : r.setBool(x.get() < y.get());
                 break;
      case '=' : r.setBool(x.get() == y.get());
                 break;
    }
    return next.run(mem);
  }
}

class PCode extends Code {
  private Reg reg;
  private Code next;
  PCode(Reg reg, Code next) { this.reg = reg; this.next = next; }

  void print() { System.out.println("  print " + reg);  next.print(); }

  Block run(Memory mem) {
    System.out.println("Output: " + reg.get());
    return next.run(mem);
  }
}

