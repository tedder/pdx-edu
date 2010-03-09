package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for statements.
 */
public abstract class Stmt {

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public abstract VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure;

    /** Generate code for executing this statement.
     */
    public abstract void compile(Assembly a);
}
