package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for if-then-else statements.
 */
class If extends Stmt {
    private Expr test;
    private Stmt ifTrue;
    private Stmt ifFalse;
    If(Expr test, Stmt ifTrue, Stmt ifFalse) {
        this.test = test;
        this.ifTrue = ifTrue;
        this.ifFalse = ifFalse;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        try {
            if (!test.typeOf(ctxt, env).equal(Type.BOOLEAN)) {
               ctxt.report(new Failure("Boolean test expected in if statement"));
            }
        } catch (Failure f) {
            // report any error that occured while checking the expression.
            ctxt.report(f);
        }
        // check true and false branches, discarding resulting environments:
        ifTrue.check(def, ctxt, env);
        boolean tr = def.returns;
        ifFalse.check(def, ctxt, env);
        def.returns = tr && def.returns;
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        String lab1 = a.newLabel();
        String lab2 = a.newLabel();
        test.branchFalse(a, 0, lab1);
        ifTrue.compile(a);
        a.emit("jmp", lab2);
        a.emitLabel(lab1);
        ifFalse.compile(a);
        a.emitLabel(lab2);
    }
}
