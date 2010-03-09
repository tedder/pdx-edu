package mini;

import compiler.*;
import compiler.Failure;

/** Represents a function call.
 */
class Call extends Expr {
    private Id name;
    private Args args;
    Call(Id name, Args args) {
        this.name = name;
        this.args = args;
    }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        Type result = typeCall(ctxt, env);
        if (result==null) {
            throw new Failure("Function " + name + " does not return a value");
        }
        return result;
    }

    /** Type check a function call, returning either the return type
     *  or null if this is a void function.
     */
    Type typeCall(Context ctxt, VarEnv env)
      throws Failure {
        // Look for the definition of this function
        Fundef def = ctxt.find(name);
        if (def==null) {
          throw new Failure("Cannot find function \"" + name + "\"");
        }
        return def.checkCall(args, ctxt, env);
    }

    /** Type check this expression in places where it is used as a statement.
     *  We override this method in Call to deal with methods that
     *  return void.
     */
    void checkExpr(Context ctxt, VarEnv env)
      throws Failure { typeCall(ctxt, env); }

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
        a.emit("TODO", "code for call");
    }
}
