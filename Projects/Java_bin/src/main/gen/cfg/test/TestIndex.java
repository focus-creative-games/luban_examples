
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import bright.serialization.*;



public final class TestIndex extends  bright.serialization.AbstractBean 
{
    public TestIndex(ByteBuf _buf)
    { 
        id = _buf.readInt();
        {int n = Math.min(_buf.readSize(), _buf.size());eles = new java.util.ArrayList<cfg.test.DemoType1>(n);for(var i = 0 ; i < n ; i++) { cfg.test.DemoType1 _e;  _e = cfg.test.DemoType1.deserializeDemoType1(_buf); eles.add(_e);}}
        for(cfg.test.DemoType1 _v : eles)
        {
            eles_Index.put(_v.x1, _v); 
        }
    }

    public TestIndex(int id, java.util.ArrayList<cfg.test.DemoType1> eles )
    {
        this.id = id;
        this.eles = eles;
        for(cfg.test.DemoType1 _v : eles)
        {
            eles_Index.put(_v.x1, _v); 
        }
    }

    public static TestIndex deserializeTestIndex(ByteBuf _buf)
    {
        return new TestIndex(_buf);
    }

    public final int id;
    public final java.util.ArrayList<cfg.test.DemoType1> eles;
    public final java.util.HashMap<Integer, cfg.test.DemoType1> eles_Index = new java.util.HashMap<>();

    public static final int ID = 1941154020;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void serialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public void deserialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    public void resolve(java.util.HashMap<String, Object> _tables)
    {
            for(cfg.test.DemoType1 _e : eles) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString()
    {
        return "{ "
        + "id:" + id + ","
        + "eles:" + eles + ","
        + "}";
    }
}
