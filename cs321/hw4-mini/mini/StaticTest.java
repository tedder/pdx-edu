package mini;

import compiler.Failure;
import compiler.*;

/** A simple program for testing the Mini lexer, parser, and
 *  static analysis phases.
 */
public class StaticTest {
    public static void main(String[] args) {
        if (args.length!=1) {
            System.out.println("Program requires exactly one argument");
        } else {
            Handler handler = new SimpleHandler();
            try {
                MiniLexer lexer
                  = new MiniLexer(new java.io.FileReader(args[0]), handler);
                MiniParser parser
                  = new MiniParser(handler, lexer);
                Stmts program = parser.getProgram();
  
                if (program!=null) {
                  Context ctxt = new Context(handler);
                  VarEnv env   = program.check(ctxt, null);
                  System.out.println("Final environment:");
                  VarEnv.display(env);
                }
            } catch (Exception e) {
                handler.report(new Failure("Exception: " + e));
            }
            System.out.println("Total failures found: "
                                 + handler.getNumFailures());
        }
    }
}
