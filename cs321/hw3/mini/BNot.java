package mini;


/** Abstract syntax for bitwise not expressions (~).
 */
class BNot extends UnExpr {
    BNot(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Binary not, ~"; }
}
