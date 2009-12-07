package mini;

import compiler.Failure;

/** Abstract syntax for print statements.
 */
class Print extends Stmt {
    private Expr exp;
    Print(Expr exp) {
        this.exp = exp;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Print");
        exp.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return exp.toDot(dot, n,
               dot.node("Print", n));
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        try {
            if (!exp.typeOf(ctxt, env).equal(Type.INT)) {
               ctxt.report(new Failure("print requires integer argument"));
            }
        } catch (Failure f) {
            // report any error that occured while checking the expression.
            ctxt.report(f);
        }
        return env;
    }
}
