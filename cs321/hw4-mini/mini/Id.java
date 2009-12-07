package mini;

import compiler.Failure;

/** Abstract syntax for identifiers/variables.
 */
class Id extends Expr {
    String name;
    Id(String name) {
        this.name = name;
    }

    /** Print an indented description of this abstract syntax node,
     *  including a name for the node itself at the specified level
     *  of indentation, plus more deeply indented descriptions of
     *  any child nodes.
     */
    public void indent(IndentOutput out, int n) {
        out.indent(n, "Id, " + name);
    }

    /** Output a description of this node (with id n), returning the
     *  next available node id after this node and all of its children
     *  have been output.
     */
    public int toDot(DotOutput dot, int n) {
        return dot.node("Id, " + name, n);
    }

    /** Test to see if two identifiers have the same name.
     */
    public boolean equals(Id that) {
        return this.name.equals(that.name);
      }

    /** Return the type of value that will be produced when this
     *  expression is evaluated.
     */
    public Type typeOf(Context ctxt, VarEnv env)
      throws Failure {
        VarEnv ve = VarEnv.find(this, env);
        if (ve==null) {
          throw new Failure("The variable " + name + " is not in scope");
        }
        return ve.getType();
    }

    /** Return a printable version of this identifier.
     */
    public String toString() {
        return name;
    }
}
