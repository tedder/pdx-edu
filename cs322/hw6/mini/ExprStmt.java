package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for expressions used as statements.
 */
class ExprStmt extends Stmt {
    private Expr exp;
    ExprStmt(Expr exp) {
        this.exp = exp;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        // type check the expression, but discard the result.
        exp.checkExpr(ctxt, env);
        def.returns = false;
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        exp.compileExpr(a, 0);
    }
}
