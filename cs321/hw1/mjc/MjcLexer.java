package mjc;

import compiler.*;

/** A lexical analyzer for the mini Java compiler.
 */
public class MjcLexer extends SourceLexer implements MjcTokens {
  /** Construct a lexical analyzer for a mini Java compiler.
   */
  public MjcLexer(Handler handler, Source source) {
    super(handler, source);
  }

  /** Read the next token and return the corresponding integer code.
   */
  public int nextToken() {
    for (;;) {
      skipWhitespace();
      markPosition();
      lexemeText = null;
      switch (c) {
        case EOF  : return token=ENDINPUT;

        // Separators:
        case '('  : nextChar();
                    return token='(';
        case ')'  : nextChar();
                    return token=')';
        case '{'  : nextChar();
                    return token='{';
        case '}'  : nextChar();
                    return token='}';
        case ';'  : nextChar();
                    return token=';';
        case ','  : nextChar();
                    return token=',';
        case '.'  : nextChar();
                    return token='.';

        // Operators:
        case '='  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=EQEQ;
                    } else {
                      return token='=';
                    }

        case '>'  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=GTEQ;
                    } else {
                      return token='>';
                    }

        case '<'  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=LTEQ;
                    } else {
                      return token='<';
                    }

        case '!'  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=NEQ;
                    } else {
                      return token='!';
                    }

        case '&'  : nextChar();
                    if (c=='&') {
                      nextChar();
                      return token=CAND;
                    } else {
                      return token='&';
                    }

        case '|'  : nextChar();
                    if (c=='|') {
                      nextChar();
                      return token=COR;
                    } else {
                      return token='|';
                    }

        case '^'  : nextChar();
                    return token='^';

        case '+'  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=PLUSEQ;
                    } else {
                      return token='+';
                    }

        case '-'  : nextChar();
                    if (c=='=') {
                      nextChar();
                      return token=MINUSEQ;
                    } else {
                      return token='-';
                    }

        case '*'  : nextChar();
                    return token='*';

        case '/'  : nextChar();
                    if (c=='/') {
                      skipOneLineComment();
                    } else if (c=='*') {
                      skipBracketComment();
                    } else {
                      return token = '/';
                    }
                    break;

        default   : if (Character.isJavaIdentifierStart((char)c)) {
                      return identifier();
                    } else if (Character.digit((char)c, 10)>=0) {
                      return number();
                    } else {
                      illegalCharacter();
                      nextChar();
                    }
      }
    }
  }

  //- Whitespace and comments -----------------------------------------------

  private boolean isWhitespace(int c) {
    return (c==' ') || (c=='\t') || (c=='\f');
  }

  private void skipWhitespace() {
    while (isWhitespace(c)) {
      nextChar();
    }
    while (c==EOL) {
      nextLine();
      while (isWhitespace(c)) {
        nextChar();
      }
    }
  }

  private void skipOneLineComment() { // Assumes c=='/'
    nextLine();
  }

  private void skipBracketComment() { // Assumes c=='*'
    nextChar();
    for (;;) {
      if (c=='*') {
        do {
          nextChar();
        } while (c=='*');
        if (c=='/') {
          nextChar();
          return;
        }
      }
      if (c==EOF) {
        report(new Failure(getPos(), "Unterminated comment"));
        return;
      }
      if (c==EOL) {
        nextLine();
      } else {
        nextChar();
      }
    }
  }

  //- Identifiers, keywords, boolean and null literals ----------------------

  private int identifier() {          // Assumes isJavaIdentifierStart(c)
    int start = col;
    do {
      nextChar();
    } while (c!=EOF && Character.isJavaIdentifierPart((char)c));
    lexemeText = line.substring(start, col);

    Object kw  = reserved.get(lexemeText);
    if (kw!=null) {
      return token=((Integer)kw).intValue();
    }
    return token=IDENT;
  }

  private static java.util.Hashtable reserved;
  static {
    reserved = new java.util.Hashtable();
    reserved.put("boolean", new Integer(BOOLEAN));
    reserved.put("class",   new Integer(CLASS));
    reserved.put("else",    new Integer(ELSE));
    reserved.put("extends", new Integer(EXTENDS));
    reserved.put("if",      new Integer(IF));
    reserved.put("int",     new Integer(INT));
    reserved.put("new",     new Integer(NEW));
    reserved.put("return",  new Integer(RETURN));
    reserved.put("static",  new Integer(STATIC));
    reserved.put("super",   new Integer(SUPER));
    reserved.put("this",    new Integer(THIS));
    reserved.put("void",    new Integer(VOID));
    reserved.put("while",   new Integer(WHILE));
    reserved.put("null",    new Integer(NULL));
    reserved.put("true",    new Integer(TRUE));
    reserved.put("false",   new Integer(FALSE));
    reserved.put("private", new Integer(PRIVATE));
    reserved.put("protected",new Integer(PROTECTED));
    reserved.put("public",  new Integer(PUBLIC));
    reserved.put("abstract",new Integer(ABSTRACT));
  }

  //- Numeric integer literals ----------------------------------------------

  private int number() {              // Assumes c is a digit
    int start = col;
    int n = 0;
    int d = Character.digit((char)c, 10);
    do {
      n = 10*n + d;
      nextChar();
      d = Character.digit((char)c, 10);
    } while (d>=0);
    lexemeText = line.substring(start, col);
    return token=INTLIT;
  }

  //- Miscellaneous support functions ---------------------------------------

  private void illegalCharacter() {
    report(new Warning(getPos(), "Ignoring illegal character"));
  }

}
