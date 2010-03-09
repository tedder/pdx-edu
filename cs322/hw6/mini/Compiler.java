package mini;

import compiler.*;
import compiler.Failure;

/** A simple program for testing the Mini lexer, parser, static
 *  analysis, and code generation phases.
 */
public class Compiler {
    public static void main(String[] args) {
        if (args.length!=2) {
            System.out.println("Program requires exactly two arguments");
        } else {
            Handler handler = new SimpleHandler();
            try {
                MiniLexer lexer
                  = new MiniLexer(new java.io.FileReader(args[0]), handler);
                MiniParser parser
                  = new MiniParser(handler, lexer);
                Fundefs defs = parser.getProgram();
  
                if (defs!=null) {                       // Did parser succeed?
                    Fundefs.check(new Context(handler, defs), defs);
                    if (handler.getNumFailures()==0) {  // Static analysis ok?
                        Assembly a = Assembly.assembleToFile(args[1]);
                        Fundefs.compile(a, defs);
                        a.close();
                    }
                }
            } catch (Failure f) {
                handler.report(f);
            } catch (Exception e) {
                handler.report(new Failure("Exception: " + e));
            }
            System.out.println("Total failures found: "
                                 + handler.getNumFailures());
        }
    }
}
