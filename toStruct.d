
   T toStructX(T) (string[string] a)
   {
      T t;
      bool[string] bookkeep;
      foreach (i, m; t.tupleof) {
         string key = T.tupleof[i].stringof;
         if (key !in a) {
            stderr.writefln ("missing key <%s>", key);
            continue;
         }
         t.tupleof[i] = a[key].to!(typeof (m));
         bookkeep[key] = true;
      }
      foreach (x, y; a)
         if (x !in bookkeep)
            stderr.writefln ("excess key-value pair <%s>:<%s>", x, y);
      return t;
   }