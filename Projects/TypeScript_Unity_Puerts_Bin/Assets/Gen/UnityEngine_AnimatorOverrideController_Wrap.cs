using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_AnimatorOverrideController_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.AnimatorOverrideController();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.AnimatorOverrideController), result);
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RuntimeAnimatorController), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RuntimeAnimatorController>(false);
                        var result = new UnityEngine.AnimatorOverrideController(Arg0);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.AnimatorOverrideController), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.AnimatorOverrideController constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetOverrides(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<System.Collections.Generic.KeyValuePair<UnityEngine.AnimationClip, UnityEngine.AnimationClip>>>(false);
                        obj.GetOverrides(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_ApplyOverrides(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.IList<System.Collections.Generic.KeyValuePair<UnityEngine.AnimationClip, UnityEngine.AnimationClip>>>(false);
                        obj.ApplyOverrides(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_runtimeAnimatorController(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                var result = obj.runtimeAnimatorController;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_runtimeAnimatorController(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.runtimeAnimatorController = argHelper.Get<UnityEngine.RuntimeAnimatorController>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_overridesCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                var result = obj.overridesCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void GetItem(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                var keyHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                
                if (keyHelper.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                {
                    var key = keyHelper.GetString(false);
                    var result = obj[key];
                    Puerts.ResultHelper.Set((int)data, isolate, info, result);
                    return;
                }
                
                if (keyHelper.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.AnimationClip), false, false))
                {
                    var key = keyHelper.Get<UnityEngine.AnimationClip>(false);
                    var result = obj[key];
                    Puerts.ResultHelper.Set((int)data, isolate, info, result);
                    return;
                }
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void SetItem(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.AnimatorOverrideController;
                var keyHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                var valueHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                
                if (keyHelper.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                {
                    var key = keyHelper.GetString(false);
                    obj[key] = valueHelper.Get<UnityEngine.AnimationClip>(false);
                    return;
                }
                
                if (keyHelper.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.AnimationClip), false, false))
                {
                    var key = keyHelper.Get<UnityEngine.AnimationClip>(false);
                    obj[key] = valueHelper.Get<UnityEngine.AnimationClip>(false);
                    return;
                }
                
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
                    { new Puerts.MethodKey {Name = "GetOverrides", IsStatic = false},  M_GetOverrides },
                    { new Puerts.MethodKey {Name = "ApplyOverrides", IsStatic = false},  M_ApplyOverrides },
                    { new Puerts.MethodKey {Name = "get_Item", IsStatic = false}, GetItem },
                    { new Puerts.MethodKey {Name = "set_Item", IsStatic = false}, SetItem},
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"runtimeAnimatorController", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_runtimeAnimatorController, Setter = S_runtimeAnimatorController} },
                    {"overridesCount", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_overridesCount, Setter = null} },
                    
                }
            };
        }
        
    }
}