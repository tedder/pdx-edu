package mini;


/** Abstract syntax for assignment expressions.
 */
class Assign extends Expr {
    private Id lhs;
    private Expr rhs;
    Assign(Id lhs, Expr rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Assign");
        lhs.indent(out, n+1);
        rhs.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return rhs.toDot(dot, n,
               lhs.toDot(dot, n,
               dot.node("Assign", n)));
    }
}
