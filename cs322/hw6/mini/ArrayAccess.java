package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for array accesses.
 */
class ArrayAccess extends Expr {
    private Expr arr;
    private Expr idx;
    ArrayAccess(Expr arr, Expr idx) {
        this.arr = arr;
        this.idx = idx;
    
        // Compute the depth of this expression:
        depth = 1 + Math.max(arr.getDepth(), idx.getDepth());
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
        // Return the array element type:
        return et;
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

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        // use arr idx ...
        a.emit("ArrayAccess is not yet implemented");
    }
}
