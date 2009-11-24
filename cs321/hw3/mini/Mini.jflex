package mini;
import compiler.*;
import java.io.*;

%%

%class      MiniLexer
%public
%extends    Phase
%implements MiniTokens
%ctorarg    Handler handler
%init{
  super(handler);
%init}

%function   yylex
%int

%eofval{
  return ENDINPUT;
%eofval}

%{

  private int  token;

  private Expr semantic;

  public int getToken() {
    return token;
  }

  public Expr getSemantic() {
    return semantic;
  }

  public int nextToken() {
    try {
      semantic = null;
      token    = yylex();
    } catch (java.io.IOException e) {
      System.out.println("IO Exception occurred:\n" + e);
    }
    return token;
  }
  
%}

Identifier = [:jletter:] [:jletterdigit:]*

LineTerminator = \r|\n|\r\n
WhiteSpace = {LineTerminator} | [ \t\f] 
InputCharacter = [^\r\n]

Comment            = {TraditionalComment} | {EndOfLineComment}
TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment   = "//" {InputCharacter}* {LineTerminator}

%%

"("             { return '('; }
")"             { return ')'; }
"{"             { return '{'; } 
"}"             { return '}'; }
";"             { return ';'; }

"="             { return '='; }
"=="            { return EQL; }
">"             { return '>'; }
">="            { return GTE; }
"<"             { return '<'; }
"<="            { return LTE; }
"!"             { return '!'; }
"~"             { return '~'; }
"!="            { return NEQ; }
"&"             { return '&'; }
"&&"            { return LAND; }
"|"             { return '|'; }
"||"            { return LOR; }
"^"             { return '^'; }
"*"             { return '*'; }
"+"             { return '+'; }
"-"             { return '-'; }
"/"             { return '/'; }

"while"         { return WHILE; }
"if"            { return IF; }
"else"          { return ELSE; }
"print"         { return PRINT; }

"int"           { return TINT; }
"boolean"       { return TBOOL; }
//"double"        { return TDOUB; }

{Identifier}    { semantic = new Id(yytext());     return IDENT; }

[0-9]+          { semantic = new IntLit(yytext()); return INTLIT; }

{WhiteSpace}    { /* ignore */ }
{Comment}       { /* ignore */ }

.|\n            { System.out.println("Invalid input");
                  System.exit(1);
                }

