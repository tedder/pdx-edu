package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for binary expressions.
 */
abstract class BinExpr extends Expr {
    protected Expr left;
    protected Expr right;
    BinExpr(Expr left, Expr right) {
        this.left = left;
        this.right = right;
    
        // Compute the depth of this expression:
        depth = 1 + Math.max(left.getDepth(), right.getDepth());
    }

    /** Return the depth of this expression as a measure of how complicated
     *  the expression is / how many registers will be needed to evaluate it.
     */
    int getDepth() {
        // Return the depth value that was computed by the constructor
        return depth;
    }

    /** Records the depth of this expression; this value is computed
     *  at the time the constructor is called and then saved here so
     *  that it can be accessed without further computation later on.
     */
    protected int depth;

    /** Generate code to evalute both of the expressions left and right,
     *  changing the order of evaluation if possible/beneficial to
     *  reduce the number of registers that are required.  The return
     *  boolean indicates the order in which the two expressions have
     *  been evaluated and stored in registers.  A true result indicates
     *  that reg(free) contains the value of left and reg(free+1) contains
     *  the value of right.  A false result indicates that the order has
     *  been reversed.  In both cases, reg(free+1) will need to be
     *  unspilled once the value in that register has been used.
     */
    boolean compileBin(Assembly a, Expr left, Expr right, int free) {
        if (left.getDepth()>right.getDepth() || right.getDepth()>=DEEP) {
            left.compileExpr(a, free);
            a.spill(free+1);
            right.compileExpr(a, free+1);
            return true;
        } else {
            right.compileExpr(a, free);
            a.spill(free+1);
            left.compileExpr(a, free+1);
            return false;
        }
    }

    /** Generate code to evaluate a binary expression using the specified
     *  opcode, op, to combine the results of the two subexpressions.  If
     *  the order in which the arguments is reversed to reduce register
     *  pressure, then an additional exchange instruction is emitted to
     *  restore the correct order.
     */
    void compileOp(Assembly a, String op, int free) {
        if (!compileBin(a, left, right, free)) {
            a.emit("xchgl", a.reg(free+1), a.reg(free));
        }
        a.emit(op, a.reg(free+1), a.reg(free));
        a.unspill(free+1);
    }

    /** A variant of compileOp that can be used when the operation that is
     *  being performed on the two subexpressions is commutative; in this
     *  case, there is no need to insert an exchange instruction, even if
     *  the order of evaluation was reversed.
     */
    void compileCommutativeOp(Assembly a, String op, int free) {
        compileBin(a, left, right, free);
        a.emit(op, a.reg(free+1), a.reg(free));
        a.unspill(free+1);
    }

    /** Generate code for a comparision operation.  The resulting
     *  code evaluates both left and right arguments, and then does
     *  a comparision, setting the flags ready for the appropriate
     *  conditional jump.  The free+1 register is both spilled and
     *  unspilled in this code, which means that the caller does
     *  not need to handle spilling.
     */
    void compileCond(Assembly a, int free) {
        if (compileBin(a, left, right, free)) {
            a.emit("cmpl", a.reg(free+1), a.reg(free));
        } else {
            a.emit("cmpl", a.reg(free), a.reg(free+1));
        }
        a.unspill(free+1);
     }

    /** Generate code for a comparison that computes either 1 (for
     *  true) or 0 (for false) in the specified free register.  The
     *  given "test" instruction is used to trigger a branch in the
     *  true case.
     */
    void compileCondValue(Assembly a, String test, int free) {
        String lab1 = a.newLabel();  // jump here if true
        String lab2 = a.newLabel();  // jump here when done
        compileCond(a, free);        // compare the two arguments
        a.emit(test, lab1);          // jump if condition is true
        a.emit("movl", a.immed(0), a.reg(free));
        a.emit("jmp",  lab2);
        a.emitLabel(lab1);
        a.emit("movl", a.immed(1), a.reg(free));
        a.emitLabel(lab2);           // continue with value in free
    }
}
