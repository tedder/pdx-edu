package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for binary equality test expressions.
 */
abstract class BinEqualityExpr extends BinExpr {
    BinEqualityExpr(Expr left, Expr right) {
        super(left, right);
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Covers ==, !=
        Type lt = left.typeOf(ctxt, env);
        Type rt = right.typeOf(ctxt, env);
        if (!lt.equal(rt)) {
            throw new Failure("Operands being compared have different types");
        }
        return Type.BOOLEAN;
    }
}
