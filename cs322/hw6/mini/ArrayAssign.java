package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for assignments to array elements.
 */
class ArrayAssign extends Expr {
    private Expr arr;
    private Expr idx;
    private Expr rhs;
    ArrayAssign(Expr arr, Expr idx, Expr rhs) {
        this.arr = arr;
        this.idx = idx;
        this.rhs = rhs;
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        // Calculate type of elements in arr, which must be an array:
        Type et = arr.typeOf(ctxt,env).elementType();
        if (et==null) {
            throw new Failure("Array expression does not have array type");
        }
        // Make sure index type is an int
        if (!idx.typeOf(ctxt,env).equal(Type.INT)) {
            ctxt.report(new Failure("Arithmetic operands have different types"));
        }
        // Make sure that the rhs type matches the element type:
        if (!rhs.typeOf(ctxt,env).equal(et)) {
            throw new Failure("Right hand side of assignment does not match array type");
        }
        // Return the array element type:
        return et;
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        // Possible side effects due to assignment, so do not change order.
        return DEEP;
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        // use arr idx rhs ...
        a.emit("ArrayAssign is not yet implemented");
    }
}
