import compiler.*;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;

/** A top-level driver for the Demo Compiler.
 */
public class DemoComp {

  /** A command line entry point to the mini Java checker.
   */
  public static void main(String[] args) {
    if (args.length!=1) {
      System.err.println("usage: java DemoComp inputFile");
      return;
    }
    String  inputFile = args[0];
    Handler handler   = new SimpleHandler();
    try {
      FileReader reader  = new FileReader(inputFile);
      Source     source  = new JavaSource(handler, inputFile, reader);
      DCLexer    lexer   = new DCLexer(handler, source);
      DCParser   parser  = new DCParser(handler, lexer);
      Stmt       prog    = parser.getProg();
      run(prog);
    } catch (FileNotFoundException e) {
      handler.report(new Failure("Cannot open input file " + inputFile));
    }
  }

  static void run(Stmt prog) {
    System.out.println("Program is:");
    prog.print(4);

    System.out.println("Running on an empty memory:");
    Memory mem = new Memory();
    prog.exec(mem);

    System.out.println("Compiling:");
    Program p     = new Program();
    Block   entry = p.block(prog.compile(p, new Stop()));
    System.out.println("Entry point is at " + entry);
    p.show();

    System.out.println("Running on an empty memory:");
    mem      = new Memory();
    Block pc = entry;
    while (pc!=null)  {
      pc = pc.code().run(mem);
    }

    System.out.println("Generating bytecode:");
    Bytecode b = new Bytecode();
    prog.bcgen(b);
    b.stop();
    b.dump();
    System.out.println("Running on an empty memory:");
    b.exec();

    System.out.println("Done!");
  }
}
