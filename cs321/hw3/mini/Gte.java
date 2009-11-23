package mini;


/** Abstract syntax for greater than or equal expressions.
 */
class Gte extends BinExpr {
    Gte(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Gte, >="; }
}
