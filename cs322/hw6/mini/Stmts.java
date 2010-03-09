package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for lists of statements, either as part of
 *  a block or as a top-level program.
 */
public class Stmts {

    /** Holds a list of statements.  Only the first "used" elements
     *  of the array hold valid statements; remaining slots are used
     *  for expansion.   If we need to add more statements than the
     *  array can contain, we expand the array by copying over its
     *  elements into a new, larger array and then replacing the old
     *  array with the new.
     */
    private Stmt[] stmts = new Stmt[2];

    /** Records the number of slots in the stmts array that are
     *  currently being used.
     */
    private int used = 0;

    /** Add a statement to a block, expanding the underlying array
     *  as necessary to make space.
     */
    public Stmts addStmt(Stmt stmt) {
        if (used>=stmts.length) {
            Stmt[] newStmts = new Stmt[2*stmts.length];
            for (int i=0; i<stmts.length; i++) {
                newStmts[i] = stmts[i];
            }
            stmts = newStmts;
        }
        stmts[used++] = stmt;
        return this;
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Fundef def, Context ctxt, VarEnv env)
      throws Failure {
        def.returns = false;
        for (int i=0; i<used; i++) {
           env = stmts[i].check(def, ctxt, env);
        }
        return env;
    }

    /** Generate code for executing this statement.
     */
    public void compile(Assembly a) {
        for (int i=0; i<used; i++) {
            stmts[i].compile(a);
        }
    }
}
