package mini;


/** Abstract syntax for an array type.
 */
class TArray extends VType {
    TArray() {
      // do nothing.
    }

    // Simply output our type, since we don't have children.
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Array");
    }

    // same with dot output.
    public int toDot(DotOutput dot, int n) {
        return dot.node("Array", n);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "array"; }
}
