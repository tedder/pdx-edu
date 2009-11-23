package mini;


/** Abstract syntax for binary expressions.
 */
abstract class BinExpr extends Expr {
    protected Expr left;
    protected Expr right;
    BinExpr(Expr left, Expr right) {
        this.left = left;
        this.right = right;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, label());
        left.indent(out, n+1);
        right.indent(out, n+1);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    abstract String label();

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return right.toDot(dot, n,
               left.toDot(dot, n,
               dot.node(label(), n)));
    }
}
