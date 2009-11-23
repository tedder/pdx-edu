package mini;


/** Abstract syntax for if-then-else statements.
 */
class If extends Stmt {
    private Expr test;
    private Stmt ifTrue;
    private Stmt ifFalse;
    If(Expr test, Stmt ifTrue, Stmt ifFalse) {
        this.test = test;
        this.ifTrue = ifTrue;
        this.ifFalse = ifFalse;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "If");
        test.indent(out, n+1);
        ifTrue.indent(out, n+1);
        ifFalse.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return ifFalse.toDot(dot, n,
               ifTrue.toDot(dot, n,
               test.toDot(dot, n,
               dot.node("If", n))));
    }
}
