package mini;


/** Abstract syntax for less than or equal expressions.
 */
class Lte extends BinExpr {
    Lte(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Lte, <="; }
}
