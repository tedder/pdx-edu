package mini;

import compiler.*;
import compiler.Failure;

/** A representation for the int type.
 */
public class IntType extends Type {

    /** Generate a printable description of this type.
     */
    public String toString() {
        return "int";
    }

    /** Test to determine whether this type is equal to another.
     */
    public boolean equal(Type that) {
        return (that instanceof IntType);
    }
}
