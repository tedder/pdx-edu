// Output created by jacc on Mon Dec 07 15:18:37 PST 2009

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
                case 80:
                    yyn = yys0();
                    continue;

                case 1:
                    yyst[yysp] = 1;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 81:
                    switch (yytok) {
                        case ENDINPUT:
                            yyn = 160;
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 2:
                    yyst[yysp] = 2;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 82:
                    yyn = yys2();
                    continue;

                case 3:
                    yyst[yysp] = 3;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 83:
                    yyn = yys3();
                    continue;

                case 4:
                    yyst[yysp] = 4;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 84:
                    yyn = yys4();
                    continue;

                case 5:
                    yyst[yysp] = 5;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 85:
                    switch (yytok) {
                        case IDENT:
                            yyn = 38;
                            continue;
                        case '[':
                            yyn = 39;
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 6:
                    yyst[yysp] = 6;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 86:
                    switch (yytok) {
                        case ',':
                            yyn = 40;
                            continue;
                        case ';':
                            yyn = 41;
                            continue;
                    }
                    yyn = 163;
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
                case 87:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr35();
                            continue;
                    }
                    yyn = 163;
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
                case 88:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr36();
                            continue;
                    }
                    yyn = 163;
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
                case 89:
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
                case 90:
                    switch (yytok) {
                        case '(':
                            yyn = 44;
                            continue;
                    }
                    yyn = 163;
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
                case 91:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr34();
                            continue;
                    }
                    yyn = 163;
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
                case 92:
                    yyn = yys12();
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
                case 93:
                    yyn = yys13();
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
                case 94:
                    switch (yytok) {
                        case '(':
                            yyn = 44;
                            continue;
                    }
                    yyn = 163;
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
                case 95:
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
                case 96:
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
                case 97:
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
                case 98:
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
                case 99:
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
                case 100:
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
                case 101:
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
                case 102:
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
                case 103:
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
                case 104:
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
                case 105:
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
                case 106:
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
                case 107:
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
                case 108:
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
                case 109:
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
                case 110:
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
                case 111:
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
                case 112:
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
                case 113:
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
                case 114:
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
                case 115:
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
                case 116:
                    yyn = yys36();
                    continue;

                case 37:
                    yyst[yysp] = 37;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 117:
                    switch (yytok) {
                        case ';':
                        case ',':
                            yyn = yyr40();
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 38:
                    yyst[yysp] = 38;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 118:
                    switch (yytok) {
                        case '=':
                            yyn = 67;
                            continue;
                        case ';':
                        case ',':
                            yyn = yyr39();
                            continue;
                    }
                    yyn = 163;
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
                case 119:
                    switch (yytok) {
                        case ']':
                            yyn = 68;
                            continue;
                    }
                    yyn = 163;
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
                case 120:
                    switch (yytok) {
                        case IDENT:
                            yyn = 38;
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 41:
                    yyst[yysp] = 41;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 121:
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
                case 122:
                    yyn = yys42();
                    continue;

                case 43:
                    yyst[yysp] = 43;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 123:
                    yyn = yys43();
                    continue;

                case 44:
                    yyst[yysp] = 44;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 124:
                    yyn = yys44();
                    continue;

                case 45:
                    yyst[yysp] = 45;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 125:
                    yyn = yys45();
                    continue;

                case 46:
                    yyst[yysp] = 46;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 126:
                    yyn = yys46();
                    continue;

                case 47:
                    yyst[yysp] = 47;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 127:
                    yyn = yys47();
                    continue;

                case 48:
                    yyst[yysp] = 48;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 128:
                    yyn = yys48();
                    continue;

                case 49:
                    yyst[yysp] = 49;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 129:
                    yyn = yys49();
                    continue;

                case 50:
                    yyst[yysp] = 50;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 130:
                    yyn = yys50();
                    continue;

                case 51:
                    yyst[yysp] = 51;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 131:
                    yyn = yys51();
                    continue;

                case 52:
                    yyst[yysp] = 52;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 132:
                    yyn = yys52();
                    continue;

                case 53:
                    yyst[yysp] = 53;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 133:
                    yyn = yys53();
                    continue;

                case 54:
                    yyst[yysp] = 54;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 134:
                    yyn = yys54();
                    continue;

                case 55:
                    yyst[yysp] = 55;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 135:
                    yyn = yys55();
                    continue;

                case 56:
                    yyst[yysp] = 56;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 136:
                    yyn = yys56();
                    continue;

                case 57:
                    yyst[yysp] = 57;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 137:
                    yyn = yys57();
                    continue;

                case 58:
                    yyst[yysp] = 58;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 138:
                    yyn = yys58();
                    continue;

                case 59:
                    yyst[yysp] = 59;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 139:
                    yyn = yys59();
                    continue;

                case 60:
                    yyst[yysp] = 60;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 140:
                    yyn = yys60();
                    continue;

                case 61:
                    yyst[yysp] = 61;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 141:
                    yyn = yys61();
                    continue;

                case 62:
                    yyst[yysp] = 62;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 142:
                    yyn = yys62();
                    continue;

                case 63:
                    yyst[yysp] = 63;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 143:
                    yyn = yys63();
                    continue;

                case 64:
                    yyst[yysp] = 64;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 144:
                    yyn = yys64();
                    continue;

                case 65:
                    yyst[yysp] = 65;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 145:
                    yyn = yys65();
                    continue;

                case 66:
                    yyst[yysp] = 66;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 146:
                    yyn = yys66();
                    continue;

                case 67:
                    yyst[yysp] = 67;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 147:
                    yyn = yys67();
                    continue;

                case 68:
                    yyst[yysp] = 68;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 148:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr37();
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 69:
                    yyst[yysp] = 69;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 149:
                    switch (yytok) {
                        case ';':
                        case ',':
                            yyn = yyr41();
                            continue;
                    }
                    yyn = 163;
                    continue;

                case 70:
                    yyst[yysp] = 70;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 150:
                    yyn = yys70();
                    continue;

                case 71:
                    yyst[yysp] = 71;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 151:
                    yyn = yys71();
                    continue;

                case 72:
                    yyst[yysp] = 72;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 152:
                    yyn = yys72();
                    continue;

                case 73:
                    yyst[yysp] = 73;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 153:
                    yyn = yys73();
                    continue;

                case 74:
                    yyst[yysp] = 74;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 154:
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
                case 155:
                    yyn = yys75();
                    continue;

                case 76:
                    yyst[yysp] = 76;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 156:
                    yyn = yys76();
                    continue;

                case 77:
                    yyst[yysp] = 77;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 157:
                    yyn = yys77();
                    continue;

                case 78:
                    yyst[yysp] = 78;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 158:
                    yyn = yys78();
                    continue;

                case 79:
                    yyst[yysp] = 79;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 159:
                    yyn = yys79();
                    continue;

                case 160:
                    return true;
                case 161:
                    yyerror("stack overflow");
                case 162:
                    return false;
                case 163:
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
            case ';':
            case PRINT:
            case IF:
            case '-':
            case '+':
            case IDENT:
            case '!':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr3();
        }
        return 163;
    }

    private int yys2() {
        switch (yytok) {
            case BOOLEAN:
                return 7;
            case DOUBLE:
                return 8;
            case IDENT:
                return 9;
            case IF:
                return 10;
            case INT:
                return 11;
            case INTLIT:
                return 12;
            case PRINT:
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
        return 163;
    }

    private int yys3() {
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
        return 163;
    }

    private int yys4() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr2();
        }
        return 163;
    }

    private int yys9() {
        switch (yytok) {
            case '=':
                return 42;
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr32();
        }
        return 163;
    }

    private int yys12() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr33();
        }
        return 163;
    }

    private int yys13() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys15() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys16() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys17() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys18() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr4();
        }
        return 163;
    }

    private int yys19() {
        switch (yytok) {
            case ';':
            case PRINT:
            case IF:
            case '-':
            case '+':
            case IDENT:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case '~':
            case DOUBLE:
            case BOOLEAN:
                return yyr3();
        }
        return 163;
    }

    private int yys20() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys21() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys22() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys23() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys24() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys25() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys26() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys27() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys28() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys29() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys30() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys31() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys32() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr5();
        }
        return 163;
    }

    private int yys33() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys34() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys35() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys36() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys41() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr42();
        }
        return 163;
    }

    private int yys42() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys43() {
        switch (yytok) {
            case BOOLEAN:
                return 7;
            case DOUBLE:
                return 8;
            case IDENT:
                return 9;
            case IF:
                return 10;
            case INT:
                return 11;
            case INTLIT:
                return 12;
            case PRINT:
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
        return 163;
    }

    private int yys44() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys45() {
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
                return 73;
        }
        return 163;
    }

    private int yys46() {
        switch (yytok) {
            case BOOLEAN:
                return 7;
            case DOUBLE:
                return 8;
            case IDENT:
                return 9;
            case IF:
                return 10;
            case INT:
                return 11;
            case INTLIT:
                return 12;
            case PRINT:
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
        return 163;
    }

    private int yys47() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr14();
        }
        return 163;
    }

    private int yys48() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr13();
        }
        return 163;
    }

    private int yys49() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr12();
        }
        return 163;
    }

    private int yys50() {
        switch (yytok) {
            case BOOLEAN:
                return 7;
            case DOUBLE:
                return 8;
            case IDENT:
                return 9;
            case IF:
                return 10;
            case INT:
                return 11;
            case INTLIT:
                return 12;
            case PRINT:
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
                return 75;
        }
        return 163;
    }

    private int yys51() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr15();
        }
        return 163;
    }

    private int yys52() {
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
            case NEQ:
            case ',':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case '|':
            case '^':
            case EQL:
                return yyr25();
        }
        return 163;
    }

    private int yys53() {
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
            case NEQ:
            case ',':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr23();
        }
        return 163;
    }

    private int yys54() {
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
            case ',':
            case ')':
            case LOR:
            case LAND:
                return yyr29();
        }
        return 163;
    }

    private int yys55() {
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
            case ',':
            case ')':
            case LOR:
                return yyr30();
        }
        return 163;
    }

    private int yys56() {
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
            case NEQ:
            case ',':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr22();
        }
        return 163;
    }

    private int yys57() {
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
            case NEQ:
            case ',':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case '|':
            case '^':
            case EQL:
                return yyr24();
        }
        return 163;
    }

    private int yys58() {
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
            case ',':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case '|':
            case '^':
                return yyr26();
        }
        return 163;
    }

    private int yys59() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr18();
        }
        return 163;
    }

    private int yys60() {
        switch (yytok) {
            case '*':
                return 28;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr16();
        }
        return 163;
    }

    private int yys61() {
        switch (yytok) {
            case '*':
                return 28;
            case '/':
                return 31;
            case '>':
            case '<':
            case ';':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr17();
        }
        return 163;
    }

    private int yys62() {
        switch (yytok) {
            case '>':
            case '<':
            case ';':
            case '/':
            case '-':
            case NEQ:
            case ',':
            case '+':
            case LTE:
            case '*':
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr19();
        }
        return 163;
    }

    private int yys63() {
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
            case NEQ:
            case ',':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr20();
        }
        return 163;
    }

    private int yys64() {
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
            case NEQ:
            case ',':
            case LTE:
            case ')':
            case LOR:
            case '&':
            case LAND:
            case GTE:
            case '|':
            case '^':
            case EQL:
                return yyr21();
        }
        return 163;
    }

    private int yys65() {
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
            case ',':
            case ')':
            case LOR:
            case LAND:
            case '|':
            case '^':
                return yyr28();
        }
        return 163;
    }

    private int yys66() {
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
            case ',':
            case ')':
            case LOR:
            case LAND:
            case '|':
                return yyr27();
        }
        return 163;
    }

    private int yys67() {
        switch (yytok) {
            case IDENT:
                return 9;
            case INTLIT:
                return 12;
            case '!':
                return 15;
            case '+':
                return 16;
            case '-':
                return 17;
            case '~':
                return 20;
        }
        return 163;
    }

    private int yys70() {
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
            case ',':
            case ')':
                return yyr31();
        }
        return 163;
    }

    private int yys71() {
        switch (yytok) {
            case ELSE:
                return 77;
            case PRINT:
            case IF:
            case '-':
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr8();
        }
        return 163;
    }

    private int yys72() {
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
                return 78;
        }
        return 163;
    }

    private int yys73() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr9();
        }
        return 163;
    }

    private int yys74() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr6();
        }
        return 163;
    }

    private int yys75() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr10();
        }
        return 163;
    }

    private int yys76() {
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
            case ',':
                return yyr38();
        }
        return 163;
    }

    private int yys77() {
        switch (yytok) {
            case BOOLEAN:
                return 7;
            case DOUBLE:
                return 8;
            case IDENT:
                return 9;
            case IF:
                return 10;
            case INT:
                return 11;
            case INTLIT:
                return 12;
            case PRINT:
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
        return 163;
    }

    private int yys78() {
        switch (yytok) {
            case ';':
            case PRINT:
            case IF:
            case '-':
            case '+':
            case IDENT:
            case '!':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case '~':
            case DOUBLE:
            case BOOLEAN:
                return yyr11();
        }
        return 163;
    }

    private int yys79() {
        switch (yytok) {
            case PRINT:
            case IF:
            case '-':
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '}':
            case INTLIT:
            case '{':
            case WHILE:
            case INT:
            case DOUBLE:
            case '~':
            case ENDINPUT:
            case BOOLEAN:
                return yyr7();
        }
        return 163;
    }

    private int yyr1() { // prog : stmts
        { program = ((Stmts)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return 1;
    }

    private int yyr12() { // expr : '-' expr
        { yyrv = new UMinus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr13() { // expr : '+' expr
        { yyrv = new UPlus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr14() { // expr : '!' expr
        { yyrv = new LNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr15() { // expr : '~' expr
        { yyrv = new BNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr16() { // expr : expr '+' expr
        { yyrv = new Add(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr17() { // expr : expr '-' expr
        { yyrv = new Sub(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr18() { // expr : expr '*' expr
        { yyrv = new Mul(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr19() { // expr : expr '/' expr
        { yyrv = new Div(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr20() { // expr : expr '<' expr
        { yyrv = new Lt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr21() { // expr : expr '>' expr
        { yyrv = new Gt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr22() { // expr : expr LTE expr
        { yyrv = new Lte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr23() { // expr : expr GTE expr
        { yyrv = new Gte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr24() { // expr : expr NEQ expr
        { yyrv = new Neq(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr25() { // expr : expr EQL expr
        { yyrv = new Eql(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr26() { // expr : expr '&' expr
        { yyrv = new BAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr27() { // expr : expr '|' expr
        { yyrv = new BOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr28() { // expr : expr '^' expr
        { yyrv = new BXor(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr29() { // expr : expr LAND expr
        { yyrv = new LAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr30() { // expr : expr LOR expr
        { yyrv = new LOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr31() { // expr : IDENT '=' expr
        { yyrv = new Assign(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr32() { // expr : IDENT
        { yyrv = ((Id)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yyr33() { // expr : INTLIT
        { yyrv = ((IntLit)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yypexpr() {
        switch (yyst[yysp-1]) {
            case 67: return 76;
            case 44: return 72;
            case 42: return 70;
            case 36: return 66;
            case 35: return 65;
            case 34: return 64;
            case 33: return 63;
            case 31: return 62;
            case 30: return 61;
            case 29: return 60;
            case 28: return 59;
            case 27: return 58;
            case 26: return 57;
            case 25: return 56;
            case 24: return 55;
            case 23: return 54;
            case 22: return 53;
            case 21: return 52;
            case 20: return 51;
            case 17: return 49;
            case 16: return 48;
            case 15: return 47;
            case 13: return 45;
            default: return 3;
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

    private int yyr10() { // stmt : '{' stmts '}'
        { yyrv = new Block(((Stmts)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr42() { // stmt : varDecl ';'
        { yyrv = ((VarDecl)yysv[yysp-2]); }
        yysv[yysp-=2] = yyrv;
        return yypstmt();
    }

    private int yypstmt() {
        switch (yyst[yysp-1]) {
            case 77: return 79;
            case 46: return 74;
            case 43: return 71;
            default: return 4;
        }
    }

    private int yyr2() { // stmts : stmts stmt
        { yyrv = ((Stmts)yysv[yysp-2]).addStmt(((Stmt)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypstmts();
    }

    private int yyr3() { // stmts : /* empty */
        { yyrv = new Stmts(); }
        yysv[yysp-=0] = yyrv;
        return yypstmts();
    }

    private int yypstmts() {
        switch (yyst[yysp-1]) {
            case 0: return 2;
            default: return 50;
        }
    }

    private int yyr11() { // test : '(' expr ')'
        { yyrv = ((Expr)yysv[yysp-2]); }
        yysv[yysp-=3] = yyrv;
        switch (yyst[yysp-1]) {
            case 10: return 43;
            default: return 46;
        }
    }

    private int yyr34() { // type : INT
        { yyrv = new IntType(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr35() { // type : BOOLEAN
        { yyrv = new BooleanType(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr36() { // type : DOUBLE
        { yyrv = new DoubleType(); }
        yysv[yysp-=1] = yyrv;
        return 5;
    }

    private int yyr37() { // type : type '[' ']'
        { yyrv = new ArrayType(((Type)yysv[yysp-3])); }
        yysv[yysp-=3] = yyrv;
        return 5;
    }

    private int yyr40() { // varDecl : type varIntro
        { yyrv = new VarDecl(((Type)yysv[yysp-2]), ((VarIntro)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return 6;
    }

    private int yyr41() { // varDecl : varDecl ',' varIntro
        { yyrv = ((VarDecl)yysv[yysp-3]).addIntro(((VarIntro)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return 6;
    }

    private int yyr38() { // varIntro : IDENT '=' expr
        { yyrv = new InitVarIntro(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypvarIntro();
    }

    private int yyr39() { // varIntro : IDENT
        { yyrv = new VarIntro(((Id)yysv[yysp-1])); }
        yysv[yysp-=1] = yyrv;
        return yypvarIntro();
    }

    private int yypvarIntro() {
        switch (yyst[yysp-1]) {
            case 5: return 37;
            default: return 69;
        }
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
