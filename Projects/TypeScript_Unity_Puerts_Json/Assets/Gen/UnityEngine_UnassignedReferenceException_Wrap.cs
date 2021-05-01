using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_UnassignedReferenceException_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.UnassignedReferenceException();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.UnassignedReferenceException), result);
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var result = new UnityEngine.UnassignedReferenceException(Arg0);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.UnassignedReferenceException), result);
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Exception), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        var Arg1 = argHelper1.Get<System.Exception>(false);
                        var result = new UnityEngine.UnassignedReferenceException(Arg0,Arg1);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.UnassignedReferenceException), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.UnassignedReferenceException constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
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
                    
                }
            };
        }
        
    }
}