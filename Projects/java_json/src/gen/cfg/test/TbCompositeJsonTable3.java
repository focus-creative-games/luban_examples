
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import com.google.gson.JsonElement;


public final class TbCompositeJsonTable3 {
    private final cfg.test.CompositeJsonTable3 _data;

    public final cfg.test.CompositeJsonTable3 data() { return _data; }

    public TbCompositeJsonTable3(JsonElement __json__) {
        int n = __json__.getAsJsonArray().size();
        if (n != 1) throw new bright.serialization.SerializationException("table mode=one, but size != 1");
        _data = new cfg.test.CompositeJsonTable3(__json__.getAsJsonArray().get(0).getAsJsonObject());
    }


     public int getA() { return _data.a; }
     public int getB() { return _data.b; }

    public void resolve(java.util.HashMap<String, Object> _tables) {
        _data.resolve(_tables);
    }

}