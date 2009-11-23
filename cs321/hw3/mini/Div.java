package mini;


/** Abstract syntax for divide expressions.
 */
class Div extends BinExpr {
    Div(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Div, /"; }
}
