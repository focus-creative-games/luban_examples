using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_CanvasRenderer_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.CanvasRenderer();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.CanvasRenderer), result);
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
        private static void M_SetColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Color>(false);
                        obj.SetColor(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = obj.GetColor();
                        
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
        private static void M_EnableRectClipping(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        obj.EnableRectClipping(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_DisableRectClipping(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    
                    
                    
                    {
                        
                        obj.DisableRectClipping();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_SetMaterial(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        obj.SetMaterial(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        obj.SetMaterial(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SetMaterial");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetMaterial(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var result = obj.GetMaterial(Arg0);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = obj.GetMaterial();
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to GetMaterial");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_SetPopMaterial(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        obj.SetPopMaterial(Arg0,Arg1);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetPopMaterial(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var result = obj.GetPopMaterial(Arg0);
                        
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
        private static void M_SetTexture(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        obj.SetTexture(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_SetAlphaTexture(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        obj.SetAlphaTexture(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_SetMesh(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        obj.SetMesh(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_Clear(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    
                    
                    
                    {
                        
                        obj.Clear();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetAlpha(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = obj.GetAlpha();
                        
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
        private static void M_SetAlpha(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetFloat(false);
                        obj.SetAlpha(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_GetInheritedAlpha(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = obj.GetInheritedAlpha();
                        
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
        private static void F_SplitUIVertexStreams(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 8)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    var argHelper7 = new Puerts.ArgumentHelper((int)data, isolate, info, 7);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<int>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg7 = argHelper7.Get<System.Collections.Generic.List<int>>(false);
                        UnityEngine.CanvasRenderer.SplitUIVertexStreams(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 10)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    var argHelper7 = new Puerts.ArgumentHelper((int)data, isolate, info, 7);
                    var argHelper8 = new Puerts.ArgumentHelper((int)data, isolate, info, 8);
                    var argHelper9 = new Puerts.ArgumentHelper((int)data, isolate, info, 9);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<int>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg7 = argHelper7.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg8 = argHelper8.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg9 = argHelper9.Get<System.Collections.Generic.List<int>>(false);
                        UnityEngine.CanvasRenderer.SplitUIVertexStreams(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SplitUIVertexStreams");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CreateUIVertexStream(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 8)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    var argHelper7 = new Puerts.ArgumentHelper((int)data, isolate, info, 7);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<int>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg7 = argHelper7.Get<System.Collections.Generic.List<int>>(false);
                        UnityEngine.CanvasRenderer.CreateUIVertexStream(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 10)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    var argHelper7 = new Puerts.ArgumentHelper((int)data, isolate, info, 7);
                    var argHelper8 = new Puerts.ArgumentHelper((int)data, isolate, info, 8);
                    var argHelper9 = new Puerts.ArgumentHelper((int)data, isolate, info, 9);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<int>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg7 = argHelper7.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg8 = argHelper8.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg9 = argHelper9.Get<System.Collections.Generic.List<int>>(false);
                        UnityEngine.CanvasRenderer.CreateUIVertexStream(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to CreateUIVertexStream");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_AddUIVertexStream(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        UnityEngine.CanvasRenderer.AddUIVertexStream(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 9)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    var argHelper7 = new Puerts.ArgumentHelper((int)data, isolate, info, 7);
                    var argHelper8 = new Puerts.ArgumentHelper((int)data, isolate, info, 8);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.UIVertex>), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Color32>), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector3>), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Vector4>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<System.Collections.Generic.List<UnityEngine.UIVertex>>(false);
                        var Arg1 = argHelper1.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg2 = argHelper2.Get<System.Collections.Generic.List<UnityEngine.Color32>>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg4 = argHelper4.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg5 = argHelper5.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg6 = argHelper6.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        var Arg7 = argHelper7.Get<System.Collections.Generic.List<UnityEngine.Vector3>>(false);
                        var Arg8 = argHelper8.Get<System.Collections.Generic.List<UnityEngine.Vector4>>(false);
                        UnityEngine.CanvasRenderer.AddUIVertexStream(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to AddUIVertexStream");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasPopInstruction(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.hasPopInstruction;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_hasPopInstruction(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.hasPopInstruction = argHelper.GetBoolean(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_materialCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.materialCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_materialCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.materialCount = argHelper.GetInt32(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_popMaterialCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.popMaterialCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_popMaterialCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.popMaterialCount = argHelper.GetInt32(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_absoluteDepth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.absoluteDepth;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasMoved(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.hasMoved;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_cullTransparentMesh(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.cullTransparentMesh;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_cullTransparentMesh(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.cullTransparentMesh = argHelper.GetBoolean(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasRectClipping(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.hasRectClipping;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_relativeDepth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.relativeDepth;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_cull(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.cull;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_cull(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.cull = argHelper.GetBoolean(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_clippingSoftness(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var result = obj.clippingSoftness;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_clippingSoftness(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = Puerts.Utils.GetSelf((int)data, self) as UnityEngine.CanvasRenderer;
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.clippingSoftness = argHelper.Get<UnityEngine.Vector2>(false);
                
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
                    { new Puerts.MethodKey {Name = "SetColor", IsStatic = false},  M_SetColor },
                    { new Puerts.MethodKey {Name = "GetColor", IsStatic = false},  M_GetColor },
                    { new Puerts.MethodKey {Name = "EnableRectClipping", IsStatic = false},  M_EnableRectClipping },
                    { new Puerts.MethodKey {Name = "DisableRectClipping", IsStatic = false},  M_DisableRectClipping },
                    { new Puerts.MethodKey {Name = "SetMaterial", IsStatic = false},  M_SetMaterial },
                    { new Puerts.MethodKey {Name = "GetMaterial", IsStatic = false},  M_GetMaterial },
                    { new Puerts.MethodKey {Name = "SetPopMaterial", IsStatic = false},  M_SetPopMaterial },
                    { new Puerts.MethodKey {Name = "GetPopMaterial", IsStatic = false},  M_GetPopMaterial },
                    { new Puerts.MethodKey {Name = "SetTexture", IsStatic = false},  M_SetTexture },
                    { new Puerts.MethodKey {Name = "SetAlphaTexture", IsStatic = false},  M_SetAlphaTexture },
                    { new Puerts.MethodKey {Name = "SetMesh", IsStatic = false},  M_SetMesh },
                    { new Puerts.MethodKey {Name = "Clear", IsStatic = false},  M_Clear },
                    { new Puerts.MethodKey {Name = "GetAlpha", IsStatic = false},  M_GetAlpha },
                    { new Puerts.MethodKey {Name = "SetAlpha", IsStatic = false},  M_SetAlpha },
                    { new Puerts.MethodKey {Name = "GetInheritedAlpha", IsStatic = false},  M_GetInheritedAlpha },
                    { new Puerts.MethodKey {Name = "SplitUIVertexStreams", IsStatic = true},  F_SplitUIVertexStreams },
                    { new Puerts.MethodKey {Name = "CreateUIVertexStream", IsStatic = true},  F_CreateUIVertexStream },
                    { new Puerts.MethodKey {Name = "AddUIVertexStream", IsStatic = true},  F_AddUIVertexStream },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"hasPopInstruction", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hasPopInstruction, Setter = S_hasPopInstruction} },
                    {"materialCount", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_materialCount, Setter = S_materialCount} },
                    {"popMaterialCount", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_popMaterialCount, Setter = S_popMaterialCount} },
                    {"absoluteDepth", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_absoluteDepth, Setter = null} },
                    {"hasMoved", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hasMoved, Setter = null} },
                    {"cullTransparentMesh", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_cullTransparentMesh, Setter = S_cullTransparentMesh} },
                    {"hasRectClipping", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hasRectClipping, Setter = null} },
                    {"relativeDepth", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_relativeDepth, Setter = null} },
                    {"cull", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_cull, Setter = S_cull} },
                    {"clippingSoftness", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_clippingSoftness, Setter = S_clippingSoftness} },
                    
                }
            };
        }
        
    }
}