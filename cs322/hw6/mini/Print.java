package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for print statements.
 */
class Print extends Stmt {
    private Expr exp;
    Print(Expr exp) {
        this.exp = exp;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        try {
            if (!exp.typeOf(ctxt, env).equal(Type.INT)) {
               ctxt.report(new Failure("print requires integer argument"));
            }
        } catch (Failure f) {
            // report any error that occured while checking the expression.
            ctxt.report(f);
        }
        def.returns = false;
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        exp.compileExpr(a, 0);
  /*
        // Unconventional call sequence to ensure appropriate
        // alignment of stack on Mac OS X.
        a.emit("movl", "%esp", a.name("esp0"));  // save stack pointer
        a.emit("subl", a.immed(a.WORDSIZE), "%esp");  // make room for an argument
        a.emit("andl", "$0xfffffff0", "%esp");   // round down to align
        a.emit("movl", a.reg(0), a.indirect(0,"%esp")); // save argument
        a.emit("call",  a.name("print"));        // invoke runtime routine
        a.emit("movl", a.name("esp0"), "%esp");  // restore stack pointer
  */
        // Conventional call sequence that works if we don't have
        // to worry about stack alignment (e.g., on Linux, Windows).
        a.emit("pushl", a.reg(0));
        a.emit("call",  a.name("print"));
        a.emit("addl",  a.immed(a.WORDSIZE), "%esp");
    }
}
