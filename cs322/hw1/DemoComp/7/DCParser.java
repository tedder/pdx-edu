// Output created by jacc on Wed Jan 10 20:43:59 PST 2007


import compiler.Phase;
import compiler.Handler;
import compiler.Failure;
import compiler.Position;

class DCParser extends Phase implements DCTokens {
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
                case 42:
                    switch (yytok) {
                        case IF:
                            yyn = 4;
                            continue;
                        case PRINT:
                            yyn = 5;
                            continue;
                        case VAR:
                            yyn = 6;
                            continue;
                        case WHILE:
                            yyn = 7;
                            continue;
                        case '{':
                            yyn = 8;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 1:
                    yyst[yysp] = 1;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 43:
                    switch (yytok) {
                        case ENDINPUT:
                            yyn = 84;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 2:
                    yyst[yysp] = 2;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 44:
                    yyn = yys2();
                    continue;

                case 3:
                    yyst[yysp] = 3;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 45:
                    switch (yytok) {
                        case ENDINPUT:
                            yyn = yyr1();
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 4:
                    yyst[yysp] = 4;
                    yysv[yysp] = (lexer.getSemantic()
                                 );
                    yytok = (lexer.nextToken()
                            );
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 46:
                    switch (yytok) {
                        case '(':
                            yyn = 10;
                            continue;
                    }
                    yyn = 87;
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
                case 47:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 48:
                    switch (yytok) {
                        case '=':
                            yyn = 16;
                            continue;
                    }
                    yyn = 87;
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
                case 49:
                    switch (yytok) {
                        case '(':
                            yyn = 17;
                            continue;
                    }
                    yyn = 87;
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
                case 50:
                    switch (yytok) {
                        case IF:
                            yyn = 4;
                            continue;
                        case PRINT:
                            yyn = 5;
                            continue;
                        case VAR:
                            yyn = 6;
                            continue;
                        case WHILE:
                            yyn = 7;
                            continue;
                        case '{':
                            yyn = 8;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 9:
                    yyst[yysp] = 9;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 51:
                    switch (yytok) {
                        case ENDINPUT:
                        case '}':
                            yyn = yyr2();
                            continue;
                    }
                    yyn = 87;
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
                case 52:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 11:
                    yyst[yysp] = 11;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 53:
                    yyn = yys11();
                    continue;

                case 12:
                    yyst[yysp] = 12;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 54:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case ';':
                            yyn = 23;
                            continue;
                    }
                    yyn = 87;
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
                case 55:
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
                case 56:
                    yyn = yys14();
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
                case 57:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 58:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 59:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 18:
                    yyst[yysp] = 18;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 60:
                    switch (yytok) {
                        case '}':
                            yyn = 27;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 19:
                    yyst[yysp] = 19;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 61:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case EQEQ:
                            yyn = 28;
                            continue;
                        case '<':
                            yyn = 29;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 20:
                    yyst[yysp] = 20;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 62:
                    switch (yytok) {
                        case ')':
                            yyn = 30;
                            continue;
                    }
                    yyn = 87;
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
                case 63:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 64:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 65:
                    yyn = yys23();
                    continue;

                case 24:
                    yyst[yysp] = 24;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 66:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case ')':
                            yyn = 33;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 25:
                    yyst[yysp] = 25;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 67:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case ';':
                            yyn = 34;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 26:
                    yyst[yysp] = 26;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 68:
                    switch (yytok) {
                        case ')':
                            yyn = 35;
                            continue;
                    }
                    yyn = 87;
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
                case 69:
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
                case 70:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 71:
                    switch (yytok) {
                        case INTLIT:
                            yyn = 13;
                            continue;
                        case VAR:
                            yyn = 14;
                            continue;
                        case '(':
                            yyn = 15;
                            continue;
                    }
                    yyn = 87;
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
                case 72:
                    switch (yytok) {
                        case IF:
                            yyn = 4;
                            continue;
                        case PRINT:
                            yyn = 5;
                            continue;
                        case VAR:
                            yyn = 6;
                            continue;
                        case WHILE:
                            yyn = 7;
                            continue;
                        case '{':
                            yyn = 8;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 31:
                    yyst[yysp] = 31;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 73:
                    yyn = yys31();
                    continue;

                case 32:
                    yyst[yysp] = 32;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 74:
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
                case 75:
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
                case 76:
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
                case 77:
                    switch (yytok) {
                        case IF:
                            yyn = 4;
                            continue;
                        case PRINT:
                            yyn = 5;
                            continue;
                        case VAR:
                            yyn = 6;
                            continue;
                        case WHILE:
                            yyn = 7;
                            continue;
                        case '{':
                            yyn = 8;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 36:
                    yyst[yysp] = 36;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 78:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case ')':
                            yyn = yyr9();
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 37:
                    yyst[yysp] = 37;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 79:
                    switch (yytok) {
                        case '+':
                            yyn = 21;
                            continue;
                        case '-':
                            yyn = 22;
                            continue;
                        case ')':
                            yyn = yyr10();
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 38:
                    yyst[yysp] = 38;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 80:
                    switch (yytok) {
                        case ELSE:
                            yyn = 40;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 39:
                    yyst[yysp] = 39;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 81:
                    yyn = yys39();
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
                case 82:
                    switch (yytok) {
                        case IF:
                            yyn = 4;
                            continue;
                        case PRINT:
                            yyn = 5;
                            continue;
                        case VAR:
                            yyn = 6;
                            continue;
                        case WHILE:
                            yyn = 7;
                            continue;
                        case '{':
                            yyn = 8;
                            continue;
                    }
                    yyn = 87;
                    continue;

                case 41:
                    yyst[yysp] = 41;
                    if (++yysp>=yyst.length) {
                        yyexpand();
                    }
                case 83:
                    yyn = yys41();
                    continue;

                case 84:
                    return true;
                case 85:
                    yyerror("stack overflow");
                case 86:
                    return false;
                case 87:
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

    private int yys2() {
        switch (yytok) {
            case IF:
                return 4;
            case PRINT:
                return 5;
            case VAR:
                return 6;
            case WHILE:
                return 7;
            case '{':
                return 8;
            case ENDINPUT:
            case '}':
                return yyr3();
        }
        return 87;
    }

    private int yys11() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr13();
        }
        return 87;
    }

    private int yys13() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr16();
        }
        return 87;
    }

    private int yys14() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr15();
        }
        return 87;
    }

    private int yys23() {
        switch (yytok) {
            case WHILE:
            case VAR:
            case IF:
            case PRINT:
            case ENDINPUT:
            case '}':
            case '{':
            case ELSE:
                return yyr7();
        }
        return 87;
    }

    private int yys27() {
        switch (yytok) {
            case WHILE:
            case VAR:
            case IF:
            case PRINT:
            case ENDINPUT:
            case '}':
            case '{':
            case ELSE:
                return yyr8();
        }
        return 87;
    }

    private int yys31() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr11();
        }
        return 87;
    }

