package mini;


/** Abstract syntax for greater than expressions.
 */
class Gt extends BinExpr {
    Gt(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Gt, >"; }
}
