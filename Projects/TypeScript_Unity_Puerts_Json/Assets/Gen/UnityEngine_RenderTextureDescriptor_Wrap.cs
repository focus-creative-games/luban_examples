using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_RenderTextureDescriptor_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.RenderTextureFormat)argHelper2.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1,Arg2);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.RenderTextureFormat)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                }
                
                if (paramLen == 5)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    var argHelper4 = new Puerts.ArgumentHelper((int)data, isolate, info, 4);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.RenderTextureFormat)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.GetInt32(false);
                        var result = new UnityEngine.RenderTextureDescriptor(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.RenderTextureDescriptor();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTextureDescriptor), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.RenderTextureDescriptor constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_width(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.width;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_width(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.width = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_height(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.height;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_height(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.height = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_msaaSamples(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.msaaSamples;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_msaaSamples(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.msaaSamples = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_volumeDepth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.volumeDepth;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_volumeDepth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.volumeDepth = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_mipCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.mipCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_mipCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.mipCount = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.graphicsFormat;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_graphicsFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.graphicsFormat = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_stencilFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.stencilFormat;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_stencilFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.stencilFormat = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_colorFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.colorFormat;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_colorFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.colorFormat = (UnityEngine.RenderTextureFormat)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_sRGB(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.sRGB;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_sRGB(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.sRGB = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depthBufferBits(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depthBufferBits;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_depthBufferBits(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.depthBufferBits = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_dimension(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.dimension;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_dimension(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.dimension = (UnityEngine.Rendering.TextureDimension)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_shadowSamplingMode(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.shadowSamplingMode;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_shadowSamplingMode(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.shadowSamplingMode = (UnityEngine.Rendering.ShadowSamplingMode)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_vrUsage(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.vrUsage;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_vrUsage(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.vrUsage = (UnityEngine.VRTextureUsage)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_flags(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.flags;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_memoryless(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.memoryless;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_memoryless(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.memoryless = (UnityEngine.RenderTextureMemoryless)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_useMipMap(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.useMipMap;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_useMipMap(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.useMipMap = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_autoGenerateMips(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.autoGenerateMips;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_autoGenerateMips(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.autoGenerateMips = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_enableRandomWrite(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.enableRandomWrite;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_enableRandomWrite(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.enableRandomWrite = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_bindMS(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.bindMS;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_bindMS(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.bindMS = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_useDynamicScale(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.useDynamicScale;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_useDynamicScale(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTextureDescriptor)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.useDynamicScale = argHelper.GetBoolean(false);
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
                    {"width", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_width, Setter = S_width} },
                    {"height", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_height, Setter = S_height} },
                    {"msaaSamples", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_msaaSamples, Setter = S_msaaSamples} },
                    {"volumeDepth", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_volumeDepth, Setter = S_volumeDepth} },
                    {"mipCount", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_mipCount, Setter = S_mipCount} },
                    {"graphicsFormat", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_graphicsFormat, Setter = S_graphicsFormat} },
                    {"stencilFormat", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_stencilFormat, Setter = S_stencilFormat} },
                    {"colorFormat", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_colorFormat, Setter = S_colorFormat} },
                    {"sRGB", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_sRGB, Setter = S_sRGB} },
                    {"depthBufferBits", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depthBufferBits, Setter = S_depthBufferBits} },
                    {"dimension", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_dimension, Setter = S_dimension} },
                    {"shadowSamplingMode", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_shadowSamplingMode, Setter = S_shadowSamplingMode} },
                    {"vrUsage", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_vrUsage, Setter = S_vrUsage} },
                    {"flags", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_flags, Setter = null} },
                    {"memoryless", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_memoryless, Setter = S_memoryless} },
                    {"useMipMap", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_useMipMap, Setter = S_useMipMap} },
                    {"autoGenerateMips", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_autoGenerateMips, Setter = S_autoGenerateMips} },
                    {"enableRandomWrite", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_enableRandomWrite, Setter = S_enableRandomWrite} },
                    {"bindMS", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_bindMS, Setter = S_bindMS} },
                    {"useDynamicScale", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_useDynamicScale, Setter = S_useDynamicScale} },
                    
                }
            };
        }
        
    }
}