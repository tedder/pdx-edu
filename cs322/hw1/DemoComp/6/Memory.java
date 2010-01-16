import java.util.Hashtable;

class Memory {
  private Hashtable store = new Hashtable();
  int load(String name) {
    Object i = store.get(name);
    return (i!=null) ? ((Integer)i).intValue() : 0;
  }

  void store(String name, int val) {
    store.put(name, new Integer(val));
  }
}

