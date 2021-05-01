using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_GeometryUtility_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.GeometryUtility();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.GeometryUtility), result);
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CalculateFrustumPlanes(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Camera>(false);
                        var result = UnityEngine.GeometryUtility.CalculateFrustumPlanes(Arg0);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Matrix4x4>(false);
                        var result = UnityEngine.GeometryUtility.CalculateFrustumPlanes(Arg0);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Plane[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Camera>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Plane[]>(false);
                        UnityEngine.GeometryUtility.CalculateFrustumPlanes(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Plane[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Matrix4x4>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Plane[]>(false);
                        UnityEngine.GeometryUtility.CalculateFrustumPlanes(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to CalculateFrustumPlanes");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CalculateBounds(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Vector3[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var result = UnityEngine.GeometryUtility.CalculateBounds(Arg0,Arg1);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_TryCreatePlaneFromPolygon(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Vector3[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Plane>(true);
                        var result = UnityEngine.GeometryUtility.TryCreatePlaneFromPolygon(Arg0,out Arg1);
                        
                        argHelper1.SetByRefValue(Arg1);
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_TestPlanesAABB(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Plane[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var result = UnityEngine.GeometryUtility.TestPlanesAABB(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        
                    }
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
                    { new Puerts.MethodKey {Name = "CalculateFrustumPlanes", IsStatic = true},  F_CalculateFrustumPlanes },
                    { new Puerts.MethodKey {Name = "CalculateBounds", IsStatic = true},  F_CalculateBounds },
                    { new Puerts.MethodKey {Name = "TryCreatePlaneFromPolygon", IsStatic = true},  F_TryCreatePlaneFromPolygon },
                    { new Puerts.MethodKey {Name = "TestPlanesAABB", IsStatic = true},  F_TestPlanesAABB },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    
                }
            };
        }
        
    }
}