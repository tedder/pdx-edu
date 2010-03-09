package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for code to construct a new array.
 */
class NewArray extends Expr {
    private Type type;
    private Expr size;
    NewArray(Type type, Expr size) {
        this.type = type;
        this.size = size;
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        if (!size.typeOf(ctxt, env).equal(Type.INT)) {
            throw new Failure("Array size must be an integer");
        }
        return new ArrayType(type);
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        return size.getDepth() + 1;
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        // use size (and, in theory, type, although you won't really
        // need to do that because all types are the same size).
        a.emit("NewArray is not yet implemented");
    }
}
