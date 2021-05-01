using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_ParticlePhysicsExtensions_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.ParticlePhysicsExtensions constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetSafeCollisionEventSize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var result = UnityEngine.ParticlePhysicsExtensions.GetSafeCollisionEventSize(Arg0);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetCollisionEvents(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GameObject>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.ParticleCollisionEvent>>(false);
                        var result = UnityEngine.ParticlePhysicsExtensions.GetCollisionEvents(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetSafeTriggerParticlesSize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = (UnityEngine.ParticleSystemTriggerEventType)argHelper1.GetInt32(false);
                        var result = UnityEngine.ParticlePhysicsExtensions.GetSafeTriggerParticlesSize(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetTriggerParticles(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ParticleSystem), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = (UnityEngine.ParticleSystemTriggerEventType)argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>>(false);
                        var result = UnityEngine.ParticlePhysicsExtensions.GetTriggerParticles(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ParticleSystem), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.ParticleSystem.ColliderData), true, true))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = (UnityEngine.ParticleSystemTriggerEventType)argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ParticleSystem.ColliderData>(true);
                        var result = UnityEngine.ParticlePhysicsExtensions.GetTriggerParticles(Arg0,Arg1,Arg2,out Arg3);
                        
                        argHelper3.SetByRefValue(Arg3);
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to GetTriggerParticles");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_SetTriggerParticles(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ParticleSystem), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = (UnityEngine.ParticleSystemTriggerEventType)argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.ParticlePhysicsExtensions.SetTriggerParticles(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ParticleSystem), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.ParticleSystem>(false);
                        var Arg1 = (UnityEngine.ParticleSystemTriggerEventType)argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.ParticleSystem.Particle>>(false);
                        UnityEngine.ParticlePhysicsExtensions.SetTriggerParticles(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SetTriggerParticles");
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
                    { new Puerts.MethodKey {Name = "GetSafeCollisionEventSize", IsStatic = true},  F_GetSafeCollisionEventSize },
                    { new Puerts.MethodKey {Name = "GetCollisionEvents", IsStatic = true},  F_GetCollisionEvents },
                    { new Puerts.MethodKey {Name = "GetSafeTriggerParticlesSize", IsStatic = true},  F_GetSafeTriggerParticlesSize },
                    { new Puerts.MethodKey {Name = "GetTriggerParticles", IsStatic = true},  F_GetTriggerParticles },
                    { new Puerts.MethodKey {Name = "SetTriggerParticles", IsStatic = true},  F_SetTriggerParticles },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    
                }
            };
        }
        
    }
}