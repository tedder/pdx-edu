package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for integer literals.
 */
class IntLit extends Expr {
    private String num;
    IntLit(String num) {
        this.num = num;
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        return Type.INT;
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        return 1;
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        try {
            a.emit("movl", a.immed(Integer.parseInt(num)), a.reg(free));
        } catch (Exception e) {
            // Ignore; this shouldn't happen if the lexer has done
            // its job correctly!
        }
    }
}
