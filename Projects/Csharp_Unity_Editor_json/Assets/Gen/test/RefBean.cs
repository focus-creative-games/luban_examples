
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

namespace cfg.test
{

public sealed class RefBean :  test.RefDynamicBase 
{
    public RefBean()
    {
            arr = new System.Collections.Generic.List<int>();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["x"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  x = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["arr"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } arr = new System.Collections.Generic.List<int>(); foreach(JSONNode __e0 in _fieldJson.Children) { int __v0;  if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0;  arr.Add(__v0); }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["x"] = new JSONNumber(x);
        }
        {

            if (arr == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["arr"] = __cjson0; foreach(var _e0 in arr) { JSONNode __v0; __v0 = new JSONNumber(_e0); __cjson0.Add(__v0); } }
        }
    }

    public static RefBean LoadJsonRefBean(SimpleJSON.JSONNode _json)
    {
        RefBean obj = new test.RefBean();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonRefBean(RefBean _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public System.Collections.Generic.List<int> arr;

}

}

