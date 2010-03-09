class System {
  // No fields, since System_0 had ".long 4"
  static void out(int x);
}

class Fork {
  int a;
  Spoon b;

  // This appears to be a constructor: take in two args, create an object,
  // assign the args into the newly created object, then return the object.
  //static Fork ping(int a1, int a2) {
  static Fork ping(int a1, Spoon a2) {
    Fork f;
    f = new Fork();

    f.a = a1;
    f.b = a2;

    return f;
  }

  int bat(Fork f, Fork g) {
  //int bat(int a, int b) {
    this.a = this.a * 2;
     if (this.a > 8) {
       return 4;
     }

     // TODO: access these (they need to be on the stack)
     // In other words, system.out is not the correct call. But
     // at least it is accessing the correct arguments.
     System.out(f.a);
     //System.out(f.b);
     //b.a = f.a;
     //b.b = f.b;
     
     //TODO left off here, stuck in the L0 loop, emailed MPJ
     //b.b = 8;
     //b.a = 7;

    return 4;
  }
}

class Knife {
  // TODO unknown return value
  // TODO unknown arg value
  int bat(int a) {
    return a;
  }
}

class Spoon extends Knife {
  static int c;

  static void begin(int first) {
    // Sets the class static:
    // movl %eax,v_Spoon_c
    c = first;
  }

  static int retr() {
    return c;
  }

  // the first arg is needed, but isn't used.
  static Spoon pong(int a) {
    c = c+1;
    return new Spoon();
  }
}

class Main {
  // No fields: ".long 4"
  static void main() {
    Fork f;
    int a;
    Spoon.begin(4*5+3);
    f = Fork.ping(3, Spoon.pong(2));
    // TODO: another Fork.ping goes here. (What args?)
    //  the second ping() should be assigned to f, not the first.

    a = 0;
    while (a < 6) {
      // TODO: reference items in this order: 2, 1, f, a
      // TODO: this subsection is incorrect.
      // system.out lines are just here to reference the correct vars.
      //System.out(f);
      f.a = f.a * f.a;

      // TODO: it seems like we need to call f.a() as a method,
      //   even though f.a is a field.

      // TODO: this section is correct, matches the bottom of the loop.
      System.out(f.a);
      a = a+1;
    }
    int b;
    System.out(Spoon.retr());

  }
}
