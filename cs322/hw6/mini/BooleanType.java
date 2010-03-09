package mini;

import compiler.*;
import compiler.Failure;

/** A representation for the boolean type.
 */
public class BooleanType extends Type {

    /** Generate a printable description of this type.
     */
    public String toString() {
        return "boolean";
    }

    /** Test to determine whether this type is equal to another.
     */
    public boolean equal(Type that) {
        return (that instanceof BooleanType);
    }
}
