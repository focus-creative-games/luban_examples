using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_CustomGridBrushAttribute_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.CustomGridBrushAttribute();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.CustomGridBrushAttribute), result);
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetBoolean(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.GetBoolean(false);
                        var Arg3 = argHelper3.GetString(false);
                        var result = new UnityEngine.CustomGridBrushAttribute(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.CustomGridBrushAttribute), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.CustomGridBrushAttribute constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hideAssetInstances(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CustomGridBrushAttribute;
                var result = obj.hideAssetInstances;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hideDefaultInstance(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CustomGridBrushAttribute;
                var result = obj.hideDefaultInstance;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_defaultBrush(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CustomGridBrushAttribute;
                var result = obj.defaultBrush;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_defaultName(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CustomGridBrushAttribute;
                var result = obj.defaultName;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
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
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"hideAssetInstances", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hideAssetInstances, Setter = null} },
                    {"hideDefaultInstance", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hideDefaultInstance, Setter = null} },
                    {"defaultBrush", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_defaultBrush, Setter = null} },
                    {"defaultName", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_defaultName, Setter = null} },
                    
                }
            };
        }
        
    }
}