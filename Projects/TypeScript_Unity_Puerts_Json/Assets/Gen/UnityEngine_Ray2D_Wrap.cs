using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_Ray2D_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Vector2>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var result = new UnityEngine.Ray2D(Arg0,Arg1);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.Ray2D), result);
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.Ray2D();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.Ray2D), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.Ray2D constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetPoint(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetFloat(false);
                        var result = obj.GetPoint(Arg0);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        Puerts.Utils.SetSelf((int)data, self, obj);
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_ToString(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = obj.ToString();
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        Puerts.Utils.SetSelf((int)data, self, obj);
                        return;
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var result = obj.ToString(Arg0);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        Puerts.Utils.SetSelf((int)data, self, obj);
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.IFormatProvider), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.Get<System.IFormatProvider>(false);
                        var result = obj.ToString(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        Puerts.Utils.SetSelf((int)data, self, obj);
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to ToString");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_origin(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.origin;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_origin(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.origin = argHelper.Get<UnityEngine.Vector2>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_direction(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.direction;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_direction(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Ray2D)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.direction = argHelper.Get<UnityEngine.Vector2>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
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
                    { new Puerts.MethodKey {Name = "GetPoint", IsStatic = false},  M_GetPoint },
                    { new Puerts.MethodKey {Name = "ToString", IsStatic = false},  M_ToString },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"origin", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_origin, Setter = S_origin} },
                    {"direction", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_direction, Setter = S_direction} },
                    
                }
            };
        }
        
    }
}