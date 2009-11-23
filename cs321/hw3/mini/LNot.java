package mini;


/** Abstract syntax for logical not expressions (!).
 */
class LNot extends UnExpr {
    LNot(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Logical not, !"; }
}
