package mini;

import compiler.Failure;

/** Abstract syntax for array accesses.
 */
class ArrayAccess extends Expr {
    private Expr arr;
    private Expr idx;
    ArrayAccess(Expr arr, Expr idx) {
        this.arr = arr;
        this.idx = idx;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "ArrayAccess");
        arr.indent(out, n+1);
        idx.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return idx.toDot(dot, n,
               arr.toDot(dot, n,
               dot.node("ArrayAccess", n)));
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // IGNORE THIS UNTIL YOU GET TO QUESTION 5
        return Type.INT;
    }
}
