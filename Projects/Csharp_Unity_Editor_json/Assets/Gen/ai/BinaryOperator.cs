
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Collections.Generic;
using SimpleJSON;
using Luban;

namespace cfg.ai
{

public sealed class BinaryOperator :  ai.KeyQueryOperator 
{
    public BinaryOperator()
    {
            oper = ai.EOperator.IS_EQUAL_TO;
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["oper"];
            if (_fieldJson != null)
            {
                if(_fieldJson.IsString) { oper = (ai.EOperator)System.Enum.Parse(typeof(ai.EOperator), _fieldJson); } else if(_fieldJson.IsNumber) { oper = (ai.EOperator)(int)_fieldJson; } else { throw new SerializationException(); }  
            }
        }
        
        { 
            var _fieldJson = _json["data"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  data = ai.KeyData.LoadJsonKeyData(_fieldJson);
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["oper"] = new JSONNumber((int)oper);
        }
        {

            if (data == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["data"] = __bjson0; ai.KeyData.SaveJsonKeyData(data, __bjson0); }
        }
    }

    public static BinaryOperator LoadJsonBinaryOperator(SimpleJSON.JSONNode _json)
    {
        BinaryOperator obj = new ai.BinaryOperator();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonBinaryOperator(BinaryOperator _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public ai.EOperator oper;

    public ai.KeyData data;

}

}

