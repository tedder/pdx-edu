package mini;

import compiler.*;
import compiler.Failure;

/** Represents a single formal parameter in a function definition,
 *  pairing a type (or null, for a void function that does not
 *  return an argument).
 */
class Formal {

    /** Holds the type of this formal parameter.
     */
    private Type type;

    /** Holds the name of this formal parameter.
     */
    private Id name;
    Formal(Type type, Id name) {
        this.type = type;
        this.name = name;
    }

    /** Return the type of this formal parameter.
     */
    public Type getType() {
        return type;
    }

    /** Return the name of this formal parameter.
     */
    public Id getName() {
        return name;
    }

    /** Construct an environment that adds this formal parameter
     *  with a specified stack frame offset.
     */
    VarEnv extendEnv(int offset, VarEnv env) {
        return new VarEnv(name, type, offset, env);
    }

    /** Generate a printable description of this formal parameter.
     */
    public String toString() {
        return name.toString();
    }
}
