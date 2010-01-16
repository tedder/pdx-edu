import java.util.Hashtable;
import compiler.Source;
import compiler.SourceLexer;
import compiler.Handler;
import compiler.Warning;
import compiler.Failure;

/** A lexical analyzer for the mini Java compiler.
 */
public class DCLexer extends SourceLexer implements DCTokens {
    /** Construct a lexical analyzer for the Demo Compiler.
     */
    public DCLexer(Handler handler, Source source) {
        super(handler, source);
    }

    /** Read the next token and return the corresponding integer code.
     */
    public int nextToken() {
        for (;;) {
            skipWhitespace();
            markPosition();
            lexemeText = null;
            semantic   = null;
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

                // Operators:
                case '='  : nextChar();
                            if (c=='=') {
                                nextChar();
                                return token=EQEQ;
                            } else {
                                return token='=';
                            }

                case '<'  : nextChar();
                            return token='<';

                case '+'  : nextChar();
                            return token='+';

                case '-'  : nextChar();
                            return token='-';

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
                            }
            }
            illegalCharacter();
            nextChar();
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
        semantic = lexemeText;
        return token=VAR;
    }

    private static Hashtable reserved;
    static {
        reserved = new Hashtable();
        reserved.put("if",      new Integer(IF));
        reserved.put("else",    new Integer(ELSE));
        reserved.put("while",   new Integer(WHILE));
        reserved.put("print",   new Integer(PRINT));
    }

    //- Numeric integer literals ----------------------------------------------

    private int number() {              // Assumes c is a digit
        int n = 0;
        int d = Character.digit((char)c, 10);
        do {
            n = 10*n + d;
            nextChar();
            d = Character.digit((char)c, 10);
        } while (d>=0);
        semantic = new Integer(n);
        return token=INTLIT;
    }

    //- Miscellaneous support functions ---------------------------------------

    private Object semantic  = null;

    /** Return the semantic value of the current token.  If no explicit
     *  semantic value has been provided, then we substitute the current
     *  position.
     */
    public Object getSemantic() {
        if (semantic==null) {
            semantic = getPos();
        }
        return semantic;
    }

    private void illegalCharacter() {
        report(new Warning(getPos(), "Ignoring illegal character"));
    }
}
