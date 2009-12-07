package mini;

import compiler.Failure;

/** A representation for variable declarations.
 */
public class VarDecl extends Stmt {
    private Type type;
    private VarIntro[] intros;
    private int used;

    /** Construct a variable declaration with a given type and
     *  a specific variable introduction.
     */
    public VarDecl(Type type, VarIntro intro) {
        this.type   = type;
        this.intros = new VarIntro[] { intro };
        this.used   = 1;
    }

    /** Extend this variable declaration with an additional variable
     *  introduction.
     */
    public VarDecl addIntro(VarIntro intro) {
        if (used>=intros.length) {
            VarIntro[] newIntros = new VarIntro[2*intros.length];
            for (int i=0; i<intros.length; i++) {
                newIntros[i] = intros[i];
            }
            intros = newIntros;
        }
        intros[used++] = intro;
        return this;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "VarDecl " + type);
        for (int i=0; i<used; i++) {
            intros[i].indent(out, n+1);
        }
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        int m = dot.node(type.toString(), n);
        for (int i=0; i<used; i++) {
            m = intros[i].toDot(dot, n, m);
        }
        return m;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        for (int i=0; i<used; i++) {
           env = intros[i].check(type, ctxt, env);
        }
        return env;
    }
}
