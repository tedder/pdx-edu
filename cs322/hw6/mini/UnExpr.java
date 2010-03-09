package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for unary expressions.
 */
abstract class UnExpr extends Expr {
    protected Expr exp;
    UnExpr(Expr exp) {
        this.exp = exp;
    
        // Compute the depth of this expression:
        depth = 1 + exp.getDepth();
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        // Return the depth value that was computed by the constructor
        return depth;
    }

    /** Records the depth of this expression; this value is computed
     *  at the time the constructor is called and then saved here so
     *  that it can be accessed without further computation later on.
     */
    protected int depth;
}
