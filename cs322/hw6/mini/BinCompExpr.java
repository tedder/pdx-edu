package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for binary comparison expressions.
 */
abstract class BinCompExpr extends BinExpr {
    BinCompExpr(Expr left, Expr right) {
        super(left, right);
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Covers <, >, <=, >=
        Type lt = left.typeOf(ctxt, env);
        Type rt = right.typeOf(ctxt, env);
        if (!lt.equal(rt)) {
            throw new Failure("Comparison operands have different types");
        }
        if (!lt.equal(Type.INT) && !lt.equal(Type.DOUBLE)) {
            throw new Failure("Cannot compare values of type " + lt);
        }
        return Type.BOOLEAN;
    }
}
