package mini;

import compiler.*;
import compiler.Failure;
import compiler.Handler;
import compiler.Phase;

/** Represents a static analysis context; this is used to provide
 *  access to the full list of functions defined in the current
 *  program as well as a way to access error handling functionality.
 */
public class Context extends Phase {

    /** Holds the list of functions in this program.
     */
    private Fundefs defs;
    public Context(Handler handler, Fundefs defs) {
        super(handler);
        this.defs = defs;
    }

    /** Search for the definition of a function with a paticular
     *  name in the list that is stored in this context.
     */
    public Fundef find(Id name) {
        return Fundefs.find(name, defs);
      }
}
