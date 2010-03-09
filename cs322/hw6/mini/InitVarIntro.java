package mini;

import compiler.*;
import compiler.Failure;

/** Represents a variable introduction with a single variable
 *  name and an initializer.
 */
public class InitVarIntro extends VarIntro {
    private Expr init;
    public InitVarIntro(Id id, Expr init) {
        super(id);
        this.init = init;
    }

    /** Check this variable introduction, given the type for
     *  the associated variable declaration and the initial
     *  environment, and then return the modified environment.
     */
    public VarEnv check(Fundef def, Type type, Context ctxt, VarEnv env) {
        // Check that initializer has correct type:
        try {
            if (!init.typeOf(ctxt, env).equal(type)) {
                ctxt.report(new Failure("initializer has wrong type"));
            }
        } catch (Failure f) {
            ctxt.report(f);
        }
        return ve = def.extend(id, type, env);
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        // Evaluate the initializer expression and save the result:
        init.compileExpr(a, 0);
        a.emit("movl", a.reg(0), a.varRef(ve));
    }
}
