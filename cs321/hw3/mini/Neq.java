package mini;


/** Abstract syntax for inequality test expressions (==).
 */
class Neq extends BinExpr {
    Neq(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Neq, !="; }
}
