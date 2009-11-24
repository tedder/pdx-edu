package mini;


/** Abstract syntax for variable types.
 */
class VarType {
    String type;
    VarType(String name) {
        this.type = type;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        //type.indent(n, "VType, " + type);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return dot.node("VType, " + type, n);
    }
}
