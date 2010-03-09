package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for bitwise not expressions (~).
 */
class BNot extends UnExpr {
    BNot(Expr exp) {
        super(exp);
    }

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

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        exp.compileExpr(a, free);
        a.emit("notl", a.reg(free));
    }
}
