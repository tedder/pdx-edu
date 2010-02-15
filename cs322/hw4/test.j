class System {
  // No fields, since System_0 had ".long 4"
  static void out(int x);
}

class Main {
  // No fields: ".long 4"
  static void main();
}

class Spoon extends Knife {
  static int c;

  static void begin(int a) {
    // TODO need to set a to the global:
    // movl %eax,v_Spoon_c
    c = a;
  }

  static int retr(int a) {
    return c;
  }

  static void pong() {
    c = c+1;
    new Spoon();
  }
}

class Knife {
  // TODO unknown return value
  // TODO unknown arg value
  int bat(int a) {
    return a;
  }
}

class Fork {
  int a;
  int b;

  // TODO unknown return value
  int bat(Fork f, Fork b) {
    f.a = f.a * 2;
     while (f.a < 8);

    return 4;
  }

  // This appears to be a constructor: take in two args, create an object,
  // assign the args into the newly created object, then return the object.
  static Fork ping(int a1, int a2) {
    Fork f;
    f = new Fork();

    f.a = a1;
    f.b = a2;

    return f;
  }
}
