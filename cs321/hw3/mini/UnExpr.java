package mini;


/** Abstract syntax for unary expressions.
 */
abstract class UnExpr extends Expr {
    protected Expr exp;
    UnExpr(Expr exp) {
        this.exp = exp;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, label());
        exp.indent(out, n+1);
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
        return exp.toDot(dot, n,
               dot.node(label(), n));
    }
}
