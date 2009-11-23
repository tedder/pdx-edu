package mini;


/** Abstract syntax for add expressions.
 */
class Add extends BinExpr {
    Add(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Add, +"; }
}
