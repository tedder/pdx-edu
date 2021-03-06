package mini;


/** Abstract syntax for a Double type.
 */
class TDouble extends VType {
    TDouble() {
      // do nothing.
    }

    // Simply output our type, since we don't have children.
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Double");
    }

    // same with dot output.
    public int toDot(DotOutput dot, int n) {
        return dot.node("Double", n);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "double"; }
}
