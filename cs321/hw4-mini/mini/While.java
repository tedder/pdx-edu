package mini;

import compiler.Failure;

/** Abstract syntax for while statements.
 */
class While extends Stmt {
    private Expr test;
    private Stmt body;
    While(Expr test, Stmt body) {
        this.test = test;
        this.body = body;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "While");
        test.indent(out, n+1);
        body.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return body.toDot(dot, n,
               test.toDot(dot, n,
               dot.node("While", n)));
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        try {
            if (!test.typeOf(ctxt, env).equal(Type.BOOLEAN)) {
               ctxt.report(new Failure("Boolean test expected in while loop"));
            }
        } catch (Failure f) {
            // report any error that occured while checking the expression.
            ctxt.report(f);
        }
        // check body, but discard any modified environment that it produces.
        body.check(ctxt, env);
        return env;
    }
}
