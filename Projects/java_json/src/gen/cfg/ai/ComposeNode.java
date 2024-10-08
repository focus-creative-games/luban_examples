
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


public abstract class ComposeNode extends cfg.ai.FlowNode {
    public ComposeNode(JsonObject _buf) { 
        super(_buf);
    }

    public static ComposeNode deserialize(JsonObject _buf) {
        switch (_buf.get("$type").getAsString()) {
            case "Sequence": return new cfg.ai.Sequence(_buf);
            case "Selector": return new cfg.ai.Selector(_buf);
            case "SimpleParallel": return new cfg.ai.SimpleParallel(_buf);
            default: throw new SerializationException();
        }
    }



    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "decorators:" + decorators + ","
        + "services:" + services + ","
        + "}";
    }
}

