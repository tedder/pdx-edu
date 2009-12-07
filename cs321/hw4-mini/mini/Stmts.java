package mini;

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

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        for (int i=0; i<used; i++) {
            stmts[i].indent(out, n);
        }
    }

    /** Output a description of this node (with id n), including a
     *  link to its parent node (with id p) and returning the next
     *  available node id.
     */
    public int toDot(DotOutput dot, int p, int n) {
        for (int i=0; i<used; i++) {
            n = stmts[i].toDot(dot, p, n);
        }
        return n;
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return toDot(dot, n, dot.node("Stmts", n));
    }

    /** Check that this statement is valid, taking the current environment
     *  as an argument and returning a possibly modified environment as a
     *  result.
     */
    public VarEnv check(Context ctxt, VarEnv env) {
        for (int i=0; i<used; i++) {
           env = stmts[i].check(ctxt, env);
        }
        return env;
    }
}
