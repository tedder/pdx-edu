package mini;


/** Abstract syntax for less than expressions.
 */
class Lt extends BinExpr {
    Lt(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Lt, <"; }
}
