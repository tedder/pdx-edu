package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for block statements.
 */
class Block extends Stmt {
    private Stmts stmts;
    Block(Stmts stmts) {
        this.stmts = stmts;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        stmts.check(def, ctxt, env);
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        stmts.compile(a);
    }
}
