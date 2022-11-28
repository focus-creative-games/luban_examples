import bright.serialization.ByteBuf;
import proto.test.*;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class Main {

    public static void main(String[] args) {

        System.out.println("== load succ ==");
        AllType t = new AllType();
        t.x1 = true;
        t.x8 = 1234567;
        t.a1 = "abc";
        t.a2 = new byte[] {1,2};
        t.a3 = new Simple();
        t.a4 = new Child32();
        t.b1 = new int[]{3};
        t.b2 = new Simple[]{ new Simple()};
        t.b3 = new Dyn[]{new Child31()};
        t.c1 = new ArrayList<>();
        t.c1.add(10);
        t.c2 = new ArrayList<>();
        t.c2.add(new Simple());
        t.c3 = new ArrayList<>();
        t.c3.add(new Child31());
        t.d1 = new HashSet<>();
        t.d1.add(1);
        t.e1 = new HashMap<>();
        t.e1.put(1, 2);
        t.e2 = new HashMap<>();
        t.e2.put(10, new Simple());
        t.e3 = new HashMap<>();
        t.e3.put(5, new Child31());

        ByteBuf buf = new ByteBuf();
        t.serialize(buf);
        System.out.println(t);
        System.out.println("size:=" + buf.size());
        AllType t2 = AllType.deserializeAllType(buf);
        ByteBuf buf2 = new ByteBuf();
        t2.serialize(buf2);
        System.out.println(t2);
        System.out.println("size:=" + buf2.size());
    }

}
