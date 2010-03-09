package mini;

import compiler.*;
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

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        for (int i=0; i<used; i++) {
           env = intros[i].check(def, type, ctxt, env);
        }
        def.returns = false;
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        for (int i=0; i<used; i++) {
            intros[i].compile(a);
        }
    }
}
