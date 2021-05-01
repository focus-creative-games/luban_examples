using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_WWWForm_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.WWWForm();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.WWWForm), result);
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_AddField(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.WWWForm;
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.GetString(false);
                        obj.AddField(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        obj.AddField(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Text.Encoding), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<System.Text.Encoding>(false);
                        obj.AddField(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to AddField");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_AddBinaryData(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.WWWForm;
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(byte[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.Get<byte[]>(false);
                        obj.AddBinaryData(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(byte[]), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.Get<byte[]>(false);
                        var Arg2 = argHelper2.GetString(false);
                        obj.AddBinaryData(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(byte[]), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.Get<byte[]>(false);
                        var Arg2 = argHelper2.GetString(false);
                        var Arg3 = argHelper3.GetString(false);
                        obj.AddBinaryData(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to AddBinaryData");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_headers(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.WWWForm;
                var result = obj.headers;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_data(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.WWWForm;
                var result = obj.data;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        
        
        public static Puerts.TypeRegisterInfo GetRegisterInfo()
        {
            return new Puerts.TypeRegisterInfo()
            {
                BlittableCopy = false,
                Constructor = Constructor,
                Methods = new System.Collections.Generic.Dictionary<Puerts.MethodKey, Puerts.V8FunctionCallback>()
                {
                    { new Puerts.MethodKey {Name = "AddField", IsStatic = false},  M_AddField },
                    { new Puerts.MethodKey {Name = "AddBinaryData", IsStatic = false},  M_AddBinaryData },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"headers", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_headers, Setter = null} },
                    {"data", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_data, Setter = null} },
                    
                }
            };
        }
        
    }
}