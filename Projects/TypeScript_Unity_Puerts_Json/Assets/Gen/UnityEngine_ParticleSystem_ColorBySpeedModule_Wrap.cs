using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_ParticleSystem_ColorBySpeedModule_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.ParticleSystem.ColorBySpeedModule constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_enabled(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.enabled;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_enabled(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.enabled = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_color(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.color;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_color(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.color = argHelper.Get<UnityEngine.ParticleSystem.MinMaxGradient>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_range(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.range;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_range(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ColorBySpeedModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.range = argHelper.Get<UnityEngine.Vector2>(false);
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
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"enabled", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_enabled, Setter = S_enabled} },
                    {"color", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_color, Setter = S_color} },
                    {"range", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_range, Setter = S_range} },
                    
                }
            };
        }
        
    }
}