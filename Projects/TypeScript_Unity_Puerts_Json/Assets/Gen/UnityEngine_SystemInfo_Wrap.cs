using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_SystemInfo_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.SystemInfo();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.SystemInfo), result);
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
        private static void F_SupportsRenderTextureFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.RenderTextureFormat)argHelper0.GetInt32(false);
                        var result = UnityEngine.SystemInfo.SupportsRenderTextureFormat(Arg0);
                        
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
        private static void F_SupportsBlendingOnRenderTextureFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.RenderTextureFormat)argHelper0.GetInt32(false);
                        var result = UnityEngine.SystemInfo.SupportsBlendingOnRenderTextureFormat(Arg0);
                        
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
        private static void F_SupportsTextureFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.TextureFormat)argHelper0.GetInt32(false);
                        var result = UnityEngine.SystemInfo.SupportsTextureFormat(Arg0);
                        
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
        private static void F_SupportsVertexAttributeFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.Rendering.VertexAttributeFormat)argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var result = UnityEngine.SystemInfo.SupportsVertexAttributeFormat(Arg0,Arg1);
                        
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
        private static void F_IsFormatSupported(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper0.GetInt32(false);
                        var Arg1 = (UnityEngine.Experimental.Rendering.FormatUsage)argHelper1.GetInt32(false);
                        var result = UnityEngine.SystemInfo.IsFormatSupported(Arg0,Arg1);
                        
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
        private static void F_GetCompatibleFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.Experimental.Rendering.GraphicsFormat)argHelper0.GetInt32(false);
                        var Arg1 = (UnityEngine.Experimental.Rendering.FormatUsage)argHelper1.GetInt32(false);
                        var result = UnityEngine.SystemInfo.GetCompatibleFormat(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetGraphicsFormat(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = (UnityEngine.Experimental.Rendering.DefaultFormat)argHelper0.GetInt32(false);
                        var result = UnityEngine.SystemInfo.GetGraphicsFormat(Arg0);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetRenderTextureSupportedMSAASampleCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderTextureDescriptor>(false);
                        var result = UnityEngine.SystemInfo.GetRenderTextureSupportedMSAASampleCount(Arg0);
                        
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
        private static void G_batteryLevel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.batteryLevel;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_batteryStatus(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.batteryStatus;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_operatingSystem(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.operatingSystem;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_operatingSystemFamily(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.operatingSystemFamily;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_processorType(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.processorType;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_processorFrequency(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.processorFrequency;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_processorCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.processorCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_systemMemorySize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.systemMemorySize;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_deviceUniqueIdentifier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.deviceUniqueIdentifier;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_deviceName(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.deviceName;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_deviceModel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.deviceModel;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsAccelerometer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsAccelerometer;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsGyroscope(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsGyroscope;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsLocationService(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsLocationService;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsVibration(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsVibration;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsAudio(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsAudio;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_deviceType(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.deviceType;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsMemorySize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsMemorySize;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceName(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceName;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceVendor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceVendor;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceID(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceID;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceVendorID(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceVendorID;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceType(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceType;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsUVStartsAtTop(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsUVStartsAtTop;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsDeviceVersion(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsDeviceVersion;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsShaderLevel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsShaderLevel;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_graphicsMultiThreaded(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.graphicsMultiThreaded;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_renderingThreadingMode(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.renderingThreadingMode;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasHiddenSurfaceRemovalOnGPU(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.hasHiddenSurfaceRemovalOnGPU;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasDynamicUniformArrayIndexingInFragmentShaders(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.hasDynamicUniformArrayIndexingInFragmentShaders;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsShadows(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsShadows;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsRawShadowDepthSampling(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsRawShadowDepthSampling;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMotionVectors(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMotionVectors;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supports3DTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supports3DTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsCompressed3DTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsCompressed3DTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supports2DArrayTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supports2DArrayTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supports3DRenderTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supports3DRenderTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsCubemapArrayTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsCubemapArrayTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_copyTextureSupport(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.copyTextureSupport;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsComputeShaders(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsComputeShaders;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsConservativeRaster(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsConservativeRaster;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMultiview(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMultiview;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsGeometryShaders(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsGeometryShaders;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsTessellationShaders(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsTessellationShaders;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsRenderTargetArrayIndexFromVertexShader(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsRenderTargetArrayIndexFromVertexShader;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsInstancing(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsInstancing;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsHardwareQuadTopology(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsHardwareQuadTopology;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supports32bitsIndexBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supports32bitsIndexBuffer;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsSparseTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsSparseTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportedRenderTargetCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportedRenderTargetCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsSeparatedRenderTargetsBlend(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsSeparatedRenderTargetsBlend;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportedRandomWriteTargetCount(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportedRandomWriteTargetCount;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMultisampledTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMultisampledTextures;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMultisampled2DArrayTextures(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMultisampled2DArrayTextures;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMultisampleAutoResolve(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMultisampleAutoResolve;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsTextureWrapMirrorOnce(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsTextureWrapMirrorOnce;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_usesReversedZBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.usesReversedZBuffer;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_npotSupport(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.npotSupport;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxTextureSize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxTextureSize;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxCubemapSize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxCubemapSize;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsVertex(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsVertex;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsFragment(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsFragment;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsGeometry(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsGeometry;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsDomain(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsDomain;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsHull(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsHull;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeBufferInputsCompute(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeBufferInputsCompute;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeWorkGroupSize(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeWorkGroupSize;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeWorkGroupSizeX(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeWorkGroupSizeX;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeWorkGroupSizeY(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeWorkGroupSizeY;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_maxComputeWorkGroupSizeZ(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.maxComputeWorkGroupSizeZ;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsAsyncCompute(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsAsyncCompute;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsGpuRecorder(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsGpuRecorder;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsGraphicsFence(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsGraphicsFence;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsAsyncGPUReadback(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsAsyncGPUReadback;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsRayTracing(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsRayTracing;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsSetConstantBuffer(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsSetConstantBuffer;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_constantBufferOffsetAlignment(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.constantBufferOffsetAlignment;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasMipMaxLevel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.hasMipMaxLevel;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsMipStreaming(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsMipStreaming;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_usesLoadStoreActions(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.usesLoadStoreActions;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hdrDisplaySupportFlags(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.hdrDisplaySupportFlags;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_supportsStoreAndResolveAction(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.supportsStoreAndResolveAction;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_unsupportedIdentifier(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.SystemInfo.unsupportedIdentifier;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
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
                    { new Puerts.MethodKey {Name = "SupportsRenderTextureFormat", IsStatic = true},  F_SupportsRenderTextureFormat },
                    { new Puerts.MethodKey {Name = "SupportsBlendingOnRenderTextureFormat", IsStatic = true},  F_SupportsBlendingOnRenderTextureFormat },
                    { new Puerts.MethodKey {Name = "SupportsTextureFormat", IsStatic = true},  F_SupportsTextureFormat },
                    { new Puerts.MethodKey {Name = "SupportsVertexAttributeFormat", IsStatic = true},  F_SupportsVertexAttributeFormat },
                    { new Puerts.MethodKey {Name = "IsFormatSupported", IsStatic = true},  F_IsFormatSupported },
                    { new Puerts.MethodKey {Name = "GetCompatibleFormat", IsStatic = true},  F_GetCompatibleFormat },
                    { new Puerts.MethodKey {Name = "GetGraphicsFormat", IsStatic = true},  F_GetGraphicsFormat },
                    { new Puerts.MethodKey {Name = "GetRenderTextureSupportedMSAASampleCount", IsStatic = true},  F_GetRenderTextureSupportedMSAASampleCount },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"batteryLevel", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_batteryLevel, Setter = null} },
                    {"batteryStatus", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_batteryStatus, Setter = null} },
                    {"operatingSystem", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_operatingSystem, Setter = null} },
                    {"operatingSystemFamily", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_operatingSystemFamily, Setter = null} },
                    {"processorType", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_processorType, Setter = null} },
                    {"processorFrequency", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_processorFrequency, Setter = null} },
                    {"processorCount", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_processorCount, Setter = null} },
                    {"systemMemorySize", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_systemMemorySize, Setter = null} },
                    {"deviceUniqueIdentifier", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_deviceUniqueIdentifier, Setter = null} },
                    {"deviceName", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_deviceName, Setter = null} },
                    {"deviceModel", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_deviceModel, Setter = null} },
                    {"supportsAccelerometer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsAccelerometer, Setter = null} },
                    {"supportsGyroscope", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsGyroscope, Setter = null} },
                    {"supportsLocationService", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsLocationService, Setter = null} },
                    {"supportsVibration", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsVibration, Setter = null} },
                    {"supportsAudio", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsAudio, Setter = null} },
                    {"deviceType", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_deviceType, Setter = null} },
                    {"graphicsMemorySize", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsMemorySize, Setter = null} },
                    {"graphicsDeviceName", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceName, Setter = null} },
                    {"graphicsDeviceVendor", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceVendor, Setter = null} },
                    {"graphicsDeviceID", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceID, Setter = null} },
                    {"graphicsDeviceVendorID", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceVendorID, Setter = null} },
                    {"graphicsDeviceType", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceType, Setter = null} },
                    {"graphicsUVStartsAtTop", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsUVStartsAtTop, Setter = null} },
                    {"graphicsDeviceVersion", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsDeviceVersion, Setter = null} },
                    {"graphicsShaderLevel", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsShaderLevel, Setter = null} },
                    {"graphicsMultiThreaded", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_graphicsMultiThreaded, Setter = null} },
                    {"renderingThreadingMode", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_renderingThreadingMode, Setter = null} },
                    {"hasHiddenSurfaceRemovalOnGPU", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_hasHiddenSurfaceRemovalOnGPU, Setter = null} },
                    {"hasDynamicUniformArrayIndexingInFragmentShaders", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_hasDynamicUniformArrayIndexingInFragmentShaders, Setter = null} },
                    {"supportsShadows", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsShadows, Setter = null} },
                    {"supportsRawShadowDepthSampling", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsRawShadowDepthSampling, Setter = null} },
                    {"supportsMotionVectors", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMotionVectors, Setter = null} },
                    {"supports3DTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supports3DTextures, Setter = null} },
                    {"supportsCompressed3DTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsCompressed3DTextures, Setter = null} },
                    {"supports2DArrayTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supports2DArrayTextures, Setter = null} },
                    {"supports3DRenderTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supports3DRenderTextures, Setter = null} },
                    {"supportsCubemapArrayTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsCubemapArrayTextures, Setter = null} },
                    {"copyTextureSupport", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_copyTextureSupport, Setter = null} },
                    {"supportsComputeShaders", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsComputeShaders, Setter = null} },
                    {"supportsConservativeRaster", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsConservativeRaster, Setter = null} },
                    {"supportsMultiview", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMultiview, Setter = null} },
                    {"supportsGeometryShaders", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsGeometryShaders, Setter = null} },
                    {"supportsTessellationShaders", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsTessellationShaders, Setter = null} },
                    {"supportsRenderTargetArrayIndexFromVertexShader", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsRenderTargetArrayIndexFromVertexShader, Setter = null} },
                    {"supportsInstancing", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsInstancing, Setter = null} },
                    {"supportsHardwareQuadTopology", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsHardwareQuadTopology, Setter = null} },
                    {"supports32bitsIndexBuffer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supports32bitsIndexBuffer, Setter = null} },
                    {"supportsSparseTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsSparseTextures, Setter = null} },
                    {"supportedRenderTargetCount", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportedRenderTargetCount, Setter = null} },
                    {"supportsSeparatedRenderTargetsBlend", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsSeparatedRenderTargetsBlend, Setter = null} },
                    {"supportedRandomWriteTargetCount", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportedRandomWriteTargetCount, Setter = null} },
                    {"supportsMultisampledTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMultisampledTextures, Setter = null} },
                    {"supportsMultisampled2DArrayTextures", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMultisampled2DArrayTextures, Setter = null} },
                    {"supportsMultisampleAutoResolve", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMultisampleAutoResolve, Setter = null} },
                    {"supportsTextureWrapMirrorOnce", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsTextureWrapMirrorOnce, Setter = null} },
                    {"usesReversedZBuffer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_usesReversedZBuffer, Setter = null} },
                    {"npotSupport", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_npotSupport, Setter = null} },
                    {"maxTextureSize", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxTextureSize, Setter = null} },
                    {"maxCubemapSize", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxCubemapSize, Setter = null} },
                    {"maxComputeBufferInputsVertex", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsVertex, Setter = null} },
                    {"maxComputeBufferInputsFragment", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsFragment, Setter = null} },
                    {"maxComputeBufferInputsGeometry", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsGeometry, Setter = null} },
                    {"maxComputeBufferInputsDomain", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsDomain, Setter = null} },
                    {"maxComputeBufferInputsHull", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsHull, Setter = null} },
                    {"maxComputeBufferInputsCompute", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeBufferInputsCompute, Setter = null} },
                    {"maxComputeWorkGroupSize", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeWorkGroupSize, Setter = null} },
                    {"maxComputeWorkGroupSizeX", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeWorkGroupSizeX, Setter = null} },
                    {"maxComputeWorkGroupSizeY", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeWorkGroupSizeY, Setter = null} },
                    {"maxComputeWorkGroupSizeZ", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_maxComputeWorkGroupSizeZ, Setter = null} },
                    {"supportsAsyncCompute", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsAsyncCompute, Setter = null} },
                    {"supportsGpuRecorder", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsGpuRecorder, Setter = null} },
                    {"supportsGraphicsFence", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsGraphicsFence, Setter = null} },
                    {"supportsAsyncGPUReadback", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsAsyncGPUReadback, Setter = null} },
                    {"supportsRayTracing", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsRayTracing, Setter = null} },
                    {"supportsSetConstantBuffer", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsSetConstantBuffer, Setter = null} },
                    {"constantBufferOffsetAlignment", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_constantBufferOffsetAlignment, Setter = null} },
                    {"hasMipMaxLevel", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_hasMipMaxLevel, Setter = null} },
                    {"supportsMipStreaming", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsMipStreaming, Setter = null} },
                    {"usesLoadStoreActions", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_usesLoadStoreActions, Setter = null} },
                    {"hdrDisplaySupportFlags", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_hdrDisplaySupportFlags, Setter = null} },
                    {"supportsStoreAndResolveAction", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_supportsStoreAndResolveAction, Setter = null} },
                    {"unsupportedIdentifier", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_unsupportedIdentifier, Setter = null} },
                    
                }
            };
        }
        
    }
}