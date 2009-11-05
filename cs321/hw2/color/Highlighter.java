
package color;
import color.HTMLLexer;


//public class Highlighter extends HTMLLexer {
public class Highlighter {

  // code gratiutously stolen from the jflex output.

  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java HTMLLexer <inputfile>");
    }
    else {

      // not inserting newlines because they aren't required
      //  and it makes our typescripts shorter.
      System.out.println("<html><head><title>My Syntax Colored Web Page</title><style type=\"text/css\">body     {white-space:pre;font-family:\"Lucida Console\",\"Courier New\",Monotype} .keyword {color:blue} .comment {color: cyan} .literal {color:green} .invalid {color:red} </style></head><body>");

      try {
        HTMLLexer scanner = new HTMLLexer( new java.io.FileReader(argv[0]) );

        scanner.yylex();
      }
      catch (java.io.FileNotFoundException e) {
        System.out.println("File not found : \""+argv[0]+"\"");
      }
      catch (java.io.IOException e) {
        System.out.println("IO error scanning file \""+argv[0]+"\"");
        System.out.println(e);
      }
      catch (Exception e) {
        System.out.println("Unexpected exception:");
        e.printStackTrace();
      }

      // finish our HTML.
      System.out.println("</body></html>");
    }
  }


}

