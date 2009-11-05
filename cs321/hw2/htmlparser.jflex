// Based on the "simple example" in the JFlex manual:
// http://jflex.de/manual.html

%%

%class HTMLLexer
%public
%unicode
%line
%column
%standalone

%{
    StringBuffer string = new StringBuffer();

    // helper functions (faux macros, really)
    void print(char c) {
      System.out.print(c);
    }
    void print(char c, String label) {
      System.out.print("<span class=\"" + label + "\">" + c + "</span>");
    }
    void print(String s) {
      System.out.print(s);
    }
    void print(String s, String label) {
      System.out.print("<span class=\"" + label + "\">" + s + "</span>");
    }
    //System.out.println("<html><head><title>My Syntax Colored Web Page</title><style type=\"text/css\">body     {white-space:pre;font-family:\"Lucida Console\",\"Courier New\",Monotype} .keyword {color:blue} .comment {color:cyan} .literal {color:green} .invalid {color:red} </style></head><body>");
    //System.out.println("</body></html>");

%}

lineterminator = \r|\n|\r\n
inputcharacter = [^\r\n]
whitespace     = {lineterminator} | [ \t\f]

comment = {traditionalcomment} | {endoflinecomment}

traditionalcomment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
endoflinecomment     = "//" {inputcharacter}* {lineterminator}
// unused: commentcontent       = ( [^*] | \*+ [^/*] )*

// Some of these macros are from/inspired by the following:
// http://users.csc.calpoly.edu/~gfisher/classes/330/examples/jflex/pascal.jflex
// changed [A-Za-z] to :jletter: to conform with Unicode.

letter          = [:letter:]
digit           = [:digit:]
alphanumeric    = [:jletterdigit:]
other_id_char   = [_]
identifier      = {letter}({alphanumeric}|{other_id_char})*
integer         = 214748364[0-7]|21474836[0-3][0-9]|2147483[0-5][0-9][0-9]|214748[0-2][0-9][0-9][0-9]|21474[0-7][0-9][0-9][0-9][0-9]|2147[0-3][0-9][0-9][0-9][0-9][0-9]|214[0-6][0-9][0-9][0-9][0-9][0-9][0-9]|21[0-3][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|20[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|1[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9]|[0-9]

%state STRING


%%
  ">"     { print("&gt;"); }
  "<"     { print("&lt;"); }
  "&"     { print("&amp;"); }

  // reserved identifiers
  "boolean"     { print(yytext(), "keyword"); }
  "class"       { print(yytext(), "keyword"); }
  "else"        { print(yytext(), "keyword"); }
  "extends"     { print(yytext(), "keyword"); }
  "if"          { print(yytext(), "keyword"); }
  "int"         { print(yytext(), "keyword"); }
  "new"         { print(yytext(), "keyword"); }
  "return"      { print(yytext(), "keyword"); }
  "static"      { print(yytext(), "keyword"); }
  "super"       { print(yytext(), "keyword"); }
  "this"        { print(yytext(), "keyword"); }
  "void"        { print(yytext(), "keyword"); }
  "while"       { print(yytext(), "keyword"); }
  "null"        { print(yytext(), "keyword"); }
  "true"        { print(yytext(), "keyword"); }
  "false"       { print(yytext(), "keyword"); }
  "private"     { print(yytext(), "keyword"); }
  "protected"   { print(yytext(), "keyword"); }
  "public"      { print(yytext(), "keyword"); }
  "abstract"    { print(yytext(), "keyword"); }

  {comment}     { print(yytext(), "comment"); }
  {integer}     { print(yytext(), "literal"); }

  // match whatever is left
  .            { print(yytext()); }


