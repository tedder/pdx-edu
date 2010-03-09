package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for logical not expressions (!).
 */
class LNot extends UnExpr {
    LNot(Expr exp) {
        super(exp);
    }

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

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        exp.compileExpr(a, free);
        a.emit("xorl", a.immed(1), a.reg(free));
    }
}
