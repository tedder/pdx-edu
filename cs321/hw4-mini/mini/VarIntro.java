package mini;

import compiler.Failure;

/** Represents a variable introduction with a single variable
 *  name.
 */
public class VarIntro {
    protected Id id;
    public VarIntro(Id id) {
        this.id = id;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        id.indent(out, n);
    }

    /** Output a description of this node (with id n), including a
     *  link to its parent node (with id p) and returning the next
     *  available node id.
     */
    public int toDot(DotOutput dot, int p, int n) {
        dot.join(p, n);
        return toDot(dot, n);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return id.toDot(dot, n);
    }

    /** Check this variable introduction, given the type for
     *  the associated variable declaration and the initial
     *  environment, and then return the modified environment.
     */
    public VarEnv check(Type type, Context ctxt, VarEnv env) {
        // Extend the environment:
        return new VarEnv(id, type, env);
    }
}
