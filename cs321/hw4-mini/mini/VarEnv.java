package mini;

import compiler.Failure;

/** Represents a variable environment, mapping identifiers
 *  to corresponding types.
 */
public class VarEnv {
    private Id id;
    private Type type;
    private VarEnv next;
    public VarEnv(Id id, Type type, VarEnv next) {
        this.id = id;
        this.type = type;
        this.next = next;
    }

    /** Return the type associated with this variable environment.
     */
    public Type getType() {
        return type;
    }

    /** Search an environment for a specified variable name, returning
     *  null if no such entry is found, or else returning a pointer to
     *  the first matching VarEnv object in the list.
     */
    public static VarEnv find(Id id, VarEnv env) {
        while (env!=null && !env.id.equals(id)) {
            env = env.next;
        }
        return env;
    }

    /** Display a variable environment for debugging purposes.
     */
    public static void display(VarEnv env) {
        System.out.println("{");
        while (env!=null) {
            System.out.print("  (" + env.id + ", " + env.type + ")");
            VarEnv next = env.next;
            if (next==null) {
                System.out.println();
            } else {
                System.out.println(",");
            }
            env = next;
        }
        System.out.println("}");
    }
}
