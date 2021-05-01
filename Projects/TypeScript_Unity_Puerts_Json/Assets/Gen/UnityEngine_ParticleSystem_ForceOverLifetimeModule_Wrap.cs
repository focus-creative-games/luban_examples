using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_ParticleSystem_ForceOverLifetimeModule_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.ParticleSystem.ForceOverLifetimeModule constructor");
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
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
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
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
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
        private static void G_x(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.x;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_x(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.x = argHelper.Get<UnityEngine.ParticleSystem.MinMaxCurve>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_y(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.y;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_y(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.y = argHelper.Get<UnityEngine.ParticleSystem.MinMaxCurve>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_z(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.z;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_z(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.z = argHelper.Get<UnityEngine.ParticleSystem.MinMaxCurve>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_xMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.xMultiplier;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_xMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.xMultiplier = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_yMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.yMultiplier;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_yMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.yMultiplier = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_zMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.zMultiplier;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_zMultiplier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.zMultiplier = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_space(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.space;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_space(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.space = (UnityEngine.ParticleSystemSimulationSpace)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_randomized(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.randomized;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_randomized(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.ParticleSystem.ForceOverLifetimeModule)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.randomized = argHelper.GetBoolean(false);
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
                    {"x", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_x, Setter = S_x} },
                    {"y", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_y, Setter = S_y} },
                    {"z", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_z, Setter = S_z} },
                    {"xMultiplier", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_xMultiplier, Setter = S_xMultiplier} },
                    {"yMultiplier", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_yMultiplier, Setter = S_yMultiplier} },
                    {"zMultiplier", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_zMultiplier, Setter = S_zMultiplier} },
                    {"space", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_space, Setter = S_space} },
                    {"randomized", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_randomized, Setter = S_randomized} },
                    
                }
            };
        }
        
    }
}