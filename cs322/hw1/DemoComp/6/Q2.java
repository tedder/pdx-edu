
class Q2 {
  public static void main(String[] args) {
    Stmt s
     = new Seq(new Assign("t", new Int(0)),
       new Seq(new Assign("x", new Int(6)),
       new Seq(new Assign("y", new Int(7)),
       new Seq(new While(new LT(new Int(0), new Var("x")),
         new Seq(new If(new Not(new Even(new Var("x"))),
           new Assign("t", new Plus(new Var("t"), new Var("y"))),
           new Assign("t", new Var("t"))),
         new Seq(new Assign("y", new Plus(new Var("y"), new Var("y"))),
         new Assign("x", new Halve(new Var("x")))))),
       new Print(new Var("t"))))));

    System.out.println("Complete program is:");
    s.print(4);

    System.out.println("Running on an empty memory:");
    Memory mem = new Memory();
    s.exec(mem);

    System.out.println("Compiling:");
    Program p     = new Program();
    Block   entry = p.block(s.compile(p, new Stop()));
    System.out.println("Entry point is at " + entry);
    p.show();

    System.out.println("Running on an empty memory:");
    mem      = new Memory();
    Block pc = entry;
    while (pc!=null)  {
      pc = pc.code().run(mem);
    } 

    System.out.println("Done!");
  }
}

