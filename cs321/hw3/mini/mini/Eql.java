package mini;


/** Abstract syntax for equality test expressions (==).
 */
class Eql extends BinExpr {
    Eql(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Eql, =="; }
}
