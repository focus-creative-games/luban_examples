
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class ExecuteTimeStatistic extends cfg.ai.Service {
    public ExecuteTimeStatistic(ByteBuf _buf) { 
        super(_buf);
    }

    public static ExecuteTimeStatistic deserialize(ByteBuf _buf) {
            return new cfg.ai.ExecuteTimeStatistic(_buf);
    }


    public static final int __ID__ = 990693812;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "}";
    }
}

