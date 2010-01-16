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
}

class Reg {
  private static int count = 0;
  private int num;

  Reg() { num = count++; }
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
}

class Stop extends Code {
  Stop() {}
}

class Goto extends Code {
  private Block block;
  Goto(Block block) { this.block = block; }
}

class On extends Code {
  private Reg reg;
  private Block t, f;
  On(Reg reg, Block t, Block f) { this.reg = reg; this.t = t; this.f = f; }
}

class Load extends Code {
  private Reg reg;
  private String name;
  private Code next;
  Load(Reg reg, String name, Code next) {
    this.reg = reg; this.name = name; this.next = next;
  }
}

class Store extends Code {
  private String name;
  private Reg reg;
  private Code next;
  Store(String name, Reg reg, Code next) {
    this.name = name; this.reg = reg; this.next = next;
  }
}

class Immed extends Code {
  private Reg reg;
  private int num;
  private Code next;
  Immed(Reg reg, int num, Code next) {
    this.reg = reg; this.num = num; this.next = next;
  }
}

class Op extends Code {
  private Reg r, x, y;
  private char op;
  private Code next;
  Op(Reg r, Reg x, char op, Reg y, Code next) {
    this.r = r; this.x = x; this.op = op; this.y = y; this.next = next;
  }
}

class PCode extends Code {
  private Reg reg;
  private Code next;
  PCode(Reg reg, Code next) { this.reg = reg; this.next = next; }
}

