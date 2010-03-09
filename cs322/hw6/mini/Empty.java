package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for empty statements.
 */
class Empty extends Stmt {

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        // Return the input environment unchanged.
        def.returns = false;
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        // Nothing to do here ...
    }
}
