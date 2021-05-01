using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_WebCamDevice_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.WebCamDevice constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_name(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.name;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_isFrontFacing(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.isFrontFacing;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_kind(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.kind;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depthCameraName(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depthCameraName;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_isAutoFocusPointSupported(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.isAutoFocusPointSupported;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_availableResolutions(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.WebCamDevice)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.availableResolutions;
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
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"name", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_name, Setter = null} },
                    {"isFrontFacing", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_isFrontFacing, Setter = null} },
                    {"kind", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_kind, Setter = null} },
                    {"depthCameraName", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depthCameraName, Setter = null} },
                    {"isAutoFocusPointSupported", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_isAutoFocusPointSupported, Setter = null} },
                    {"availableResolutions", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_availableResolutions, Setter = null} },
                    
                }
            };
        }
        
    }
}