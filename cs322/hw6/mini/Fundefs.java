package mini;

import compiler.*;
import compiler.Failure;

/** Represents a list of function definitions.
 */
class Fundefs {
    private Fundef def;
    private Fundefs rest;
    Fundefs(Fundef def, Fundefs rest) {
        this.def = def;
        this.rest = rest;
    }

    /** Search for the definition of a function with a particular
     *  name in a given list of function definitions, returning a
     *  null result if no matching function is found.
     */
    static Fundef find(Id fun, Fundefs defs) {
        for (; defs!=null; defs=defs.rest) {
            if (defs.def.isCalled(fun)) {
                return defs.def;
            }
        }
        return null;
    }

    /** Check the definitions for each function in a given list
     *  of function definitions.
     */
    static void check(Context ctxt, Fundefs defs)
      throws Failure {
        Id     mainId  = new Id(Assembly.entry);
        Fundef mainFun = Fundefs.find(mainId, defs);
        if (mainFun==null) {
           throw new Failure("program does not define a " + mainId + " function");
        }
        if (mainFun.getFormals()!=null) {
           throw new Failure(mainId + " function should not have any arguments");
        }
        for (; defs!=null; defs=defs.rest) {
            Fundef def = defs.def;
            Id     fun = def.getFun();
            if (find(fun, defs.rest)!=null) {
                throw new Failure("program contains multiple definitions for function " + fun);
            }
            defs.def.check(ctxt);
        }
    }

    /** Generate code for this list of functions.
     */
    static void compile(Assembly a, Fundefs defs) {
        for (; defs!=null; defs=defs.rest) {
            defs.def.compile(a);
        }
    }
}
