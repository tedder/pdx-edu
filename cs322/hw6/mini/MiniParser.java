// Output created by jacc on Wed Mar 03 13:39:12 PST 2010

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
                case 124:
                    switch (yytok) {
                        case ENDINPUT:
                        case VOID:
                        case INT:
                        case DOUBLE:
                        case BOOLEAN:
                            yyn = yyr3();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 1:
                    yyst[yysp] = 1;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 125:
                    switch (yytok) {
                        case ENDINPUT:
                            yyn = 248;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 2:
                    yyst[yysp] = 2;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 126:
                    switch (yytok) {
                        case BOOLEAN:
                            yyn = 5;
                            continue;
                        case DOUBLE:
                            yyn = 6;
                            continue;
                        case INT:
                            yyn = 7;
                            continue;
                        case VOID:
                            yyn = 8;
                            continue;
                        case ENDINPUT:
                            yyn = yyr1();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 3:
                    yyst[yysp] = 3;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 127:
                    switch (yytok) {
                        case ENDINPUT:
                        case VOID:
                        case INT:
                        case DOUBLE:
                        case BOOLEAN:
                            yyn = yyr2();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 4:
                    yyst[yysp] = 4;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 128:
                    switch (yytok) {
                        case IDENT:
                            yyn = 9;
                            continue;
                        case '[':
                            yyn = 10;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 5:
                    yyst[yysp] = 5;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 129:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr51();
                            continue;
                    }
                    yyn = 251;
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
                case 130:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr52();
                            continue;
                    }
                    yyn = 251;
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
                case 131:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr50();
                            continue;
                    }
                    yyn = 251;
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
                case 132:
                    switch (yytok) {
                        case IDENT:
                            yyn = 11;
                            continue;
                    }
                    yyn = 251;
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
                case 133:
                    switch (yytok) {
                        case '(':
                            yyn = 12;
                            continue;
                    }
                    yyn = 251;
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
                case 134:
                    switch (yytok) {
                        case ']':
                            yyn = 13;
                            continue;
                    }
                    yyn = 251;
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
                case 135:
                    switch (yytok) {
                        case '(':
                            yyn = 14;
                            continue;
                    }
                    yyn = 251;
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
                case 136:
                    switch (yytok) {
                        case BOOLEAN:
                            yyn = 5;
                            continue;
                        case DOUBLE:
                            yyn = 6;
                            continue;
                        case INT:
                            yyn = 7;
                            continue;
                        case ')':
                            yyn = yyr6();
                            continue;
                    }
                    yyn = 251;
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
                case 137:
                    switch (yytok) {
                        case IDENT:
                        case '[':
                            yyn = yyr53();
                            continue;
                    }
                    yyn = 251;
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
                case 138:
                    switch (yytok) {
                        case BOOLEAN:
                            yyn = 5;
                            continue;
                        case DOUBLE:
                            yyn = 6;
                            continue;
                        case INT:
                            yyn = 7;
                            continue;
                        case ')':
                            yyn = yyr6();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 15:
                    yyst[yysp] = 15;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 139:
                    switch (yytok) {
                        case ',':
                            yyn = 20;
                            continue;
                        case ')':
                            yyn = yyr9();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 16:
                    yyst[yysp] = 16;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 140:
                    switch (yytok) {
                        case ')':
                            yyn = 21;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 17:
                    yyst[yysp] = 17;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 141:
                    switch (yytok) {
                        case ')':
                            yyn = yyr7();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 18:
                    yyst[yysp] = 18;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 142:
                    switch (yytok) {
                        case '[':
                            yyn = 10;
                            continue;
                        case IDENT:
                            yyn = 22;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 19:
                    yyst[yysp] = 19;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 143:
                    switch (yytok) {
                        case ')':
                            yyn = 23;
                            continue;
                    }
                    yyn = 251;
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
                case 144:
                    switch (yytok) {
                        case BOOLEAN:
                            yyn = 5;
                            continue;
                        case DOUBLE:
                            yyn = 6;
                            continue;
                        case INT:
                            yyn = 7;
                            continue;
                    }
                    yyn = 251;
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
                case 145:
                    switch (yytok) {
                        case '{':
                            yyn = 25;
                            continue;
                    }
                    yyn = 251;
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
                case 146:
                    switch (yytok) {
                        case ',':
                        case ')':
                            yyn = yyr10();
                            continue;
                    }
                    yyn = 251;
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
                case 147:
                    switch (yytok) {
                        case '{':
                            yyn = 26;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 24:
                    yyst[yysp] = 24;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 148:
                    switch (yytok) {
                        case ')':
                            yyn = yyr8();
                            continue;
                    }
                    yyn = 251;
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
                case 149:
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
                case 150:
                    yyn = yys26();
                    continue;

                case 27:
                    yyst[yysp] = 27;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 151:
                    yyn = yys27();
                    continue;

                case 28:
                    yyst[yysp] = 28;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 152:
                    yyn = yys28();
                    continue;

                case 29:
                    yyst[yysp] = 29;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 153:
                    yyn = yys29();
                    continue;

                case 30:
                    yyst[yysp] = 30;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 154:
                    yyn = yys30();
                    continue;

                case 31:
                    yyst[yysp] = 31;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 155:
                    switch (yytok) {
                        case '[':
                            yyn = 10;
                            continue;
                        case IDENT:
                            yyn = 66;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 32:
                    yyst[yysp] = 32;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 156:
                    switch (yytok) {
                        case ',':
                            yyn = 67;
                            continue;
                        case ';':
                            yyn = 68;
                            continue;
                    }
                    yyn = 251;
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
                case 157:
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
                case 158:
                    switch (yytok) {
                        case '(':
                            yyn = 72;
                            continue;
                    }
                    yyn = 251;
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
                case 159:
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
                case 160:
                    switch (yytok) {
                        case BOOLEAN:
                            yyn = 5;
                            continue;
                        case DOUBLE:
                            yyn = 6;
                            continue;
                        case INT:
                            yyn = 7;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 37:
                    yyst[yysp] = 37;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 161:
                    yyn = yys37();
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
                case 162:
                    yyn = yys38();
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
                case 163:
                    switch (yytok) {
                        case '(':
                            yyn = 72;
                            continue;
                    }
                    yyn = 251;
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
                case 164:
                    yyn = yys40();
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
                case 165:
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
                case 166:
                    yyn = yys42();
                    continue;

                case 43:
                    yyst[yysp] = 43;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 167:
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
                case 168:
                    yyn = yys44();
                    continue;

                case 45:
                    yyst[yysp] = 45;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 169:
                    switch (yytok) {
                        case ENDINPUT:
                        case VOID:
                        case INT:
                        case DOUBLE:
                        case BOOLEAN:
                            yyn = yyr4();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 46:
                    yyst[yysp] = 46;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 170:
                    yyn = yys46();
                    continue;

                case 47:
                    yyst[yysp] = 47;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 171:
                    switch (yytok) {
                        case ENDINPUT:
                        case VOID:
                        case INT:
                        case DOUBLE:
                        case BOOLEAN:
                            yyn = yyr5();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 48:
                    yyst[yysp] = 48;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 172:
                    yyn = yys48();
                    continue;

                case 49:
                    yyst[yysp] = 49;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 173:
                    yyn = yys49();
                    continue;

                case 50:
                    yyst[yysp] = 50;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 174:
                    yyn = yys50();
                    continue;

                case 51:
                    yyst[yysp] = 51;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 175:
                    yyn = yys51();
                    continue;

                case 52:
                    yyst[yysp] = 52;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 176:
                    yyn = yys52();
                    continue;

                case 53:
                    yyst[yysp] = 53;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 177:
                    yyn = yys53();
                    continue;

                case 54:
                    yyst[yysp] = 54;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 178:
                    yyn = yys54();
                    continue;

                case 55:
                    yyst[yysp] = 55;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 179:
                    yyn = yys55();
                    continue;

                case 56:
                    yyst[yysp] = 56;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 180:
                    yyn = yys56();
                    continue;

                case 57:
                    yyst[yysp] = 57;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 181:
                    yyn = yys57();
                    continue;

                case 58:
                    yyst[yysp] = 58;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 182:
                    yyn = yys58();
                    continue;

                case 59:
                    yyst[yysp] = 59;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 183:
                    yyn = yys59();
                    continue;

                case 60:
                    yyst[yysp] = 60;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 184:
                    yyn = yys60();
                    continue;

                case 61:
                    yyst[yysp] = 61;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 185:
                    yyn = yys61();
                    continue;

                case 62:
                    yyst[yysp] = 62;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 186:
                    yyn = yys62();
                    continue;

                case 63:
                    yyst[yysp] = 63;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 187:
                    yyn = yys63();
                    continue;

                case 64:
                    yyst[yysp] = 64;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 188:
                    yyn = yys64();
                    continue;

                case 65:
                    yyst[yysp] = 65;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 189:
                    switch (yytok) {
                        case ';':
                        case ',':
                            yyn = yyr56();
                            continue;
                    }
                    yyn = 251;
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
                case 190:
                    switch (yytok) {
                        case '=':
                            yyn = 99;
                            continue;
                        case ';':
                        case ',':
                            yyn = yyr55();
                            continue;
                    }
                    yyn = 251;
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
                case 191:
                    switch (yytok) {
                        case IDENT:
                            yyn = 66;
                            continue;
                    }
                    yyn = 251;
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
                case 192:
                    yyn = yys68();
                    continue;

                case 69:
                    yyst[yysp] = 69;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 193:
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
                case 194:
                    yyn = yys70();
                    continue;

                case 71:
                    yyst[yysp] = 71;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 195:
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
                case 196:
                    yyn = yys72();
                    continue;

                case 73:
                    yyst[yysp] = 73;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 197:
                    switch (yytok) {
                        case '[':
                            yyn = 107;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 74:
                    yyst[yysp] = 74;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 198:
                    yyn = yys74();
                    continue;

                case 75:
                    yyst[yysp] = 75;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 199:
                    yyn = yys75();
                    continue;

                case 76:
                    yyst[yysp] = 76;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 200:
                    yyn = yys76();
                    continue;

                case 77:
                    yyst[yysp] = 77;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 201:
                    yyn = yys77();
                    continue;

                case 78:
                    yyst[yysp] = 78;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 202:
                    yyn = yys78();
                    continue;

                case 79:
                    yyst[yysp] = 79;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 203:
                    yyn = yys79();
                    continue;

                case 80:
                    yyst[yysp] = 80;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 204:
                    yyn = yys80();
                    continue;

                case 81:
                    yyst[yysp] = 81;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 205:
                    yyn = yys81();
                    continue;

                case 82:
                    yyst[yysp] = 82;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 206:
                    yyn = yys82();
                    continue;

                case 83:
                    yyst[yysp] = 83;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 207:
                    yyn = yys83();
                    continue;

                case 84:
                    yyst[yysp] = 84;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 208:
                    yyn = yys84();
                    continue;

                case 85:
                    yyst[yysp] = 85;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 209:
                    yyn = yys85();
                    continue;

                case 86:
                    yyst[yysp] = 86;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 210:
                    yyn = yys86();
                    continue;

                case 87:
                    yyst[yysp] = 87;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 211:
                    yyn = yys87();
                    continue;

                case 88:
                    yyst[yysp] = 88;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 212:
                    yyn = yys88();
                    continue;

                case 89:
                    yyst[yysp] = 89;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 213:
                    yyn = yys89();
                    continue;

                case 90:
                    yyst[yysp] = 90;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 214:
                    yyn = yys90();
                    continue;

                case 91:
                    yyst[yysp] = 91;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 215:
                    yyn = yys91();
                    continue;

                case 92:
                    yyst[yysp] = 92;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 216:
                    yyn = yys92();
                    continue;

                case 93:
                    yyst[yysp] = 93;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 217:
                    yyn = yys93();
                    continue;

                case 94:
                    yyst[yysp] = 94;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 218:
                    yyn = yys94();
                    continue;

                case 95:
                    yyst[yysp] = 95;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 219:
                    yyn = yys95();
                    continue;

                case 96:
                    yyst[yysp] = 96;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 220:
                    yyn = yys96();
                    continue;

                case 97:
                    yyst[yysp] = 97;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 221:
                    yyn = yys97();
                    continue;

                case 98:
                    yyst[yysp] = 98;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 222:
                    yyn = yys98();
                    continue;

                case 99:
                    yyst[yysp] = 99;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 223:
                    yyn = yys99();
                    continue;

                case 100:
                    yyst[yysp] = 100;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 224:
                    switch (yytok) {
                        case ';':
                        case ',':
                            yyn = yyr57();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 101:
                    yyst[yysp] = 101;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 225:
                    switch (yytok) {
                        case ')':
                            yyn = yyr47();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 102:
                    yyst[yysp] = 102;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 226:
                    yyn = yys102();
                    continue;

                case 103:
                    yyst[yysp] = 103;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 227:
                    switch (yytok) {
                        case ')':
                            yyn = 115;
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 104:
                    yyst[yysp] = 104;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 228:
                    yyn = yys104();
                    continue;

                case 105:
                    yyst[yysp] = 105;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 229:
                    yyn = yys105();
                    continue;

                case 106:
                    yyst[yysp] = 106;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 230:
                    yyn = yys106();
                    continue;

                case 107:
                    yyst[yysp] = 107;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 231:
                    yyn = yys107();
                    continue;

                case 108:
                    yyst[yysp] = 108;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 232:
                    yyn = yys108();
                    continue;

                case 109:
                    yyst[yysp] = 109;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 233:
                    yyn = yys109();
                    continue;

                case 110:
                    yyst[yysp] = 110;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 234:
                    yyn = yys110();
                    continue;

                case 111:
                    yyst[yysp] = 111;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 235:
                    yyn = yys111();
                    continue;

                case 112:
                    yyst[yysp] = 112;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 236:
                    yyn = yys112();
                    continue;

                case 113:
                    yyst[yysp] = 113;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 237:
                    yyn = yys113();
                    continue;

                case 114:
                    yyst[yysp] = 114;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 238:
                    yyn = yys114();
                    continue;

                case 115:
                    yyst[yysp] = 115;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 239:
                    yyn = yys115();
                    continue;

                case 116:
                    yyst[yysp] = 116;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 240:
                    yyn = yys116();
                    continue;

                case 117:
                    yyst[yysp] = 117;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 241:
                    yyn = yys117();
                    continue;

                case 118:
                    yyst[yysp] = 118;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 242:
                    yyn = yys118();
                    continue;

                case 119:
                    yyst[yysp] = 119;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 243:
                    yyn = yys119();
                    continue;

                case 120:
                    yyst[yysp] = 120;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 244:
                    switch (yytok) {
                        case ')':
                            yyn = yyr48();
                            continue;
                    }
                    yyn = 251;
                    continue;

                case 121:
                    yyst[yysp] = 121;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 245:
                    yyn = yys121();
                    continue;

                case 122:
                    yyst[yysp] = 122;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 246:
                    yyn = yys122();
                    continue;

                case 123:
                    yyst[yysp] = 123;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 247:
                    yyn = yys123();
                    continue;

                case 248:
                    return true;
                case 249:
                    yyerror("stack overflow");
                case 250:
                    return false;
                case 251:
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

    private int yys25() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr12();
        }
        return 251;
    }

    private int yys26() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr12();
        }
        return 251;
    }

    private int yys27() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '}':
                return 45;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys28() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '~':
                return 46;
            case '}':
                return 47;
        }
        return 251;
    }

    private int yys29() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case ';':
                return 59;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
        }
        return 251;
    }

    private int yys30() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr11();
        }
        return 251;
    }

    private int yys33() {
        switch (yytok) {
            case '(':
                return 69;
            case '=':
                return 70;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ')':
            case ';':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '[':
            case '>':
            case '<':
            case EQL:
                return yyr44();
        }
        return 251;
    }

    private int yys35() {
        switch (yytok) {
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ')':
            case ';':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '[':
            case '>':
            case '<':
            case EQL:
                return yyr45();
        }
        return 251;
    }

    private int yys37() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys38() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
            case ';':
                return 76;
        }
        return 251;
    }

    private int yys40() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys41() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys42() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys43() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr13();
        }
        return 251;
    }

    private int yys44() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr12();
        }
        return 251;
    }

    private int yys46() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys48() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys49() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys50() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys51() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys52() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys53() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys54() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys55() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys56() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys57() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys58() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys59() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr14();
        }
        return 251;
    }

    private int yys60() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys61() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys62() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys63() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys64() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys68() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr58();
        }
        return 251;
    }

    private int yys69() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
            case ')':
                return yyr46();
        }
        return 251;
    }

    private int yys70() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys71() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys72() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys74() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
                return 108;
        }
        return 251;
    }

    private int yys75() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
                return 109;
        }
        return 251;
    }

    private int yys76() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr20();
        }
        return 251;
    }

    private int yys77() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys78() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr25();
        }
        return 251;
    }

    private int yys79() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr24();
        }
        return 251;
    }

    private int yys80() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr23();
        }
        return 251;
    }

    private int yys81() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '~':
                return 46;
            case '}':
                return 111;
        }
        return 251;
    }

    private int yys82() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr26();
        }
        return 251;
    }

    private int yys83() {
        switch (yytok) {
            case GTE:
                return 49;
            case LTE:
                return 52;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case '&':
            case LOR:
            case LAND:
            case '|':
            case '^':
            case ']':
            case EQL:
                return yyr36();
        }
        return 251;
    }

    private int yys84() {
        switch (yytok) {
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr34();
        }
        return 251;
    }

    private int yys85() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
            case ',':
            case ')':
            case LOR:
            case LAND:
            case ']':
                return yyr40();
        }
        return 251;
    }

    private int yys86() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
            case ',':
            case ')':
            case LOR:
            case ']':
                return yyr41();
        }
        return 251;
    }

    private int yys87() {
        switch (yytok) {
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr33();
        }
        return 251;
    }

    private int yys88() {
        switch (yytok) {
            case GTE:
                return 49;
            case LTE:
                return 52;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case '&':
            case LOR:
            case LAND:
            case '|':
            case '^':
            case ']':
            case EQL:
                return yyr35();
        }
        return 251;
    }

    private int yys89() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case ';':
            case ',':
            case ')':
            case '&':
            case LOR:
            case LAND:
            case '|':
            case '^':
            case ']':
                return yyr37();
        }
        return 251;
    }

    private int yys90() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr29();
        }
        return 251;
    }

    private int yys91() {
        switch (yytok) {
            case '*':
                return 55;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case '-':
            case ',':
            case '+':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr27();
        }
        return 251;
    }

    private int yys92() {
        switch (yytok) {
            case '*':
                return 55;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case '-':
            case ',':
            case '+':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr28();
        }
        return 251;
    }

    private int yys93() {
        switch (yytok) {
            case '[':
                return 62;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ';':
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr30();
        }
        return 251;
    }

    private int yys94() {
        switch (yytok) {
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr31();
        }
        return 251;
    }

    private int yys95() {
        switch (yytok) {
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '[':
                return 62;
            case ';':
            case ',':
            case NEQ:
            case ')':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '>':
            case '<':
            case EQL:
                return yyr32();
        }
        return 251;
    }

    private int yys96() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ']':
                return 112;
        }
        return 251;
    }

    private int yys97() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case ';':
            case ',':
            case ')':
            case LOR:
            case LAND:
            case '|':
            case '^':
            case ']':
                return yyr39();
        }
        return 251;
    }

    private int yys98() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case ';':
            case ',':
            case ')':
            case LOR:
            case LAND:
            case '|':
            case ']':
                return yyr38();
        }
        return 251;
    }

    private int yys99() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys102() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ',':
                return 114;
            case ')':
                return yyr49();
        }
        return 251;
    }

    private int yys104() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
            case ',':
            case ')':
            case ']':
                return yyr43();
        }
        return 251;
    }

    private int yys105() {
        switch (yytok) {
            case ELSE:
                return 116;
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case ';':
            case '+':
            case IDENT:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr17();
        }
        return 251;
    }

    private int yys106() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ')':
                return 117;
        }
        return 251;
    }

    private int yys107() {
        switch (yytok) {
            case ']':
                return 13;
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys108() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr18();
        }
        return 251;
    }

    private int yys109() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr21();
        }
        return 251;
    }

    private int yys110() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr15();
        }
        return 251;
    }

    private int yys111() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr19();
        }
        return 251;
    }

    private int yys112() {
        switch (yytok) {
            case '=':
                return 119;
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ')':
            case ';':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '[':
            case '>':
            case '<':
            case EQL:
                return yyr60();
        }
        return 251;
    }

    private int yys113() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
            case ',':
                return yyr54();
        }
        return 251;
    }

    private int yys114() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys115() {
        switch (yytok) {
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ')':
            case ';':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '[':
            case '>':
            case '<':
            case EQL:
                return yyr42();
        }
        return 251;
    }

    private int yys116() {
        switch (yytok) {
            case BOOLEAN:
                return 5;
            case DOUBLE:
                return 6;
            case INT:
                return 7;
            case IDENT:
                return 33;
            case IF:
                return 34;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case PRINT:
                return 37;
            case RETURN:
                return 38;
            case WHILE:
                return 39;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case ';':
                return 43;
            case '{':
                return 44;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys117() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case ';':
            case IF:
            case '+':
            case IDENT:
            case '!':
            case '~':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr22();
        }
        return 251;
    }

    private int yys118() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ']':
                return 122;
        }
        return 251;
    }

    private int yys119() {
        switch (yytok) {
            case IDENT:
                return 33;
            case INTLIT:
                return 35;
            case NEW:
                return 36;
            case '!':
                return 40;
            case '+':
                return 41;
            case '-':
                return 42;
            case '~':
                return 46;
        }
        return 251;
    }

    private int yys121() {
        switch (yytok) {
            case PRINT:
            case '-':
            case NEW:
            case IF:
            case '+':
            case ';':
            case IDENT:
            case ELSE:
            case '!':
            case '~':
            case '}':
            case WHILE:
            case '{':
            case INTLIT:
            case RETURN:
            case INT:
            case DOUBLE:
            case BOOLEAN:
                return yyr16();
        }
        return 251;
    }

    private int yys122() {
        switch (yytok) {
            case '/':
            case '-':
            case ',':
            case '+':
            case '*':
            case NEQ:
            case ')':
            case ';':
            case LTE:
            case '&':
            case LOR:
            case LAND:
            case GTE:
            case '|':
            case '^':
            case ']':
            case '[':
            case '>':
            case '<':
            case EQL:
                return yyr61();
        }
        return 251;
    }

    private int yys123() {
        switch (yytok) {
            case EQL:
                return 48;
            case GTE:
                return 49;
            case LAND:
                return 50;
            case LOR:
                return 51;
            case LTE:
                return 52;
            case NEQ:
                return 53;
            case '&':
                return 54;
            case '*':
                return 55;
            case '+':
                return 56;
            case '-':
                return 57;
            case '/':
                return 58;
            case '<':
                return 60;
            case '>':
                return 61;
            case '[':
                return 62;
            case '^':
                return 63;
            case '|':
                return 64;
            case ';':
            case ',':
            case ')':
            case ']':
                return yyr59();
        }
        return 251;
    }

    private int yyr1() { // program : fundefs
        { program = ((Fundefs)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return 1;
    }

    private int yyr48() { // args1 : expr ',' args1
        { yyrv = new Args(((Expr)yysv[yysp-3]), ((Args)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypargs1();
    }

    private int yyr49() { // args1 : expr
        { yyrv = new Args(((Expr)yysv[yysp-1]), null); }
        yysv[yysp-=1] = yyrv;
        return yypargs1();
    }

    private int yypargs1() {
        switch (yyst[yysp-1]) {
            case 69: return 101;
            default: return 120;
        }
    }

    private int yyr23() { // expr : '-' expr
        { yyrv = new UMinus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr24() { // expr : '+' expr
        { yyrv = new UPlus(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr25() { // expr : '!' expr
        { yyrv = new LNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr26() { // expr : '~' expr
        { yyrv = new BNot(((Expr)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypexpr();
    }

    private int yyr27() { // expr : expr '+' expr
        { yyrv = new Add(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr28() { // expr : expr '-' expr
        { yyrv = new Sub(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr29() { // expr : expr '*' expr
        { yyrv = new Mul(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr30() { // expr : expr '/' expr
        { yyrv = new Div(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr31() { // expr : expr '<' expr
        { yyrv = new Lt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr32() { // expr : expr '>' expr
        { yyrv = new Gt(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr33() { // expr : expr LTE expr
        { yyrv = new Lte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr34() { // expr : expr GTE expr
        { yyrv = new Gte(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr35() { // expr : expr NEQ expr
        { yyrv = new Neq(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr36() { // expr : expr EQL expr
        { yyrv = new Eql(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr37() { // expr : expr '&' expr
        { yyrv = new BAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr38() { // expr : expr '|' expr
        { yyrv = new BOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr39() { // expr : expr '^' expr
        { yyrv = new BXor(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr40() { // expr : expr LAND expr
        { yyrv = new LAnd(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr41() { // expr : expr LOR expr
        { yyrv = new LOr(((Expr)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr42() { // expr : IDENT '(' args ')'
        { yyrv = new Call(((Id)yysv[yysp-4]), ((Args)yysv[yysp-2])); }
        yysv[yysp-=4] = yyrv;
        return yypexpr();
    }

    private int yyr43() { // expr : IDENT '=' expr
        { yyrv = new Assign(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypexpr();
    }

    private int yyr44() { // expr : IDENT
        { yyrv = ((Id)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yyr45() { // expr : INTLIT
        { yyrv = ((IntLit)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypexpr();
    }

    private int yyr59() { // expr : expr '[' expr ']' '=' expr
        { yyrv = new ArrayAssign(((Expr)yysv[yysp-6]), ((Expr)yysv[yysp-4]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=6] = yyrv;
        return yypexpr();
    }

    private int yyr60() { // expr : expr '[' expr ']'
        { yyrv = new ArrayAccess(((Expr)yysv[yysp-4]), ((Expr)yysv[yysp-2])); }
        yysv[yysp-=4] = yyrv;
        return yypexpr();
    }

    private int yyr61() { // expr : NEW type '[' expr ']'
        { yyrv = new NewArray(((Type)yysv[yysp-4]), ((Expr)yysv[yysp-2])); }
        yysv[yysp-=5] = yyrv;
        return yypexpr();
    }

    private int yypexpr() {
        switch (yyst[yysp-1]) {
            case 119: return 123;
            case 114: return 102;
            case 107: return 118;
            case 99: return 113;
            case 72: return 106;
            case 70: return 104;
            case 69: return 102;
            case 64: return 98;
            case 63: return 97;
            case 62: return 96;
            case 61: return 95;
            case 60: return 94;
            case 58: return 93;
            case 57: return 92;
            case 56: return 91;
            case 55: return 90;
            case 54: return 89;
            case 53: return 88;
            case 52: return 87;
            case 51: return 86;
            case 50: return 85;
            case 49: return 84;
            case 48: return 83;
            case 46: return 82;
            case 42: return 80;
            case 41: return 79;
            case 40: return 78;
            case 38: return 75;
            case 37: return 74;
            default: return 29;
        }
    }

    private int yyr10() { // formal : type IDENT
        { yyrv = new Formal(((Type)yysv[yysp-2]), ((Id)yysv[yysp-1]));   }
        yysv[yysp-=2] = yyrv;
        return 15;
    }

    private int yyr6() { // formals : /* empty */
        { yyrv = null; }
        yysv[yysp-=0] = yyrv;
        return yypformals();
    }

    private int yyr7() { // formals : formals1
        { yyrv = ((Formals)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypformals();
    }

    private int yypformals() {
        switch (yyst[yysp-1]) {
            case 12: return 16;
            default: return 19;
        }
    }

    private int yyr8() { // formals1 : formal ',' formals1
        { yyrv = new Formals(((Formal)yysv[yysp-3]), ((Formals)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypformals1();
    }

    private int yyr9() { // formals1 : formal
        { yyrv = new Formals(((Formal)yysv[yysp-1]), null); }
        yysv[yysp-=1] = yyrv;
        return yypformals1();
    }

    private int yypformals1() {
        switch (yyst[yysp-1]) {
            case 20: return 24;
            default: return 17;
        }
    }

    private int yyr4() { // fundef : type IDENT '(' formals ')' '{' stmts '}'
        { yyrv = new Fundef(((Type)yysv[yysp-8]), ((Id)yysv[yysp-7]), ((Formals)yysv[yysp-5]), ((Stmts)yysv[yysp-2])); }
        yysv[yysp-=8] = yyrv;
        return 3;
    }

    private int yyr5() { // fundef : VOID IDENT '(' formals ')' '{' stmts '}'
        { yyrv = new Fundef(null, ((Id)yysv[yysp-7]), ((Formals)yysv[yysp-5]), ((Stmts)yysv[yysp-2])); }
        yysv[yysp-=8] = yyrv;
        return 3;
    }

    private int yyr2() { // fundefs : fundefs fundef
        { yyrv = new Fundefs(((Fundef)yysv[yysp-1]), ((Fundefs)yysv[yysp-2])); }
        yysv[yysp-=2] = yyrv;
        return 2;
    }

    private int yyr3() { // fundefs : /* empty */
        { yyrv = null; }
        yysv[yysp-=0] = yyrv;
        return 2;
    }

    private int yyr46() { // args : /* empty */
        { yyrv = null; }
        yysv[yysp-=0] = yyrv;
        return 103;
    }

    private int yyr47() { // args : args1
        { yyrv = ((Args)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return 103;
    }

    private int yyr13() { // stmt : ';'
        { yyrv = new Empty(); }
        yysv[yysp-=1] = yyrv;
        return yypstmt();
    }

    private int yyr14() { // stmt : expr ';'
        { yyrv = new ExprStmt(((Expr)yysv[yysp-2])); }
        yysv[yysp-=2] = yyrv;
        return yypstmt();
    }

    private int yyr15() { // stmt : WHILE test stmt
        { yyrv = new While(((Expr)yysv[yysp-2]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr16() { // stmt : IF test stmt ELSE stmt
        { yyrv = new If(((Expr)yysv[yysp-4]), ((Stmt)yysv[yysp-3]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=5] = yyrv;
        return yypstmt();
    }

    private int yyr17() { // stmt : IF test stmt
        { yyrv = new If(((Expr)yysv[yysp-2]), ((Stmt)yysv[yysp-1]), new Empty()); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr18() { // stmt : PRINT expr ';'
        { yyrv = new Print(((Expr)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr19() { // stmt : '{' stmts '}'
        { yyrv = new Block(((Stmts)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr20() { // stmt : RETURN ';'
        { yyrv = new Return(); }
        yysv[yysp-=2] = yyrv;
        return yypstmt();
    }

    private int yyr21() { // stmt : RETURN expr ';'
        { yyrv = new Return(((Expr)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr58() { // stmt : varDecl ';'
        { yyrv = ((VarDecl)yysv[yysp-2]); }
        yysv[yysp-=2] = yyrv;
        return yypstmt();
    }

    private int yypstmt() {
        switch (yyst[yysp-1]) {
            case 116: return 121;
            case 77: return 110;
            case 71: return 105;
            default: return 30;
        }
    }

    private int yyr11() { // stmts : stmts stmt
        { yyrv = ((Stmts)yysv[yysp-2]).addStmt(((Stmt)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypstmts();
    }

    private int yyr12() { // stmts : /* empty */
        { yyrv = new Stmts(); }
        yysv[yysp-=0] = yyrv;
        return yypstmts();
    }

    private int yypstmts() {
        switch (yyst[yysp-1]) {
            case 26: return 28;
            case 25: return 27;
            default: return 81;
        }
    }

    private int yyr22() { // test : '(' expr ')'
        { yyrv = ((Expr)yysv[yysp-2]); }
        yysv[yysp-=3] = yyrv;
        switch (yyst[yysp-1]) {
            case 34: return 71;
            default: return 77;
        }
    }

    private int yyr50() { // type : INT
        { yyrv = new IntType(); }
        yysv[yysp-=1] = yyrv;
        return yyptype();
    }

    private int yyr51() { // type : BOOLEAN
        { yyrv = new BooleanType(); }
        yysv[yysp-=1] = yyrv;
        return yyptype();
    }

    private int yyr52() { // type : DOUBLE
        { yyrv = new DoubleType(); }
        yysv[yysp-=1] = yyrv;
        return yyptype();
    }

    private int yyr53() { // type : type '[' ']'
        { yyrv = new ArrayType(((Type)yysv[yysp-3])); }
        yysv[yysp-=3] = yyrv;
        return yyptype();
    }

    private int yyptype() {
        switch (yyst[yysp-1]) {
            case 36: return 73;
            case 20: return 18;
            case 14: return 18;
            case 12: return 18;
            case 2: return 4;
            default: return 31;
        }
    }

    private int yyr56() { // varDecl : type varIntro
        { yyrv = new VarDecl(((Type)yysv[yysp-2]), ((VarIntro)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return 32;
    }

    private int yyr57() { // varDecl : varDecl ',' varIntro
        { yyrv = ((VarDecl)yysv[yysp-3]).addIntro(((VarIntro)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return 32;
    }

    private int yyr54() { // varIntro : IDENT '=' expr
        { yyrv = new InitVarIntro(((Id)yysv[yysp-3]), ((Expr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypvarIntro();
    }

    private int yyr55() { // varIntro : IDENT
        { yyrv = new VarIntro(((Id)yysv[yysp-1])); }
        yysv[yysp-=1] = yyrv;
        return yypvarIntro();
    }

    private int yypvarIntro() {
        switch (yyst[yysp-1]) {
            case 31: return 65;
            default: return 100;
        }
    }

    protected String[] yyerrmsgs = {
    };


    private MiniLexer lexer;
    private Fundefs   program;

    public MiniParser(Handler handler, MiniLexer lexer) {
      super(handler);
      this.lexer = lexer;
      lexer.nextToken();
      parse();
    }

    public Fundefs getProgram() {
      return program;
    }

    private void yyerror(String msg) {
      report(new Failure(msg));
    }


}
