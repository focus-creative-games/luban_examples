using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_ScalableBufferManager_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.ScalableBufferManager constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ResizeBuffers(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetFloat(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        UnityEngine.ScalableBufferManager.ResizeBuffers(Arg0,Arg1);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_widthScaleFactor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.ScalableBufferManager.widthScaleFactor;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_heightScaleFactor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.ScalableBufferManager.heightScaleFactor;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
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
                    { new Puerts.MethodKey {Name = "ResizeBuffers", IsStatic = true},  F_ResizeBuffers },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"widthScaleFactor", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_widthScaleFactor, Setter = null} },
                    {"heightScaleFactor", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_heightScaleFactor, Setter = null} },
                    
                }
            };
        }
        
    }
}