import java.util.Hashtable;

class Bytecode {
  // Byte code storage: --------------------------------------
  private int maxCode = 4000;
  private int prog[]  = new int[maxCode];
  private int nextCode = 0;

  private void emit(int code) {
    if (nextCode>maxCode) {
      System.out.println("Program storage space exhausted!");
      System.exit(1);
    }
    prog[nextCode++] = code;
  }

  // Mapping from variables to memory locations: -------------
  private Hashtable vars = new Hashtable();
  private int nextVar = 0;

  private int location(String var) {
    Object i = vars.get(var);
    if (i==null) {
      vars.put(var, new Integer(nextVar));
      return nextVar++;
    }
    return ((Integer)i).intValue();
  }

  // Generating labels: --------------------------------------
  private int labels[] = new int[1000];
  private int nextLab  = 0;

  public int newlabel() {
    return nextLab++;
  }

  public void atlabel(int l) {
    labels[l] = nextCode;
  }

  // Byte code instructions: ---------------------------------
  static final int LDC   = 0;    // LDC num
  static final int LOAD  = 1;    // LOAD var
  static final int STORE = 2;    // STORE var
  static final int ADD   = 3;    // ADD
  static final int SUB   = 4;    // SUB
  static final int PRINT = 5;    // PRINT
  static final int JL    = 6;    // JL  lab
  static final int JNL   = 7;    // JNL lab
  static final int JE    = 8;    // JE  lab
  static final int JNE   = 9;    // JNE lab
  static final int JMP   = 10;   // JMP lab
  static final int STOP  = 11;   // STOP

  // Individual bytecode instructions: -----------------------
  public void ldc(int n)        { emit(LDC);  emit(n); }
  public void load(String var)  { emit(LOAD);  emit(location(var)); }
  public void store(String var) { emit(STORE); emit(location(var)); }

  public void add()             { emit(ADD); }
  public void sub()             { emit(SUB); }

  public void jl(int lab)       { emit(JL);  emit(lab); }
  public void jnl(int lab)      { emit(JNL); emit(lab); }
  public void je(int lab)       { emit(JE);  emit(lab); }
  public void jne(int lab)      { emit(JNE); emit(lab); }
  public void jmp(int lab)      { emit(JMP); emit(lab); }

  public void stop()            { emit(STOP); }
  public void print()           { emit(PRINT); }

  // Display byte code instructions: -------------------------
  public void dump() {
    int pc = 0;
    while (pc < nextCode) {
      System.out.print(pc + "\t");
      switch (prog[pc++]) {
        case LDC   : System.out.println("LDC   " + prog[pc++]);
                     continue;

        case LOAD  : System.out.println("LOAD  " + prog[pc++]);
                     continue;

        case STORE : System.out.println("STORE " + prog[pc++]);
                     continue;

        case ADD   : System.out.println("ADD"); 
                     continue;

        case SUB   : System.out.println("SUB");
                     continue;

        case JL    : System.out.println("JL    " + labels[prog[pc++]]);
                     continue;

        case JNL   : System.out.println("JNL   " + labels[prog[pc++]]);
                     continue;

        case JE    : System.out.println("JE    " + labels[prog[pc++]]);
                     continue;

        case JNE   : System.out.println("JNE   " + labels[prog[pc++]]);
                     continue;

        case JMP   : System.out.println("JMP   " + labels[prog[pc++]]);
                     continue;

        case STOP  : System.out.println("STOP");
                     continue;

        case PRINT : System.out.println("PRINT");
                     continue;
      }
    }
  }

  // Byte code execution: -----------------------------------
  private int mem[]   = new int[100];
  private int stack[] = new int[1000];
  private int sp      = 0;

  private void push(int n) { stack[sp++] = n; }
  private int  pop()       { return stack[--sp]; }

  public void exec() {
    int pc = 0;
    for (;;) {
      switch (prog[pc++]) {
        case LDC   : push(prog[pc++]);
                     continue;

        case LOAD  : push(mem[prog[pc++]]);
                     continue;

        case STORE : mem[prog[pc++]] = pop();
                     continue;

        case ADD   : push(pop() + pop());
                     continue;

        case SUB   : { int r = pop();
                       int l = pop();
                       push(l - r);
                     }
                     continue;

        case JL    : { int r = pop();
                       int l = pop();
                       int t = prog[pc++];
                       if (l < r) {
                         pc = labels[t];
                       }
                     }
                     continue;

        case JNL   : { int r = pop();
                       int l = pop();
                       int t = prog[pc++];
                       if (l >= r) {
                         pc = labels[t];
                       }
                     }
                     continue;

        case JE    : { int r = pop();
                       int l = pop();
                       int t = prog[pc++];
                       if (l == r) {
                         pc = labels[t];
                       }
                     }
                     continue;

        case JNE   : { int r = pop();
                       int l = pop();
                       int t = prog[pc++];
                       if (l != r) {
                         pc = labels[t];
                       }
                     }
                     continue;

        case JMP   : pc = labels[prog[pc]];
                     continue;

        case STOP  : return;

        case PRINT : System.out.println("Output: " + pop());
                     continue;
      }
    }
  }
}
