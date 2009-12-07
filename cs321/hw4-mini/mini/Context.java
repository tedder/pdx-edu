package mini;

import compiler.Failure;
import compiler.Handler;
import compiler.Phase;

/** Represents a static analysis context; in general, this might
 *  provide information about the complete program that we are
 *  analysing, but in the Mini compiler, this is just used as a
 *  way to access error handling functionality.
 */
public class Context extends Phase {
    public Context(Handler handler) {
        super(handler);
    }
}
