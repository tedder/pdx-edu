// Output created by jacc on Tue Nov 24 11:01:43 PST 2009

package mini;

import compiler.*;
import java.io.*;

class MiniParser extends Phase implements MiniTokens {
    private int yyss = 100;
    private int yytok;
    private int yysp = 0;
    private int[] yyst;
    protected int yyerrno = (-1);
    private Object[] yysv;
    private Object yyrv;

    public boolean parse() {
        int yyn = 0;
        yysp = 0;
        yyst = new int[yyss];
        yysv = new Object[yyss];
        yytok = (lexer.getToken()
                 );
    loop:
        for (;;) {
            switch (yyn) {
                case 0:
                    yyst[yysp] = 0;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 77:
                    yyn = yys0();
                    continue;

                case 1:
                    yyst[yysp] = 1;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 78:
                    switch (yytok) {
                        case ENDINPUT:
                            yyn = 154;
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 2:
                    yyst[yysp] = 2;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 79:
                    yyn = yys2();
                    continue;

                case 3:
                    yyst[yysp] = 3;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 80:
                    yyn = yys3();
                    continue;

                case 4:
                    yyst[yysp] = 4;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 81:
                    yyn = yys4();
                    continue;

                case 5:
                    yyst[yysp] = 5;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 82:
                    switch (yytok) {
                        case IDENT:
                            yyn = 39;
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 6:
                    yyst[yysp] = 6;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 83:
                    yyn = yys6();
                    continue;

                case 7:
                    yyst[yysp] = 7;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 84:
                    switch (yytok) {
                        case '(':
                            yyn = 42;
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 8:
                    yyst[yysp] = 8;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 85:
                    yyn = yys8();
                    continue;

                case 9:
                    yyst[yysp] = 9;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 86:
                    yyn = yys9();
                    continue;

                case 10:
                    yyst[yysp] = 10;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 87:
                    switch (yytok) {
                        case IDENT:
                            yyn = yyr40();
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 11:
                    yyst[yysp] = 11;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 88:
                    switch (yytok) {
                        case IDENT:
                            yyn = yyr37();
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 12:
                    yyst[yysp] = 12;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 89:
                    switch (yytok) {
                        case IDENT:
                            yyn = yyr39();
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 13:
                    yyst[yysp] = 13;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 90:
                    switch (yytok) {
                        case IDENT:
                            yyn = yyr38();
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 14:
                    yyst[yysp] = 14;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 91:
                    switch (yytok) {
                        case '(':
                            yyn = 42;
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 15:
                    yyst[yysp] = 15;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 92:
                    yyn = yys15();
                    continue;

                case 16:
                    yyst[yysp] = 16;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 93:
                    yyn = yys16();
                    continue;

                case 17:
                    yyst[yysp] = 17;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 94:
                    yyn = yys17();
                    continue;

                case 18:
                    yyst[yysp] = 18;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 95:
                    yyn = yys18();
                    continue;

                case 19:
                    yyst[yysp] = 19;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 96:
                    yyn = yys19();
                    continue;

                case 20:
                    yyst[yysp] = 20;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 97:
                    yyn = yys20();
                    continue;

                case 21:
                    yyst[yysp] = 21;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 98:
                    yyn = yys21();
                    continue;

                case 22:
                    yyst[yysp] = 22;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 99:
                    yyn = yys22();
                    continue;

                case 23:
                    yyst[yysp] = 23;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 100:
                    yyn = yys23();
                    continue;

                case 24:
                    yyst[yysp] = 24;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 101:
                    yyn = yys24();
                    continue;

                case 25:
                    yyst[yysp] = 25;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 102:
                    yyn = yys25();
                    continue;

                case 26:
                    yyst[yysp] = 26;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 103:
                    yyn = yys26();
                    continue;

                case 27:
                    yyst[yysp] = 27;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 104:
                    yyn = yys27();
                    continue;

                case 28:
                    yyst[yysp] = 28;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 105:
                    yyn = yys28();
                    continue;

                case 29:
                    yyst[yysp] = 29;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 106:
                    yyn = yys29();
                    continue;

                case 30:
                    yyst[yysp] = 30;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 107:
                    yyn = yys30();
                    continue;

                case 31:
                    yyst[yysp] = 31;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 108:
                    yyn = yys31();
                    continue;

                case 32:
                    yyst[yysp] = 32;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 109:
                    yyn = yys32();
                    continue;

                case 33:
                    yyst[yysp] = 33;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 110:
                    yyn = yys33();
                    continue;

                case 34:
                    yyst[yysp] = 34;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 111:
                    yyn = yys34();
                    continue;

                case 35:
                    yyst[yysp] = 35;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 112:
                    yyn = yys35();
                    continue;

                case 36:
                    yyst[yysp] = 36;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 113:
                    yyn = yys36();
                    continue;

                case 37:
                    yyst[yysp] = 37;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 114:
                    yyn = yys37();
                    continue;

                case 38:
                    yyst[yysp] = 38;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 115:
                    switch (yytok) {
                        case ';':
                            yyn = 65;
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 39:
                    yyst[yysp] = 39;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 116:
                    switch (yytok) {
                        case '=':
                            yyn = 66;
                            continue;
                        case ';':
                            yyn = yyr36();
                            continue;
                    }
                    yyn = 157;
                    continue;

                case 40:
                    yyst[yysp] = 40;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 117:
                    yyn = yys40();
                    continue;

                case 41:
                    yyst[yysp] = 41;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 118:
                    yyn = yys41();
                    continue;

                case 42:
                    yyst[yysp] = 42;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 119:
                    yyn = yys42();
                    continue;

                case 43:
                    yyst[yysp] = 43;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 120:
                    yyn = yys43();
                    continue;

                case 44:
                    yyst[yysp] = 44;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 121:
                    yyn = yys44();
                    continue;

                case 45:
                    yyst[yysp] = 45;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 122:
                    yyn = yys45();
                    continue;

                case 46:
                    yyst[yysp] = 46;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 123:
                    yyn = yys46();
                    continue;

                case 47:
                    yyst[yysp] = 47;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 124:
                    yyn = yys47();
                    continue;

                case 48:
                    yyst[yysp] = 48;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 125:
                    yyn = yys48();
                    continue;

                case 49:
                    yyst[yysp] = 49;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 126:
                    yyn = yys49();
                    continue;

                case 50:
                    yyst[yysp] = 50;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 127:
                    yyn = yys50();
                    continue;

                case 51:
                    yyst[yysp] = 51;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 128:
                    yyn = yys51();
                    continue;

                case 52:
                    yyst[yysp] = 52;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 129:
                    yyn = yys52();
                    continue;

                case 53:
                    yyst[yysp] = 53;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 130:
                    yyn = yys53();
                    continue;

                case 54:
                    yyst[yysp] = 54;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 131:
                    yyn = yys54();
                    continue;

                case 55:
                    yyst[yysp] = 55;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 132:
                    yyn = yys55();
                    continue;

                case 56:
                    yyst[yysp] = 56;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 133:
                    yyn = yys56();
                    continue;

                case 57:
                    yyst[yysp] = 57;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 134:
                    yyn = yys57();
                    continue;

                case 58:
                    yyst[yysp] = 58;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 135:
                    yyn = yys58();
                    continue;

                case 59:
                    yyst[yysp] = 59;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 136:
                    yyn = yys59();
                    continue;

                case 60:
                    yyst[yysp] = 60;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 137:
                    yyn = yys60();
                    continue;

                case 61:
                    yyst[yysp] = 61;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 138:
                    yyn = yys61();
                    continue;

                case 62:
                    yyst[yysp] = 62;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 139:
                    yyn = yys62();
                    continue;

                case 63:
                    yyst[yysp] = 63;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 140:
                    yyn = yys63();
                    continue;

                case 64:
                    yyst[yysp] = 64;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 141:
                    yyn = yys64();
                    continue;

                case 65:
                    yyst[yysp] = 65;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 142:
                    yyn = yys65();
                    continue;

                case 66:
                    yyst[yysp] = 66;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 143:
                    yyn = yys66();
                    continue;

                case 67:
                    yyst[yysp] = 67;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 144:
                    yyn = yys67();
                    continue;

                case 68:
                    yyst[yysp] = 68;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 145:
                    yyn = yys68();
                    continue;

                case 69:
                    yyst[yysp] = 69;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 146:
                    yyn = yys69();
                    continue;

                case 70:
                    yyst[yysp] = 70;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 147:
                    yyn = yys70();
                    continue;

                case 71:
                    yyst[yysp] = 71;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 148:
                    yyn = yys71();
                    continue;

                case 72:
                    yyst[yysp] = 72;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 149:
                    yyn = yys72();
                    continue;

                case 73:
                    yyst[yysp] = 73;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 150:
                    yyn = yys73();
                    continue;

                case 74:
                    yyst[yysp] = 74;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 151:
                    yyn = yys74();
                    continue;

                case 75:
                    yyst[yysp] = 75;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 152:
                    yyn = yys75();
                    continue;

                case 76:
                    yyst[yysp] = 76;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 153:
                    yyn = yys76();
                    continue;

                case 154:
                    return true;
                case 155:
                    yyerror("stack overflow");
                case 156:
                    return false;
                case 157:
                    yyerror("syntax error");
                    return false;
            }
        }
    }

    protected void yyexpand() {
        int[] newyyst = new int[2*yyst.length];
        Object[] newyysv = new Object[2*yyst.length];
        for (int i=0; i<yyst.length; i++) {
            newyyst[i] = yyst[i];
            newyysv[i] = yysv[i];
        }
        yyst = newyyst;
        yysv = newyysv;
    }

    private int yys0() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys2() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LOR:
                return 24;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case ';':
                return 32;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
        }
        return 157;
    }

    private int yys3() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case ENDINPUT:
            case IDENT:
                return yyr3();
        }
        return 157;
    }

    private int yys4() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
            case ENDINPUT:
                return yyr1();
        }
        return 157;
    }

    private int yys6() {
        switch (yytok) {
            case '=':
                return 40;
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr33();
        }
        return 157;
    }

    private int yys8() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr34();
        }
        return 157;
    }

    private int yys9() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys15() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys16() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys17() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys18() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr4();
        }
        return 157;
    }

    private int yys19() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys20() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys21() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys22() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys23() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys24() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys25() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys26() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys27() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys28() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys29() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys30() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys31() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys32() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr5();
        }
        return 157;
    }

    private int yys33() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys34() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys35() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys36() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys37() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case ENDINPUT:
            case IDENT:
                return yyr2();
        }
        return 157;
    }

    private int yys40() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys41() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys42() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys43() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LOR:
                return 24;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ';':
                return 70;
        }
        return 157;
    }

    private int yys44() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys45() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr15();
        }
        return 157;
    }

    private int yys46() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr14();
        }
        return 157;
    }

    private int yys47() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr13();
        }
        return 157;
    }

    private int yys48() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
            case '}':
                return 72;
        }
        return 157;
    }

    private int yys49() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr16();
        }
        return 157;
    }

    private int yys50() {
        switch (yytok) {
            case GTE:
                return 22;
            case LTE:
                return 25;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case ';':
            case LAND:
            case ')':
            case '&':
            case NEQ:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr26();
        }
        return 157;
    }

    private int yys51() {
        switch (yytok) {
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case LAND:
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr24();
        }
        return 157;
    }

    private int yys52() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ';':
            case LAND:
            case ')':
            case LOR:
                return yyr30();
        }
        return 157;
    }

    private int yys53() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ';':
            case ')':
            case LOR:
                return yyr31();
        }
        return 157;
    }

    private int yys54() {
        switch (yytok) {
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case LAND:
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr23();
        }
        return 157;
    }

    private int yys55() {
        switch (yytok) {
            case GTE:
                return 22;
            case LTE:
                return 25;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case ';':
            case LAND:
            case ')':
            case '&':
            case NEQ:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr25();
        }
        return 157;
    }

    private int yys56() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case ';':
            case LAND:
            case ')':
            case '&':
            case '|':
            case '^':
            case LOR:
                return yyr27();
        }
        return 157;
    }

    private int yys57() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr19();
        }
        return 157;
    }

    private int yys58() {
        switch (yytok) {
            case '*':
                return 28;
            case '/':
                return 31;
            case '>':
            case ';':
            case LAND:
            case '-':
            case '+':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr17();
        }
        return 157;
    }

    private int yys59() {
        switch (yytok) {
            case '*':
                return 28;
            case '/':
                return 31;
            case '>':
            case ';':
            case LAND:
            case '-':
            case '+':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr18();
        }
        return 157;
    }

    private int yys60() {
        switch (yytok) {
            case '>':
            case ';':
            case LAND:
            case '/':
            case '-':
            case '+':
            case '*':
            case '<':
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr20();
        }
        return 157;
    }

    private int yys61() {
        switch (yytok) {
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case LAND:
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr21();
        }
        return 157;
    }

    private int yys62() {
        switch (yytok) {
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case LAND:
            case GTE:
            case ')':
            case '&':
            case NEQ:
            case LTE:
            case '|':
            case '^':
            case LOR:
            case EQL:
                return yyr22();
        }
        return 157;
    }

    private int yys63() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case ';':
            case LAND:
            case ')':
            case '|':
            case '^':
            case LOR:
                return yyr29();
        }
        return 157;
    }

    private int yys64() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case ';':
            case LAND:
            case ')':
            case '|':
            case LOR:
                return yyr28();
        }
        return 157;
    }

    private int yys65() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr10();
        }
        return 157;
    }

    private int yys66() {
        switch (yytok) {
            case IDENT:
                return 6;
            case INTLIT:
                return 8;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys67() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LOR:
                return 24;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ';':
            case ')':
                return yyr32();
        }
        return 157;
    }

    private int yys68() {
        switch (yytok) {
            case ELSE:
                return 74;
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case ENDINPUT:
            case IDENT:
                return yyr8();
        }
        return 157;
    }

    private int yys69() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LOR:
                return 24;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ')':
                return 75;
        }
        return 157;
    }

    private int yys70() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr9();
        }
        return 157;
    }

    private int yys71() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr6();
        }
        return 157;
    }

    private int yys72() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr11();
        }
        return 157;
    }

    private int yys73() {
        switch (yytok) {
            case EQL:
                return 21;
            case GTE:
                return 22;
            case LAND:
                return 23;
            case LOR:
                return 24;
            case LTE:
                return 25;
            case NEQ:
                return 26;
            case '&':
                return 27;
            case '*':
                return 28;
            case '+':
                return 29;
            case '-':
                return 30;
            case '/':
                return 31;
            case '<':
                return 33;
            case '>':
                return 34;
            case '^':
                return 35;
            case '|':
                return 36;
            case ';':
                return yyr35();
        }
        return 157;
    }

    private int yys74() {
        switch (yytok) {
            case IDENT:
                return 6;
            case IF:
                return 7;
            case INTLIT:
                return 8;
            case PRINT:
                return 9;
            case TARRAY:
                return 10;
            case TBOOL:
                return 11;
            case TDOUB:
                return 12;
            case TINT:
                return 13;
            case WHILE:
                return 14;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case ';':
                return 18;
            case '{':
                return 19;
            case '~':
                return 20;
        }
        return 157;
    }

    private int yys75() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '{':
            case IDENT:
                return yyr12();
        }
        return 157;
    }

    private int yys76() {
        switch (yytok) {
            case TINT:
            case ';':
            case TDOUB:
            case '-':
            case TBOOL:
            case '+':
            case TARRAY:
            case INTLIT:
            case PRINT:
            case '!':
            case IF:
            case '~':
            case WHILE:
            case '}':
            case '{':
            case IDENT:
            case ENDINPUT:
            case ELSE:
                return yyr7();
        }
        return 157;
    }

    private int yyr1() { // prog : stmts
        { program = ((Stmts)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return 1;
    }

    private int yyr13() { // expr : '-' expr
        { yyrv = new UMinus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr14() { // expr : '+' expr
        { yyrv = new UPlus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr15() { // expr : '!' expr
        { yyrv = new LNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr16() { // expr : '~' expr
        { yyrv = new BNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr17() { // expr : expr '+' expr
        { yyrv = new Add(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr18() { // expr : expr '-' expr
        { yyrv = new Sub(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr19() { // expr : expr '*' expr
        { yyrv = new Mul(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr20() { // expr : expr '/' expr
        { yyrv = new Div(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr21() { // expr : expr '<' expr
        { yyrv = new Lt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr22() { // expr : expr '>' expr
        { yyrv = new Gt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr23() { // expr : expr LTE expr
        { yyrv = new Lte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr24() { // expr : expr GTE expr
        { yyrv = new Gte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr25() { // expr : expr NEQ expr
        { yyrv = new Neq(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr26() { // expr : expr EQL expr
        { yyrv = new Eql(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr27() { // expr : expr '&' expr
        { yyrv = new BAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr28() { // expr : expr '|' expr
        { yyrv = new BOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr29() { // expr : expr '^' expr
        { yyrv = new BXor(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr30() { // expr : expr LAND expr
        { yyrv = new LAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr31() { // expr : expr LOR expr
        { yyrv = new LOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr32() { // expr : IDENT '=' expr
        { yyrv = new Assign(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr33() { // expr : IDENT
        { yyrv = ((Id)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yyr34() { // expr : INTLIT
        { yyrv = ((IntLit)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yypexpr() {
        switch (yyst[yysp-1]) {
            case 66: return 73;
            case 42: return 69;
            case 40: return 67;
            case 36: return 64;
            case 35: return 63;
            case 34: return 62;
            case 33: return 61;
            case 31: return 60;
            case 30: return 59;
            case 29: return 58;
            case 28: return 57;
            case 27: return 56;
            case 26: return 55;
            case 25: return 54;
            case 24: return 53;
            case 23: return 52;
            case 22: return 51;
            case 21: return 50;
            case 20: return 49;
            case 17: return 47;
            case 16: return 46;
            case 15: return 45;
            case 9: return 43;
            default: return 2;
        }
    }

    private int yyr4() { // stmt : ';'
        { yyrv = new Empty(); }
        yysv[yysp-=1] = yyrv;
        return yypstmt();
    }

    private int yyr5() { // stmt : expr ';'
        { yyrv = new ExprStmt(((Expr)yysv[yysp-2])); }
        yysv[yysp-=2] = yyrv;
        return yypstmt();
    }

    private int yyr6() { // stmt : WHILE test stmt
        { yyrv = new While(((Expr)yysv[yysp-2]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr7() { // stmt : IF test stmt ELSE stmt
        { yyrv = new If(((Expr)yysv[yysp-4]), ((Stmt)yysv[yysp-3]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=5] = yyrv;
        return yypstmt();
    }

    private int yyr8() { // stmt : IF test stmt
        { yyrv = new If(((Expr)yysv[yysp-2]), ((Stmt)yysv[yysp-1]), new Empty()); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr9() { // stmt : PRINT expr ';'
        { yyrv = new Print(((Expr)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr10() { // stmt : vtype vintro ';'
        { yyrv = new Variable(((VType)yysv[yysp-3]), ((Assign)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr11() { // stmt : '{' stmts '}'
        { yyrv = new Block(((Stmts)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yypstmt() {
        switch (yyst[yysp-1]) {
            case 74: return 76;
            case 44: return 71;
            case 41: return 68;
            case 19: return 3;
            case 0: return 3;
            default: return 37;
        }
    }

    private int yyr2() { // stmts : stmts stmt
        { yyrv = ((Stmts)yysv[yysp-2]).addStmt(((Stmt)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypstmts();
    }

    private int yyr3() { // stmts : stmt
        { yyrv = new Stmts(((Stmt)yysv[yysp-1])); }
        yysv[yysp-=1] = yyrv;
        return yypstmts();
    }

    private int yypstmts() {
        switch (yyst[yysp-1]) {
            case 0: return 4;
            default: return 48;
        }
    }

    private int yyr12() { // test : '(' expr ')'
        { yyrv = ((Expr)yysv[yysp-2]); }
        yysv[yysp-=3] = yyrv;
        switch (yyst[yysp-1]) {
            case 7: return 41;
            default: return 44;
        }
    }

    private int yyr35() { // vintro : IDENT '=' expr
        { yyrv = new Assign(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return 38;
    }

    private int yyr36() { // vintro : IDENT
        { yyrv = new Assign(((Id)yysv[yysp-1]), new IntLit("0")); }
        yysv[yysp-=1] = yyrv;
        return 38;
    }

    private int yyr37() { // vtype : TBOOL
        { yyrv = new TBoolean(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr38() { // vtype : TINT
        { yyrv = new TInt(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr39() { // vtype : TDOUB
        { yyrv = new TDouble(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr40() { // vtype : TARRAY
        { yyrv = new TArray(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    protected String[] yyerrmsgs = {
    };


    private MiniLexer lexer;
    private Stmts     program;

    public MiniParser(Handler handler, MiniLexer lexer) {
      super(handler);
      this.lexer = lexer;
      lexer.nextToken();
      parse();
    }

    public Stmts getProgram() {
      return program;
    }

    private void yyerror(String msg) {
      report(new Failure(msg));
    }


}