    private int yys32() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr12();
        }
        return 87;
    }

    private int yys33() {
        switch (yytok) {
            case '<':
            case ';':
            case '-':
            case '+':
            case ')':
            case EQEQ:
                return yyr14();
        }
        return 87;
    }

    private int yys34() {
        switch (yytok) {
            case WHILE:
            case VAR:
            case IF:
            case PRINT:
            case ENDINPUT:
            case '}':
            case '{':
            case ELSE:
                return yyr4();
        }
        return 87;
    }

    private int yys39() {
        switch (yytok) {
            case WHILE:
            case VAR:
            case IF:
            case PRINT:
            case ENDINPUT:
            case '}':
            case '{':
            case ELSE:
                return yyr6();
        }
        return 87;
    }

    private int yys41() {
        switch (yytok) {
            case WHILE:
            case VAR:
            case IF:
            case PRINT:
            case ENDINPUT:
            case '}':
            case '{':
            case ELSE:
                return yyr5();
        }
        return 87;
    }

    private int yyr1() { // program : stmts
        { prog = ((Stmt)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return 1;
    }

    private int yyr14() { // iatom : '(' iexpr ')'
        { yyrv = ((IExpr)yysv[yysp-2]); }
        yysv[yysp-=3] = yyrv;
        return yypiatom();
    }

    private int yyr15() { // iatom : VAR
        { yyrv = new Var(((String)yysv[yysp-1])); }
        yysv[yysp-=1] = yyrv;
        return yypiatom();
    }

    private int yyr16() { // iatom : INTLIT
        { yyrv = new Int(((Integer)yysv[yysp-1]).intValue()); }
        yysv[yysp-=1] = yyrv;
        return yypiatom();
    }

    private int yypiatom() {
        switch (yyst[yysp-1]) {
            case 22: return 32;
            case 21: return 31;
            default: return 11;
        }
    }

    private int yyr11() { // iexpr : iexpr '+' iatom
        { yyrv = new Plus(((IExpr)yysv[yysp-3]), ((IExpr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypiexpr();
    }

    private int yyr12() { // iexpr : iexpr '-' iatom
        { yyrv = new Minus(((IExpr)yysv[yysp-3]), ((IExpr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypiexpr();
    }

    private int yyr13() { // iexpr : iatom
        { yyrv = ((IExpr)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypiexpr();
    }

    private int yypiexpr() {
        switch (yyst[yysp-1]) {
            case 29: return 37;
            case 28: return 36;
            case 16: return 25;
            case 15: return 24;
            case 5: return 12;
            default: return 19;
        }
    }

    private int yyr9() { // bexpr : iexpr EQEQ iexpr
        { yyrv = new EqEq(((IExpr)yysv[yysp-3]), ((IExpr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypbexpr();
    }

    private int yyr10() { // bexpr : iexpr '<' iexpr
        { yyrv = new LT(((IExpr)yysv[yysp-3]), ((IExpr)yysv[yysp-1])); }
        yysv[yysp-=3] = yyrv;
        return yypbexpr();
    }

    private int yypbexpr() {
        switch (yyst[yysp-1]) {
            case 10: return 20;
            default: return 26;
        }
    }

    private int yyr4() { // stmt : VAR '=' iexpr ';'
        { yyrv = new Assign(((String)yysv[yysp-4]), ((IExpr)yysv[yysp-2])); }
        yysv[yysp-=4] = yyrv;
        return yypstmt();
    }

    private int yyr5() { // stmt : IF '(' bexpr ')' stmt ELSE stmt
        { yyrv = new If(((BExpr)yysv[yysp-5]), ((Stmt)yysv[yysp-3]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=7] = yyrv;
        return yypstmt();
    }

    private int yyr6() { // stmt : WHILE '(' bexpr ')' stmt
        { yyrv = new While(((BExpr)yysv[yysp-3]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=5] = yyrv;
        return yypstmt();
    }

    private int yyr7() { // stmt : PRINT iexpr ';'
        { yyrv = new Print(((IExpr)yysv[yysp-2])); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yyr8() { // stmt : '{' stmts '}'
        { yyrv = ((Stmt)yysv[yysp-2]); }
        yysv[yysp-=3] = yyrv;
        return yypstmt();
    }

    private int yypstmt() {
        switch (yyst[yysp-1]) {
            case 40: return 41;
            case 35: return 39;
            case 30: return 38;
            default: return 2;
        }
    }

    private int yyr2() { // stmts : stmt stmts
        { yyrv = new Seq(((Stmt)yysv[yysp-2]), ((Stmt)yysv[yysp-1])); }
        yysv[yysp-=2] = yyrv;
        return yypstmts();
    }

    private int yyr3() { // stmts : stmt
        { yyrv = ((Stmt)yysv[yysp-1]); }
        yysv[yysp-=1] = yyrv;
        return yypstmts();
    }

    private int yypstmts() {
        switch (yyst[yysp-1]) {
            case 2: return 9;
            case 0: return 3;
            default: return 18;
        }
    }

    protected String[] yyerrmsgs = {
    };

    private DCLexer lexer;
    private boolean parsed = false;
    private Stmt    prog;

    public DCParser(Handler handler, DCLexer lexer) {
        super(handler);
        this.lexer = lexer;
        lexer.nextToken();
        parsed = parse();
    }
  
    public Stmt getProg() {
      return prog;
    }

    private void yyerror(String msg) {
        report(new Failure(msg));
    }

}
