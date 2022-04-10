using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_Graphics_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.Graphics();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.Graphics), result);
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
        private static void F_ClearRandomWriteTargets(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.Graphics.ClearRandomWriteTargets();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ExecuteCommandBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rendering.CommandBuffer>(false);
                        UnityEngine.Graphics.ExecuteCommandBuffer(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ExecuteCommandBufferAsync(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rendering.CommandBuffer>(false);
                        var Arg1 = (UnityEngine.Rendering.ComputeQueueType)argHelper1.GetInt32(false);
                        UnityEngine.Graphics.ExecuteCommandBufferAsync(Arg0,Arg1);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_SetRenderTarget(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTexture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.CubemapFace)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = (UnityEngine.CubemapFace)argHelper3.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = (UnityEngine.CubemapFace)argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTexture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTargetSetup), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTargetSetup>(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTexture>(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTexture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.CubemapFace)argHelper2.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.SetRenderTarget(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SetRenderTarget");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_SetRandomWriteTarget(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        UnityEngine.Graphics.SetRandomWriteTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.SetRandomWriteTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        UnityEngine.Graphics.SetRandomWriteTarget(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg2 = argHelper2.GetBoolean(false);
                        UnityEngine.Graphics.SetRandomWriteTarget(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.GetBoolean(false);
                        UnityEngine.Graphics.SetRandomWriteTarget(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SetRandomWriteTarget");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CopyTexture(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.Graphics.CopyTexture(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.CopyTexture(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Texture>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.CopyTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 12)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Texture>(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.GetInt32(false);
                        var Arg11 = argHelper11.GetInt32(false);
                        UnityEngine.Graphics.CopyTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to CopyTexture");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ConvertTexture(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.Graphics.ConvertTexture(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = UnityEngine.Graphics.ConvertTexture(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to ConvertTexture");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CreateAsyncGraphicsFence(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.Rendering.SynchronisationStage)argHelper0.GetInt32(false);
                        var result = UnityEngine.Graphics.CreateAsyncGraphicsFence(Arg0);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = UnityEngine.Graphics.CreateAsyncGraphicsFence();
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to CreateAsyncGraphicsFence");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_CreateGraphicsFence(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.Rendering.GraphicsFenceType)argHelper0.GetInt32(false);
                        var Arg1 = (UnityEngine.Rendering.SynchronisationStageFlags)argHelper1.GetInt32(false);
                        var result = UnityEngine.Graphics.CreateGraphicsFence(Arg0,Arg1);
                        
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
        private static void F_WaitOnAsyncGraphicsFence(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rendering.GraphicsFence), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rendering.GraphicsFence>(false);
                        UnityEngine.Graphics.WaitOnAsyncGraphicsFence(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rendering.GraphicsFence), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rendering.GraphicsFence>(false);
                        var Arg1 = (UnityEngine.Rendering.SynchronisationStage)argHelper1.GetInt32(false);
                        UnityEngine.Graphics.WaitOnAsyncGraphicsFence(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to WaitOnAsyncGraphicsFence");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawTexture(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Color>(false);
                        var Arg8 = argHelper8.Get<UnityEngine.Material>(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Material>(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Color>(false);
                        var Arg8 = argHelper8.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Material>(false);
                        var Arg7 = argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Color>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.Graphics.DrawTexture(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawTexture");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawMeshNow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshNow(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        UnityEngine.Graphics.DrawMeshNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        UnityEngine.Graphics.DrawMeshNow(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawMeshNow");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawMesh(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        var Arg10 = argHelper10.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Transform>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Transform>(false);
                        var Arg10 = argHelper10.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Transform>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 12)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Transform>(false);
                        var Arg11 = argHelper11.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Transform>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        var Arg11 = argHelper11.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Transform), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Transform>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector3), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Quaternion), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector3>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Quaternion>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Material>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Camera>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Matrix4x4>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawMesh(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawMesh");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawMeshInstanced(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 12)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        var Arg11 = argHelper11.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetBoolean(false);
                        var Arg7 = argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.Get<UnityEngine.Camera>(false);
                        var Arg9 = (UnityEngine.Rendering.LightProbeUsage)argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetBoolean(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetBoolean(false);
                        var Arg7 = argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetBoolean(false);
                        var Arg7 = argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Matrix4x4[]), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Matrix4x4[]>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(System.Collections.Generic.List<UnityEngine.Matrix4x4>), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<System.Collections.Generic.List<UnityEngine.Matrix4x4>>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg5 = (UnityEngine.Rendering.ShadowCastingMode)argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.GetBoolean(false);
                        var Arg7 = argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.Get<UnityEngine.Camera>(false);
                        var Arg9 = (UnityEngine.Rendering.LightProbeUsage)argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstanced(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawMeshInstanced");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawMeshInstancedProcedural(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 12)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        var Arg11 = argHelper11.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        var Arg10 = (UnityEngine.Rendering.LightProbeUsage)argHelper10.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg6 = (UnityEngine.Rendering.ShadowCastingMode)argHelper6.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedProcedural(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawMeshInstancedProcedural");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawMeshInstancedIndirect(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 13)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    var argHelper12 = new Puerts.ArgumentHelper((int)data, isolate, info, 12);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper12.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        var Arg11 = (UnityEngine.Rendering.LightProbeUsage)argHelper11.GetInt32(false);
                        var Arg12 = argHelper12.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11,Arg12);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper12.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.LightProbeProxyVolume), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        var Arg11 = (UnityEngine.Rendering.LightProbeUsage)argHelper11.GetInt32(false);
                        var Arg12 = argHelper12.Get<UnityEngine.LightProbeProxyVolume>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11,Arg12);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 12)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    var argHelper11 = new Puerts.ArgumentHelper((int)data, isolate, info, 11);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        var Arg11 = (UnityEngine.Rendering.LightProbeUsage)argHelper11.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper11.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        var Arg11 = (UnityEngine.Rendering.LightProbeUsage)argHelper11.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10,Arg11);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        var Arg10 = argHelper10.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Mesh), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Mesh>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Bounds>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GraphicsBuffer>(false);
                        UnityEngine.Graphics.DrawMeshInstancedIndirect(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawMeshInstancedIndirect");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawProceduralNow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralNow(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralNow(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawProceduralNow");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawProceduralIndirectNow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GraphicsBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = (UnityEngine.MeshTopology)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirectNow(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawProceduralIndirectNow");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawProcedural(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        var Arg10 = argHelper10.GetInt32(false);
                        UnityEngine.Graphics.DrawProcedural(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawProcedural");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DrawProceduralIndirect(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        var Arg9 = argHelper9.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        var Arg8 = argHelper8.GetBoolean(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        
                        
                        return;
                    }
                }
                
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg7 = (UnityEngine.Rendering.ShadowCastingMode)argHelper7.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 7)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    var argHelper6 = new Puerts.ArgumentHelper((int)data, isolate, info, 6);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.MaterialPropertyBlock>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Camera>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.ComputeBuffer>(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 11)
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
                    var argHelper10 = new Puerts.ArgumentHelper((int)data, isolate, info, 10);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Bounds), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GraphicsBuffer), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.ComputeBuffer), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Camera), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.MaterialPropertyBlock), false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper10.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Material>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Bounds>(false);
                        var Arg2 = (UnityEngine.MeshTopology)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GraphicsBuffer>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.ComputeBuffer>(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Camera>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.MaterialPropertyBlock>(false);
                        var Arg8 = (UnityEngine.Rendering.ShadowCastingMode)argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.GetBoolean(false);
                        var Arg10 = argHelper10.GetInt32(false);
                        UnityEngine.Graphics.DrawProceduralIndirect(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9,Arg10);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawProceduralIndirect");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Blit(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Vector2>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Vector2>(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Material>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 6)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    var argHelper5 = new Puerts.ArgumentHelper((int)data, isolate, info, 5);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Vector2>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Vector2>(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var Arg5 = argHelper5.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Material>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        UnityEngine.Graphics.Blit(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Blit");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BlitMultiTap(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen >= 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetParams<UnityEngine.Vector2>(info, 3, paramLen);
                        UnityEngine.Graphics.BlitMultiTap(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen >= 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderTexture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Material), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Texture>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderTexture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Material>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetParams<UnityEngine.Vector2>(info, 4, paramLen);
                        UnityEngine.Graphics.BlitMultiTap(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to BlitMultiTap");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_activeColorGamut(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.activeColorGamut;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_activeTier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.activeTier;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_activeTier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.Graphics.activeTier = (UnityEngine.Rendering.GraphicsTier)argHelper.GetInt32(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_preserveFramebufferAlpha(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.preserveFramebufferAlpha;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_minOpenGLESVersion(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.minOpenGLESVersion;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_activeColorBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.activeColorBuffer;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_activeDepthBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.Graphics.activeDepthBuffer;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
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
                    { new Puerts.MethodKey {Name = "ClearRandomWriteTargets", IsStatic = true},  F_ClearRandomWriteTargets },
                    { new Puerts.MethodKey {Name = "ExecuteCommandBuffer", IsStatic = true},  F_ExecuteCommandBuffer },
                    { new Puerts.MethodKey {Name = "ExecuteCommandBufferAsync", IsStatic = true},  F_ExecuteCommandBufferAsync },
                    { new Puerts.MethodKey {Name = "SetRenderTarget", IsStatic = true},  F_SetRenderTarget },
                    { new Puerts.MethodKey {Name = "SetRandomWriteTarget", IsStatic = true},  F_SetRandomWriteTarget },
                    { new Puerts.MethodKey {Name = "CopyTexture", IsStatic = true},  F_CopyTexture },
                    { new Puerts.MethodKey {Name = "ConvertTexture", IsStatic = true},  F_ConvertTexture },
                    { new Puerts.MethodKey {Name = "CreateAsyncGraphicsFence", IsStatic = true},  F_CreateAsyncGraphicsFence },
                    { new Puerts.MethodKey {Name = "CreateGraphicsFence", IsStatic = true},  F_CreateGraphicsFence },
                    { new Puerts.MethodKey {Name = "WaitOnAsyncGraphicsFence", IsStatic = true},  F_WaitOnAsyncGraphicsFence },
                    { new Puerts.MethodKey {Name = "DrawTexture", IsStatic = true},  F_DrawTexture },
                    { new Puerts.MethodKey {Name = "DrawMeshNow", IsStatic = true},  F_DrawMeshNow },
                    { new Puerts.MethodKey {Name = "DrawMesh", IsStatic = true},  F_DrawMesh },
                    { new Puerts.MethodKey {Name = "DrawMeshInstanced", IsStatic = true},  F_DrawMeshInstanced },
                    { new Puerts.MethodKey {Name = "DrawMeshInstancedProcedural", IsStatic = true},  F_DrawMeshInstancedProcedural },
                    { new Puerts.MethodKey {Name = "DrawMeshInstancedIndirect", IsStatic = true},  F_DrawMeshInstancedIndirect },
                    { new Puerts.MethodKey {Name = "DrawProceduralNow", IsStatic = true},  F_DrawProceduralNow },
                    { new Puerts.MethodKey {Name = "DrawProceduralIndirectNow", IsStatic = true},  F_DrawProceduralIndirectNow },
                    { new Puerts.MethodKey {Name = "DrawProcedural", IsStatic = true},  F_DrawProcedural },
                    { new Puerts.MethodKey {Name = "DrawProceduralIndirect", IsStatic = true},  F_DrawProceduralIndirect },
                    { new Puerts.MethodKey {Name = "Blit", IsStatic = true},  F_Blit },
                    { new Puerts.MethodKey {Name = "BlitMultiTap", IsStatic = true},  F_BlitMultiTap },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"activeColorGamut", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_activeColorGamut, Setter = null} },
                    {"activeTier", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_activeTier, Setter = S_activeTier} },
                    {"preserveFramebufferAlpha", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_preserveFramebufferAlpha, Setter = null} },
                    {"minOpenGLESVersion", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_minOpenGLESVersion, Setter = null} },
                    {"activeColorBuffer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_activeColorBuffer, Setter = null} },
                    {"activeDepthBuffer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_activeDepthBuffer, Setter = null} },
                    
                }
            };
        }
        
    }
}