import java.io.*;
import compiler.*;
import mjc.*;

class LexerTest {

  /** A command line program to test your mini Java lexer.
   */
  public static void main(String[] args) {
    if (args.length!=1) {
      System.err.println("usage: java LexerTest inputFile");
      return;
    }
    String  inputFile = args[0];
    Handler handler   = new SimpleHandler();
    try {
      Reader   reader = new FileReader(inputFile);
      Source   source = new JavaSource(handler, inputFile, reader);
      MjcLexer lexer  = new MjcLexer(handler, source);
      int      count  = 0;
      while (lexer.nextToken() != 0) {
        System.out.print(lexer.getToken() + " ");
        count++;
      }
      System.out.println(" (" + count + " tokens)");

    } catch (FileNotFoundException e) {
      handler.report(new Failure("Cannot open \"" + inputFile + "\""));
    }
  }

}
