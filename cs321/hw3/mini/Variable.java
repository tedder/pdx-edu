package mini;


/** Abstract syntax for variable statements.
 */
class Variable extends Stmt {
    private VType type;
    private Assign assign;

    Variable(VType type, Assign assign) {
        this.type = type;
        this.assign = assign;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "variable");
        type.indent(out, n+1);
        assign.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return assign.toDot(dot, n,
               type.toDot(dot, n,
               dot.node("variable", n)));
    }
}
