using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_RenderTargetSetup_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rendering.RenderBufferLoadAction[]), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rendering.RenderBufferStoreAction[]), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = (UnityEngine.CubemapFace)argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.Rendering.RenderBufferLoadAction[]>(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Rendering.RenderBufferStoreAction[]>(false);
                        var Arg6 = (UnityEngine.Rendering.RenderBufferLoadAction)argHelper6.GetInt32(false);
                        var Arg7 = (UnityEngine.Rendering.RenderBufferStoreAction)argHelper7.GetInt32(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                }
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = (UnityEngine.CubemapFace)argHelper3.GetInt32(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer[]), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.RenderBuffer), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.RenderBuffer[]>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.RenderBuffer>(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = (UnityEngine.CubemapFace)argHelper3.GetInt32(false);
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
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
                        var result = new UnityEngine.RenderTargetSetup(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.RenderTargetSetup();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.RenderTargetSetup), result);
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.RenderTargetSetup constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_color(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.color;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_color(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.color = argHelper.Get<UnityEngine.RenderBuffer[]>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depth;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_depth(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.depth = argHelper.Get<UnityEngine.RenderBuffer>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_mipLevel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.mipLevel;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_mipLevel(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.mipLevel = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_cubemapFace(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.cubemapFace;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_cubemapFace(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.cubemapFace = (UnityEngine.CubemapFace)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depthSlice(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depthSlice;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_depthSlice(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.depthSlice = argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_colorLoad(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.colorLoad;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_colorLoad(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.colorLoad = argHelper.Get<UnityEngine.Rendering.RenderBufferLoadAction[]>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_colorStore(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.colorStore;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_colorStore(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.colorStore = argHelper.Get<UnityEngine.Rendering.RenderBufferStoreAction[]>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depthLoad(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depthLoad;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_depthLoad(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.depthLoad = (UnityEngine.Rendering.RenderBufferLoadAction)argHelper.GetInt32(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_depthStore(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.depthStore;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, (int)result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_depthStore(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.RenderTargetSetup)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.depthStore = (UnityEngine.Rendering.RenderBufferStoreAction)argHelper.GetInt32(false);
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
                    {"color", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_color, Setter = S_color} },
                    {"depth", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depth, Setter = S_depth} },
                    {"mipLevel", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_mipLevel, Setter = S_mipLevel} },
                    {"cubemapFace", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_cubemapFace, Setter = S_cubemapFace} },
                    {"depthSlice", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depthSlice, Setter = S_depthSlice} },
                    {"colorLoad", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_colorLoad, Setter = S_colorLoad} },
                    {"colorStore", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_colorStore, Setter = S_colorStore} },
                    {"depthLoad", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depthLoad, Setter = S_depthLoad} },
                    {"depthStore", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_depthStore, Setter = S_depthStore} },
                    
                }
            };
        }
        
    }
}