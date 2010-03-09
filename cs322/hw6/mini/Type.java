package mini;

import compiler.*;
import compiler.Failure;

/** A representation for types in the Mini language.
 */
public abstract class Type {

    /** Generate a printable description of this type.
     */
    public abstract String toString();

    /** A constant that represents the int type.
     */
    public static final Type INT = new IntType();

    /** A constant that represents the boolean type.
     */
    public static final Type BOOLEAN = new BooleanType();

    /** A constant that represents the double type.
     */
    public static final Type DOUBLE = new DoubleType();

    /** Test to determine whether this type is an array type or not,
     *  returning the element type of an array type or null for any
     *  other type.
     */
    public Type elementType() {
        // Default implementation: not an array
        return null;
    }

    /** Test to determine whether this type is equal to another.
     */
    public abstract boolean equal(Type that);
}
