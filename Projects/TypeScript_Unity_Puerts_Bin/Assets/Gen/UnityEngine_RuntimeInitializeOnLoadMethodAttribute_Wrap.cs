using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_RuntimeInitializeOnLoadMethodAttribute_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.RuntimeInitializeOnLoadMethodAttribute();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RuntimeInitializeOnLoadMethodAttribute), result);
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.RuntimeInitializeLoadType)argHelper0.GetInt32(false);
                        var result = new UnityEngine.RuntimeInitializeOnLoadMethodAttribute(Arg0);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RuntimeInitializeOnLoadMethodAttribute), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.RuntimeInitializeOnLoadMethodAttribute constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_loadType(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.RuntimeInitializeOnLoadMethodAttribute;
                var result = obj.loadType;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
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
                    {"loadType", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_loadType, Setter = null} },
                    
                }
            };
        }
        
    }
}