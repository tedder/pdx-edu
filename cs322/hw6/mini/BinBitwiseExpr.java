package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for binary bitwise operations.
 */
abstract class BinBitwiseExpr extends BinExpr {
    BinBitwiseExpr(Expr left, Expr right) {
        super(left, right);
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Covers &, |, ^
        Type lt = left.typeOf(ctxt, env);
        Type rt = right.typeOf(ctxt, env);
        if (!lt.equal(Type.INT) && !lt.equal(Type.BOOLEAN)) {
            throw new Failure("Invalid operand types for arithmetic operation");
        }
        if (!lt.equal(rt)) {
            throw new Failure("Operands have different types");
        }
        return lt;
    }
}
