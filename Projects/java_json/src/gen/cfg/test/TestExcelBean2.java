
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


/**
 * 这是个测试excel结构
 */
public final class TestExcelBean2 extends AbstractBean {
    public TestExcelBean2(JsonObject _buf) { 
        y1 = _buf.get("y1").getAsInt();
        y2 = _buf.get("y2").getAsString();
        y3 = _buf.get("y3").getAsFloat();
    }

    public static TestExcelBean2 deserialize(JsonObject _buf) {
            return new cfg.test.TestExcelBean2(_buf);
    }

    /**
     * 最高品质
     */
    public final int y1;
    /**
     * 黑色的
     */
    public final String y2;
    /**
     * 蓝色的
     */
    public final float y3;

    public static final int __ID__ = -1738345159;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "y1:" + y1 + ","
        + "y2:" + y2 + ","
        + "y3:" + y3 + ","
        + "}";
    }
}
