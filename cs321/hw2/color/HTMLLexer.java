/* The following code was generated by JFlex 1.4.2 on 11/4/09 8:24 PM */

// Based on the "simple example" in the JFlex manual:
// http://jflex.de/manual.html

package color;

/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.2
 * on 11/4/09 8:24 PM from the specification file
 * <tt>htmlparser.jflex</tt>
 */
public class HTMLLexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int STRING = 2;
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  0, 0
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\12\0\1\2\2\0\1\1\30\0\1\21\3\0\1\4\4\0\1\3"+
    "\1\16\1\7\1\6\1\13\1\10\1\15\1\14\1\11\1\12\1\5"+
    "\2\0\1\20\1\0\1\17\42\0\1\26\1\22\1\30\1\34\1\25"+
    "\1\36\1\0\1\43\1\35\2\0\1\24\1\0\1\27\1\23\1\42"+
    "\1\0\1\40\1\31\1\33\1\41\1\44\1\37\1\32\uff87\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\1\1\2\1\3\1\2\3\4\1\5\1\6\1\7"+
    "\15\2\2\0\2\4\14\0\1\10\6\0\2\11\2\0"+
    "\2\4\20\0\2\4\10\0\2\4\7\0\2\4\2\0"+
    "\2\4\1\0\4\4\1\1";

  private static int [] zzUnpackAction() {
    int [] result = new int[99];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\45\0\45\0\112\0\157\0\224\0\271\0\45"+
    "\0\45\0\45\0\336\0\u0103\0\u0128\0\u014d\0\u0172\0\u0197"+
    "\0\u01bc\0\u01e1\0\u0206\0\u022b\0\u0250\0\u0275\0\u029a\0\u02bf"+
    "\0\u02e4\0\u0309\0\u032e\0\u0353\0\u0378\0\u039d\0\u03c2\0\u03e7"+
    "\0\u040c\0\u0431\0\u0456\0\u047b\0\u04a0\0\u04c5\0\u04ea\0\45"+
    "\0\u050f\0\u0534\0\u0559\0\u057e\0\u05a3\0\u05c8\0\u05ed\0\45"+
    "\0\u0612\0\u0637\0\u065c\0\u0681\0\u06a6\0\u06cb\0\u06f0\0\u0715"+
    "\0\u073a\0\u075f\0\u0784\0\u07a9\0\u07ce\0\u07f3\0\u0818\0\u083d"+
    "\0\u0862\0\u0887\0\u08ac\0\u08d1\0\u08f6\0\u091b\0\u0940\0\u0965"+
    "\0\u098a\0\u09af\0\u09d4\0\u09f9\0\u0a1e\0\u0a43\0\u0a68\0\u0a8d"+
    "\0\u0ab2\0\u0ad7\0\u0afc\0\u0b21\0\u0b46\0\u0b6b\0\u0b90\0\u0bb5"+
    "\0\u0bda\0\u0bff\0\u0c24\0\u0c49\0\u0c6e\0\u0c93\0\u0cb8\0\u0cdd"+
    "\0\u0d02\0\u0d27\0\u0d02";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[99];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\2\2\1\3\1\4\1\2\1\5\1\6\1\7\7\5"+
    "\1\10\1\11\1\12\1\13\2\2\1\14\1\15\1\16"+
    "\1\17\1\20\1\2\1\21\1\2\1\22\1\23\1\24"+
    "\1\25\1\2\1\26\1\2\1\27\50\0\1\30\1\31"+
    "\45\0\12\32\33\0\2\32\1\33\6\32\1\5\33\0"+
    "\12\5\51\0\1\34\45\0\1\35\5\0\1\36\34\0"+
    "\1\37\47\0\1\40\13\0\1\41\27\0\1\42\53\0"+
    "\1\43\5\0\1\44\43\0\1\45\2\0\1\46\30\0"+
    "\1\47\6\0\1\50\34\0\1\51\61\0\1\52\26\0"+
    "\1\53\57\0\1\54\1\55\26\0\1\56\21\0\1\30"+
    "\1\57\1\60\42\30\4\61\1\62\40\61\5\0\12\63"+
    "\33\0\1\63\2\32\1\64\2\63\1\32\2\63\1\32"+
    "\51\0\1\65\52\0\1\66\46\0\1\67\42\0\1\70"+
    "\52\0\1\50\31\0\1\71\46\0\1\72\44\0\1\73"+
    "\60\0\1\74\43\0\1\66\40\0\1\75\42\0\1\50"+
    "\35\0\1\35\55\0\1\76\42\0\1\77\34\0\1\100"+
    "\11\0\1\101\31\0\1\102\57\0\1\103\11\0\1\60"+
    "\42\0\4\61\1\104\40\61\3\0\1\60\1\62\45\0"+
    "\12\105\33\0\1\105\3\63\1\106\1\105\4\63\52\0"+
    "\1\107\45\0\1\50\44\0\1\110\52\0\1\111\35\0"+
    "\1\50\51\0\1\75\46\0\1\112\36\0\1\113\50\0"+
    "\1\50\37\0\1\66\61\0\1\114\36\0\1\115\55\0"+
    "\1\116\24\0\1\112\54\0\1\50\10\0\3\61\1\60"+
    "\1\104\40\61\5\0\12\117\33\0\1\117\2\105\1\120"+
    "\2\117\1\105\2\117\1\105\53\0\1\121\46\0\1\122"+
    "\55\0\1\123\41\0\1\124\47\0\1\50\44\0\1\125"+
    "\31\0\1\126\45\0\1\127\23\0\12\130\33\0\1\130"+
    "\4\117\1\131\4\117\54\0\1\125\52\0\1\75\36\0"+
    "\1\132\46\0\1\50\43\0\1\50\45\0\1\133\47\0"+
    "\1\66\16\0\12\134\33\0\1\134\2\130\3\134\1\135"+
    "\2\134\1\130\56\0\1\47\47\0\1\136\16\0\12\137"+
    "\33\0\1\137\3\134\2\137\1\134\1\140\2\134\53\0"+
    "\1\103\24\0\12\141\33\0\1\141\2\137\1\142\2\141"+
    "\1\137\2\141\1\137\33\0\12\143\33\0\1\143\4\141"+
    "\1\143\4\141\26\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[3404];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\1\2\11\4\1\3\11\15\1\2\0\2\1\14\0"+
    "\1\11\6\0\1\1\1\11\2\0\2\1\20\0\2\1"+
    "\10\0\2\1\7\0\2\1\2\0\2\1\1\0\5\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[99];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /* user code: */
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



  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public HTMLLexer(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public HTMLLexer(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
  }

  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x10000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 98) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

	// numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public int yylex() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          int zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 1: 
          { print(yytext(), "invalid");
          }
        case 10: break;
        case 4: 
          { print(yytext(), "literal");
          }
        case 11: break;
        case 3: 
          { System.out.print(yytext());
          }
        case 12: break;
        case 9: 
          { print(yytext(), "comment");
          }
        case 13: break;
        case 2: 
          { print(yytext());
          }
        case 14: break;
        case 5: 
          { print("&gt;");
          }
        case 15: break;
        case 8: 
          { print(yytext(), "keyword");
          }
        case 16: break;
        case 7: 
          { print("&amp;");
          }
        case 17: break;
        case 6: 
          { print("&lt;");
          }
        case 18: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            return YYEOF;
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }

  /**
   * Runs the scanner on input files.
   *
   * This is a standalone scanner, it will print any unmatched
   * text to System.out unchanged.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java HTMLLexer <inputfile>");
    }
    else {
      for (int i = 0; i < argv.length; i++) {
        HTMLLexer scanner = null;
        try {
          scanner = new HTMLLexer( new java.io.FileReader(argv[i]) );
          while ( !scanner.zzAtEOF ) scanner.yylex();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
      }
    }
  }


}
