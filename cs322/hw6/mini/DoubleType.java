package mini;

import compiler.*;
import compiler.Failure;

/** A representation for the double type.
 */
public class DoubleType extends Type {

    /** Generate a printable description of this type.
     */
    public String toString() {
        return "double";
    }

    /** Test to determine whether this type is equal to another.
     */
    public boolean equal(Type that) {
        return (that instanceof DoubleType);
    }
}
