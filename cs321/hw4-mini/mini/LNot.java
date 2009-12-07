package mini;

import compiler.Failure;

/** Abstract syntax for logical not expressions (!).
 */
class LNot extends UnExpr {
    LNot(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Logical not, !"; }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        if (!exp.typeOf(ctxt, env).equal(Type.BOOLEAN)) {
            ctxt.report(new Failure("Logical not expects boolean argument"));
        }
        return Type.BOOLEAN;
    }
}
