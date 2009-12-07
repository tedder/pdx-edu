package mini;

import compiler.Failure;

/** Abstract syntax for expressions used as statements.
 */
class ExprStmt extends Stmt {
    private Expr exp;
    ExprStmt(Expr exp) {
        this.exp = exp;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "ExprStmt");
        exp.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return exp.toDot(dot, n,
               dot.node("ExprStmt", n));
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        try {
            // type check the expression, but discard the result.
            exp.typeOf(ctxt, env);
        } catch (Failure f) {
            // report any error that occured while checking the expression.
            ctxt.report(f);
        }
        return env;
    }
}
