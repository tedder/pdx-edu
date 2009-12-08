package mini;

import compiler.Failure;

/** Abstract syntax for binary arithmetic expressions.
 */
abstract class BinArithExpr extends BinExpr {
    BinArithExpr(Expr left, Expr right) {
        super(left, right);
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Covers +, -, *, /
        Type lt = left.typeOf(ctxt, env);
        Type rt = right.typeOf(ctxt, env);
        if ( !(lt.equal(Type.INT) || lt.equal(Type.DOUBLE)) ) {
            throw new Failure("Lefthand arithmetic operands must be int or double.");
        }
        if ( !(rt.equal(Type.INT) || rt.equal(Type.DOUBLE)) ) {
            throw new Failure("Righthand arithmetic operands must be int or double.");
        }

        return lt;
    }
}
