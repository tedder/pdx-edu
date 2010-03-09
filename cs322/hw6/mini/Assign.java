package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for assignment expressions.
 */
class Assign extends Expr {
    private Id lhs;
    private Expr rhs;
    Assign(Id lhs, Expr rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        Type lt = lhs.typeOf(ctxt, env);
        Type rt = rhs.typeOf(ctxt,env);
        if (!lt.equal(rt)) {
            ctxt.report(new Failure("Types in assignment do not match"));
        }
        return rt;
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        // Possible side effects due to assignment, so do not change order.
        return DEEP;
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        rhs.compileExpr(a, free);
        a.emit("movl", a.reg(free), lhs.fromStackFrame(a));
    }
}
