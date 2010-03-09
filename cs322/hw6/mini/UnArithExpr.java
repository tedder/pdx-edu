package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for unary expressions that operate on
 *  numeric arguments.
 */
abstract class UnArithExpr extends UnExpr {
    UnArithExpr(Expr exp) {
        super(exp);
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Covers unary plus and unary minus:
        Type t = exp.typeOf(ctxt, env);
        if (!t.equal(Type.INT) && !t.equal(Type.DOUBLE)) {
            throw new Failure("Unary operation expects numeric argument");
        }
        return t;
    }
}
