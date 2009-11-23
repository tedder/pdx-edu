package mini;


/** Abstract syntax for subtract expressions.
 */
class Sub extends BinExpr {
    Sub(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Sub, -"; }
}
