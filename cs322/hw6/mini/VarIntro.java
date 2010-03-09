package mini;

import compiler.*;
import compiler.Failure;

/** Represents a variable introduction with a single variable
 *  name.
 */
public class VarIntro {
    protected Id id;
    public VarIntro(Id id) {
        this.id = id;
    }

    /** Record the environment for this variable so that
     *  we can access its details during code generation.
     */
    protected VarEnv ve = null;

    /** Check this variable introduction, given the type for
     *  the associated variable declaration and the initial
     *  environment, and then return the modified environment.
     */
    public VarEnv check(Fundef def, Type type, Context ctxt, VarEnv env) {
        // Extend the environment:
        return ve = def.extend(id, type, env);
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        // If no explicit initializer is given, initialize with zero:
        a.emit("movl", a.immed(0), a.varRef(ve));
    }
}
