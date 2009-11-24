package mini;


/** Abstract syntax for an Integer type.
 */
class TInt extends VType {
    TInt() {
      // do nothing.
    }

    // Simply output our type, since we don't have children.
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Integer");
    }

    // same with dot output.
    public int toDot(DotOutput dot, int n) {
        return dot.node("Integer", n);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "integer"; }
}
