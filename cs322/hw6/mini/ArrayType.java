package mini;

import compiler.*;
import compiler.Failure;

/** A representation for array types.
 */
public class ArrayType extends Type {
    private Type element;
    public ArrayType(Type element) {
        this.element = element;
    }

    /** Generate a printable description of this type.
     */
    public String toString() {
        return element.toString() + "[]";
    }

    /** Test to determine whether this type is an array type or not,
     *  returning the element type of an array type or null for any
     *  other type.
     */
    public Type elementType() {
        // This is an array type, so return the element type.
        return element;
    }

    /** Test to determine whether this type is equal to another.
     */
    public boolean equal(Type that) {
        Type te = that.elementType();
        return te!=null && element.equal(te);
    }
}
