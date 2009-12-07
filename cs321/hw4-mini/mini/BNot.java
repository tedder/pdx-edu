package mini;

import compiler.Failure;

/** Abstract syntax for bitwise not expressions (~).
 */
class BNot extends UnExpr {
    BNot(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Binary not, ~"; }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        Type t = exp.typeOf(ctxt, env);
        if (!t.equal(Type.BOOLEAN) && !t.equal(Type.INT)) {
            ctxt.report(new Failure("Bitwise not expects boolean or int argument"));
        }
        return t;
    }
}
