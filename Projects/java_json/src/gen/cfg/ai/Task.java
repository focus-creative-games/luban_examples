
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


public abstract class Task extends cfg.ai.FlowNode {
    public Task(JsonObject _buf) { 
        super(_buf);
        ignoreRestartSelf = _buf.get("ignore_restart_self").getAsBoolean();
    }

    public static Task deserialize(JsonObject _buf) {
        switch (_buf.get("$type").getAsString()) {
            case "UeWait": return new cfg.ai.UeWait(_buf);
            case "UeWaitBlackboardTime": return new cfg.ai.UeWaitBlackboardTime(_buf);
            case "MoveToTarget": return new cfg.ai.MoveToTarget(_buf);
            case "ChooseSkill": return new cfg.ai.ChooseSkill(_buf);
            case "MoveToRandomLocation": return new cfg.ai.MoveToRandomLocation(_buf);
            case "MoveToLocation": return new cfg.ai.MoveToLocation(_buf);
            case "DebugPrint": return new cfg.ai.DebugPrint(_buf);
            default: throw new SerializationException();
        }
    }

    public final boolean ignoreRestartSelf;


    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "decorators:" + decorators + ","
        + "services:" + services + ","
        + "ignoreRestartSelf:" + ignoreRestartSelf + ","
        + "}";
    }
}

