package mini;

import compiler.*;
import compiler.Failure;

/** Represents a single function definition.
 */
class Fundef {
    private Type type;
    private Id fun;
    private Formals formals;
    private Stmts body;
    Fundef(Type type, Id fun, Formals formals, Stmts body) {
        this.type = type;
        this.fun = fun;
        this.formals = formals;
        this.body = body;
    }

    /** Return the name of this function definition.
     */
    Id getFun() {
        return fun;
    }

    /** Return the list of formal parameters associated with this
     *  function definition.
     */
    Formals getFormals() {
        return formals;
    }

    /** Test to see if this function's name matches the
     *  specified identifier.
     */
    boolean isCalled(Id id) {
        return fun.equals(id);
    }

    /** Type check a call to this function with a given list
     *  of arguments.
     */
    Type checkCall(Args args, Context ctxt, VarEnv env)
      throws Failure {
        Formals fs = formals;
        while (fs!=null && args!=null) {
            Type argType = args.getArg().typeOf(ctxt, env);
            Formal f     = formals.getFormal();
            if (!argType.equal(f.getType())) {
               throw new Failure("wrong type for argument "
                                   + f.getName());
            }
            fs   = fs.getRest();
            args = args.getRest();
        }
        if (args!=null) {
            throw new Failure("Call to function " + fun
                              + " has too many arguments");
        } else if (fs!=null) {
            throw new Failure("Call to function " + fun
                              + " has too few arguments");
        }
        return type;
    }

    /** Tracks the number of bytes of storage that are needed
     *  for local variables.
     */
    int localBytes = 0;

    /** Return an extended environment, computing an appropriate
     *  program slot for the corresponding variable.
     */
    public VarEnv extend(Id id, Type type, VarEnv env) {
        // Find offset of previous local variable on stack frame,
        // if there is one.
        int offset = (env==null || env.getOffset()>=0)
                     ? 0
                     : env.getOffset();
        // Make space for a new local variable:
        offset -= Assembly.WORDSIZE;
        // Update localBytes if necessary:
        if (-offset > localBytes) {
            localBytes = (-offset);
        }
        return new VarEnv(id, type, offset, env);
    }

    /** Flag to indicate if this function returns.
     */
    public boolean returns = false;

    /** Determine whether the specified expression is valid as a
     *  return result for this function; the expression can/should
     *  be null for a void function.
     */
    VarEnv checkReturn(Expr expr, Context ctxt, VarEnv env)
      throws Failure {
        if (expr!=null) {
            if (type==null) {
                throw new Failure("void function should not return a value");
            } else if (!expr.typeOf(ctxt, env).equal(type)) {
                throw new Failure("return expression has wrong type");
            }
        } else if (type!=null) {
            throw new Failure("return value is required");
        }
        returns = true;
        return env;
    }

    /** Check this function definition in the given context.
     */
    void check(Context ctxt)
      throws Failure {
        body.check(this, ctxt, Formals.buildEnv(formals));
        if (!returns && type!=null) {
            throw new Failure("function does not return");
        }
    }

    /** Generate code for this function.
     */
    void compile(Assembly a) {
        a.emitLabel(a.name(fun.toString()));
        a.emitPrologue(localBytes);
        body.compile(a);
        if (!returns) {
            a.emitEpilogue();
        }
    }
}
