using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_GUI_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = new UnityEngine.GUI();
                        
                        
                        return Puerts.Utils.GetObjectPtr((int)data, typeof(UnityEngine.GUI), result);
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
        private static void F_SetNextControlName(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        UnityEngine.GUI.SetNextControlName(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_GetNameOfFocusedControl(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        var result = UnityEngine.GUI.GetNameOfFocusedControl();
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_FocusControl(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetString(false);
                        UnityEngine.GUI.FocusControl(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_DragWindow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        UnityEngine.GUI.DragWindow(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.GUI.DragWindow();
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DragWindow");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BringWindowToFront(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        UnityEngine.GUI.BringWindowToFront(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BringWindowToBack(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        UnityEngine.GUI.BringWindowToBack(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_FocusWindow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        UnityEngine.GUI.FocusWindow(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_UnfocusWindow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.GUI.UnfocusWindow();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Label(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        UnityEngine.GUI.Label(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.GUI.Label(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        UnityEngine.GUI.Label(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Label(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Label(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Label(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Label");
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
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1);
                        
                        
                        
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
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2);
                        
                        
                        
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
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        
                        
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
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Color>(false);
                        var Arg6 = argHelper6.GetFloat(false);
                        var Arg7 = argHelper7.GetFloat(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector4), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Color>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Vector4>(false);
                        var Arg7 = argHelper7.GetFloat(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Color), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector4), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector4), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = (UnityEngine.ScaleMode)argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.Color>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.Vector4>(false);
                        var Arg7 = argHelper7.Get<UnityEngine.Vector4>(false);
                        UnityEngine.GUI.DrawTexture(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7);
                        
                        
                        
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
        private static void F_DrawTextureWithTexCoords(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        UnityEngine.GUI.DrawTextureWithTexCoords(Arg0,Arg1,Arg2);
                        
                        
                        
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
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        UnityEngine.GUI.DrawTextureWithTexCoords(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to DrawTextureWithTexCoords");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Box(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        UnityEngine.GUI.Box(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.GUI.Box(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        UnityEngine.GUI.Box(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Box(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Box(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.Box(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Box");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Button(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Button(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Button");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_RepeatButton(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.RepeatButton(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to RepeatButton");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_TextField(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var result = UnityEngine.GUI.TextField(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var result = UnityEngine.GUI.TextField(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.TextField(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.TextField(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to TextField");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_PasswordField(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<System.Char>(false);
                        var result = UnityEngine.GUI.PasswordField(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<System.Char>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = UnityEngine.GUI.PasswordField(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<System.Char>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.PasswordField(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<System.Char>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.PasswordField(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to PasswordField");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_TextArea(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var result = UnityEngine.GUI.TextArea(Arg0,Arg1);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var result = UnityEngine.GUI.TextArea(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.TextArea(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.GetInt32(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.TextArea(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnString(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to TextArea");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Toggle(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.GetString(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.GetString(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetBoolean(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.GetBoolean(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIContent>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toggle(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Toggle");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Toolbar(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(string[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<string[]>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture[]>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent[]), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent[]>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(string[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<string[]>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture[]>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent[]>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent[]>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var Arg4 = (UnityEngine.GUI.ToolbarButtonSize)argHelper4.GetInt32(false);
                        var result = UnityEngine.GUI.Toolbar(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Toolbar");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_SelectionGrid(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(string[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<string[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(string[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<string[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Texture[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent[]), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetInt32(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIContent[]>(false);
                        var Arg3 = argHelper3.GetInt32(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.SelectionGrid(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to SelectionGrid");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_HorizontalSlider(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var result = UnityEngine.GUI.HorizontalSlider(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.HorizontalSlider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.HorizontalSlider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to HorizontalSlider");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_VerticalSlider(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var result = UnityEngine.GUI.VerticalSlider(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.VerticalSlider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.VerticalSlider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to VerticalSlider");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_Slider(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper9.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.GUIStyle>(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var Arg9 = argHelper9.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Slider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8,Arg9);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper7.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper8.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.GUIStyle>(false);
                        var Arg7 = argHelper7.GetBoolean(false);
                        var Arg8 = argHelper8.GetInt32(false);
                        var result = UnityEngine.GUI.Slider(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Slider");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_HorizontalScrollbar(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var result = UnityEngine.GUI.HorizontalScrollbar(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.HorizontalScrollbar(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to HorizontalScrollbar");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_VerticalScrollbar(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var result = UnityEngine.GUI.VerticalScrollbar(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var Arg2 = argHelper2.GetFloat(false);
                        var Arg3 = argHelper3.GetFloat(false);
                        var Arg4 = argHelper4.GetFloat(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.VerticalScrollbar(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5);
                        
                        Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to VerticalScrollbar");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BeginClip(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Vector2>(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        UnityEngine.GUI.BeginClip(Arg0,Arg1,Arg2,Arg3);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        UnityEngine.GUI.BeginClip(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to BeginClip");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BeginGroup(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        UnityEngine.GUI.BeginGroup(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 2)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1);
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetString(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Texture>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.GUIContent>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUIStyle>(false);
                        UnityEngine.GUI.BeginGroup(Arg0,Arg1,Arg2);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to BeginGroup");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_EndGroup(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.GUI.EndGroup();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_EndClip(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.GUI.EndClip();
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_BeginScrollView(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 3)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var result = UnityEngine.GUI.BeginScrollView(Arg0,Arg1,Arg2);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetBoolean(false);
                        var result = UnityEngine.GUI.BeginScrollView(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIStyle>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.BeginScrollView(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
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
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Vector2), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.Boolean, null, false, false)
                        && argHelper5.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false)
                        && argHelper6.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Vector2>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.Rect>(false);
                        var Arg3 = argHelper3.GetBoolean(false);
                        var Arg4 = argHelper4.GetBoolean(false);
                        var Arg5 = argHelper5.Get<UnityEngine.GUIStyle>(false);
                        var Arg6 = argHelper6.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.BeginScrollView(Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to BeginScrollView");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_EndScrollView(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 0)
                {
                    
                    
                    
                    
                    {
                        
                        UnityEngine.GUI.EndScrollView();
                        
                        
                        
                        return;
                    }
                }
                
                if (paramLen == 1)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Boolean, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetBoolean(false);
                        UnityEngine.GUI.EndScrollView(Arg0);
                        
                        
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to EndScrollView");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ScrollTo(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        UnityEngine.GUI.ScrollTo(Arg0);
                        
                        
                        
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ScrollTowards(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    
                    
                    
                    {
                        
                        var Arg0 = argHelper0.Get<UnityEngine.Rect>(false);
                        var Arg1 = argHelper1.GetFloat(false);
                        var result = UnityEngine.GUI.ScrollTowards(Arg0,Arg1);
                        
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
        private static void F_Window(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.GetString(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIContent>(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.GetString(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Texture>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIContent>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.Window(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to Window");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void F_ModalWindow(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                
                if (paramLen == 4)
                {
                    
                    var argHelper0 = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                    var argHelper1 = new Puerts.ArgumentHelper((int)data, isolate, info, 1);
                    var argHelper2 = new Puerts.ArgumentHelper((int)data, isolate, info, 2);
                    var argHelper3 = new Puerts.ArgumentHelper((int)data, isolate, info, 3);
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.GetString(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Texture>(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIContent>(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
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
                    
                    
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.String, null, false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.GetString(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.Texture), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.Texture>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                    if (argHelper0.IsMatch(Puerts.JsValueType.Number, null, false, false)
                        && argHelper1.IsMatch(Puerts.JsValueType.NativeObject, typeof(UnityEngine.Rect), false, false)
                        && argHelper2.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject | Puerts.JsValueType.Function, typeof(UnityEngine.GUI.WindowFunction), false, false)
                        && argHelper3.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIContent), false, false)
                        && argHelper4.IsMatch(Puerts.JsValueType.NullOrUndefined | Puerts.JsValueType.NativeObject, typeof(UnityEngine.GUIStyle), false, false))
                    {
                        
                        var Arg0 = argHelper0.GetInt32(false);
                        var Arg1 = argHelper1.Get<UnityEngine.Rect>(false);
                        var Arg2 = argHelper2.Get<UnityEngine.GUI.WindowFunction>(false);
                        var Arg3 = argHelper3.Get<UnityEngine.GUIContent>(false);
                        var Arg4 = argHelper4.Get<UnityEngine.GUIStyle>(false);
                        var result = UnityEngine.GUI.ModalWindow(Arg0,Arg1,Arg2,Arg3,Arg4);
                        
                        Puerts.ResultHelper.Set((int)data, isolate, info, result);
                        
                        return;
                    }
                }
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to ModalWindow");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_color(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.color;
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
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.color = argHelper.Get<UnityEngine.Color>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_backgroundColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.backgroundColor;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_backgroundColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.backgroundColor = argHelper.Get<UnityEngine.Color>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_contentColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.contentColor;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_contentColor(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.contentColor = argHelper.Get<UnityEngine.Color>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_changed(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.changed;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_changed(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.changed = argHelper.GetBoolean(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_enabled(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.enabled;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_enabled(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.enabled = argHelper.GetBoolean(false);
                
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
                
                var result = UnityEngine.GUI.depth;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
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
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.depth = argHelper.GetInt32(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_skin(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.skin;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_skin(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.skin = argHelper.Get<UnityEngine.GUISkin>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_matrix(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.matrix;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_matrix(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.matrix = argHelper.Get<UnityEngine.Matrix4x4>(false);
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_tooltip(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var result = UnityEngine.GUI.tooltip;
                Puerts.PuertsDLL.ReturnString(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_tooltip(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                UnityEngine.GUI.tooltip = argHelper.GetString(false);
                
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
                    { new Puerts.MethodKey {Name = "SetNextControlName", IsStatic = true},  F_SetNextControlName },
                    { new Puerts.MethodKey {Name = "GetNameOfFocusedControl", IsStatic = true},  F_GetNameOfFocusedControl },
                    { new Puerts.MethodKey {Name = "FocusControl", IsStatic = true},  F_FocusControl },
                    { new Puerts.MethodKey {Name = "DragWindow", IsStatic = true},  F_DragWindow },
                    { new Puerts.MethodKey {Name = "BringWindowToFront", IsStatic = true},  F_BringWindowToFront },
                    { new Puerts.MethodKey {Name = "BringWindowToBack", IsStatic = true},  F_BringWindowToBack },
                    { new Puerts.MethodKey {Name = "FocusWindow", IsStatic = true},  F_FocusWindow },
                    { new Puerts.MethodKey {Name = "UnfocusWindow", IsStatic = true},  F_UnfocusWindow },
                    { new Puerts.MethodKey {Name = "Label", IsStatic = true},  F_Label },
                    { new Puerts.MethodKey {Name = "DrawTexture", IsStatic = true},  F_DrawTexture },
                    { new Puerts.MethodKey {Name = "DrawTextureWithTexCoords", IsStatic = true},  F_DrawTextureWithTexCoords },
                    { new Puerts.MethodKey {Name = "Box", IsStatic = true},  F_Box },
                    { new Puerts.MethodKey {Name = "Button", IsStatic = true},  F_Button },
                    { new Puerts.MethodKey {Name = "RepeatButton", IsStatic = true},  F_RepeatButton },
                    { new Puerts.MethodKey {Name = "TextField", IsStatic = true},  F_TextField },
                    { new Puerts.MethodKey {Name = "PasswordField", IsStatic = true},  F_PasswordField },
                    { new Puerts.MethodKey {Name = "TextArea", IsStatic = true},  F_TextArea },
                    { new Puerts.MethodKey {Name = "Toggle", IsStatic = true},  F_Toggle },
                    { new Puerts.MethodKey {Name = "Toolbar", IsStatic = true},  F_Toolbar },
                    { new Puerts.MethodKey {Name = "SelectionGrid", IsStatic = true},  F_SelectionGrid },
                    { new Puerts.MethodKey {Name = "HorizontalSlider", IsStatic = true},  F_HorizontalSlider },
                    { new Puerts.MethodKey {Name = "VerticalSlider", IsStatic = true},  F_VerticalSlider },
                    { new Puerts.MethodKey {Name = "Slider", IsStatic = true},  F_Slider },
                    { new Puerts.MethodKey {Name = "HorizontalScrollbar", IsStatic = true},  F_HorizontalScrollbar },
                    { new Puerts.MethodKey {Name = "VerticalScrollbar", IsStatic = true},  F_VerticalScrollbar },
                    { new Puerts.MethodKey {Name = "BeginClip", IsStatic = true},  F_BeginClip },
                    { new Puerts.MethodKey {Name = "BeginGroup", IsStatic = true},  F_BeginGroup },
                    { new Puerts.MethodKey {Name = "EndGroup", IsStatic = true},  F_EndGroup },
                    { new Puerts.MethodKey {Name = "EndClip", IsStatic = true},  F_EndClip },
                    { new Puerts.MethodKey {Name = "BeginScrollView", IsStatic = true},  F_BeginScrollView },
                    { new Puerts.MethodKey {Name = "EndScrollView", IsStatic = true},  F_EndScrollView },
                    { new Puerts.MethodKey {Name = "ScrollTo", IsStatic = true},  F_ScrollTo },
                    { new Puerts.MethodKey {Name = "ScrollTowards", IsStatic = true},  F_ScrollTowards },
                    { new Puerts.MethodKey {Name = "Window", IsStatic = true},  F_Window },
                    { new Puerts.MethodKey {Name = "ModalWindow", IsStatic = true},  F_ModalWindow },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"color", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_color, Setter = S_color} },
                    {"backgroundColor", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_backgroundColor, Setter = S_backgroundColor} },
                    {"contentColor", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_contentColor, Setter = S_contentColor} },
                    {"changed", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_changed, Setter = S_changed} },
                    {"enabled", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_enabled, Setter = S_enabled} },
                    {"depth", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_depth, Setter = S_depth} },
                    {"skin", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_skin, Setter = S_skin} },
                    {"matrix", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_matrix, Setter = S_matrix} },
                    {"tooltip", new Puerts.PropertyRegisterInfo(){ IsStatic = true, Getter = G_tooltip, Setter = S_tooltip} },
                    
                }
            };
        }
        
    }
}