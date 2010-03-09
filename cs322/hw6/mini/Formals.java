package mini;

import compiler.*;
import compiler.Failure;

/** Represents a list of formal parameters in a function definition.
 */
class Formals {

    /** Holds the first formal parameter in this list.
     */
    private Formal formal;

    /** Holds the list containing the remaining formal parameters.
     */
    private Formals rest;
    Formals(Formal formal, Formals rest) {
        this.formal = formal;
        this.rest = rest;
    }

    /** Return the formal argument at the front of this list.
     */
    public Formal getFormal() {
        return formal;
    }

    /** Return a list containing the rest of the formal parameters.
     */
    public Formals getRest() {
        return rest;
    }

    /** Build an environment that corresponds to a list of formal
     *  parameters.
     */
    static VarEnv buildEnv(Formals formals) {
        return formals==null ? null : formals.buildEnv(8);
      }

    /** Build an environment for this list of formal parameters
     *  starting at the specified offset.
     */
    VarEnv buildEnv(int offset) {
        VarEnv env = (rest==null) ? null : rest.buildEnv(offset+Assembly.WORDSIZE);
        return formal.extendEnv(offset, env);
    }
}
