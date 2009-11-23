package mini;


/** Abstract syntax for block statements.
 */
class Block extends Stmt {
    private Stmts stmts;
    Block(Stmts stmts) {
        this.stmts = stmts;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "{");
        stmts.indent(out, n+1);
        out.indent(n, "}");
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return stmts.toDot(dot, n, dot.node("{...}", n));
    }
}
