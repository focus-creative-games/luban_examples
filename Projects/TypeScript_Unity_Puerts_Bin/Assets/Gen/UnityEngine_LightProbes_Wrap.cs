using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_LightProbes_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.LightProbes constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Tetrahedralize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.LightProbes.Tetrahedralize();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_TetrahedralizeAsync(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.LightProbes.TetrahedralizeAsync();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetInterpolatedProbe(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Vector3>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Renderer>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rendering.SphericalHarmonicsL2>(true);
                        UnityEngine.LightProbes.GetInterpolatedProbe(Arg0,Arg1,out Arg2);
                        
                        argHelper2.SetByRefValue(Arg2);
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CalculateInterpolatedLightAndOcclusionProbes(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rendering.SphericalHarmonicsL2[]), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector4[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Vector3[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rendering.SphericalHarmonicsL2[]>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Vector4[]>(false);
                        UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Rendering.SphericalHarmonicsL2>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Rendering.SphericalHarmonicsL2>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to CalculateInterpolatedLightAndOcclusionProbes");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_positions(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.LightProbes;
                var result = obj.positions;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_bakedProbes(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.LightProbes;
                var result = obj.bakedProbes;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_bakedProbes(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.LightProbes;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.bakedProbes = argHelper.Get<UnityEngine.Rendering.SphericalHarmonicsL2[]>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_count(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.LightProbes;
                var result = obj.count;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_cellCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.LightProbes;
                var result = obj.cellCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void A_tetrahedralizationCompleted(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.LightProbes.tetrahedralizationCompleted += argHelper.Get<System.Action>(false);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void R_tetrahedralizationCompleted(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.LightProbes.tetrahedralizationCompleted -= argHelper.Get<System.Action>(false);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void A_needsRetetrahedralization(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.LightProbes.needsRetetrahedralization += argHelper.Get<System.Action>(false);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void R_needsRetetrahedralization(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.LightProbes.needsRetetrahedralization -= argHelper.Get<System.Action>(false);
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
                    { new Puerts.MethodKey {Name = "Tetrahedralize", IsStatic = true},  F_Tetrahedralize },
                    { new Puerts.MethodKey {Name = "TetrahedralizeAsync", IsStatic = true},  F_TetrahedralizeAsync },
                    { new Puerts.MethodKey {Name = "GetInterpolatedProbe", IsStatic = true},  F_GetInterpolatedProbe },
                    { new Puerts.MethodKey {Name = "CalculateInterpolatedLightAndOcclusionProbes", IsStatic = true},  F_CalculateInterpolatedLightAndOcclusionProbes },
                    { new Puerts.MethodKey {Name = "add_tetrahedralizationCompleted", IsStatic = true}, A_tetrahedralizationCompleted},
                    { new Puerts.MethodKey {Name = "remove_tetrahedralizationCompleted", IsStatic = true}, R_tetrahedralizationCompleted},
                    { new Puerts.MethodKey {Name = "add_needsRetetrahedralization", IsStatic = true}, A_needsRetetrahedralization},
                    { new Puerts.MethodKey {Name = "remove_needsRetetrahedralization", IsStatic = true}, R_needsRetetrahedralization},
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"positions", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_positions, Setter = null} },
                    {"bakedProbes", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_bakedProbes, Setter = S_bakedProbes} },
                    {"count", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_count, Setter = null} },
                    {"cellCount", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_cellCount, Setter = null} },
                    
                }
            };
        }
        
    }
}