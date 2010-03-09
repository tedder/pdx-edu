package mini;

import compiler.*;
import compiler.Failure;

/** Represents a list of expressions passed as the arguments to a
 *  function call.
 */
class Args {

    /** Holds this argument expression.
     */
    private Expr arg;

    /** Points to the list containing the rest of the arguments.
     */
    private Args rest;
    Args(Expr arg, Args rest) {
        this.arg = arg;
        this.rest = rest;
    }

    /** Return the argument at the front of this list.
     */
    public Expr getArg() {
        return arg;
    }

    /** Return a list containing the rest of the function's arguments.
     */
    public Args getRest() {
        return rest;
    }
}
