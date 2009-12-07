package mini;

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

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        super.indent(out, n);
        init.indent(out, n+1);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return init.toDot(dot, n,
               super.toDot(dot, n));
    }

    /** Check this variable introduction, given the type for
     *  the associated variable declaration and the initial
     *  environment, and then return the modified environment.
     */
    public VarEnv check(Type type, Context ctxt, VarEnv env) {
        // Check that initializer has correct type:
        try {
            if (!init.typeOf(ctxt, env).equal(type)) {
                ctxt.report(new Failure("initializer has wrong type"));
            }
        } catch (Failure f) {
            ctxt.report(f);
        }
        return new VarEnv(id, type, env);
    }
}
