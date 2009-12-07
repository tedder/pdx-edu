package mini;

import compiler.Failure;

/** Abstract syntax for empty statements.
 */
class Empty extends Stmt {

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Empty");
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return dot.node("Empty", n);
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        // Return the input environment unchanged.
        return env;
    }
}
