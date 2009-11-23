package mini;


/** Abstract syntax for logical or expressions (||).
 */
class LOr extends BinExpr {
    LOr(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "LOr, ||"; }
}
