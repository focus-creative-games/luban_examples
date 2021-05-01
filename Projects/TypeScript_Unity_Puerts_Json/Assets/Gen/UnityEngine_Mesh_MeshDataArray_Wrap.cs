using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_Mesh_MeshDataArray_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.Mesh.MeshDataArray constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void M_Dispose(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Mesh.MeshDataArray)Puerts.Utils.GetSelf((int)data, self);
                
                
                {
                    
                    
                    
                    
                    {
                        
                        obj.Dispose();
                        
                        
                        Puerts.Utils.SetSelf((int)data, self, obj);
                        
                    }
                }
                
                
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_Length(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.Mesh.MeshDataArray)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.Length;
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
                var obj = (UnityEngine.Mesh.MeshDataArray)Puerts.Utils.GetSelf((int)data, self);
                var keyHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                
                if (keyHelper.IsMatch(Puerts.JsValueType.Number, null, false, false))
                {
                    var key = keyHelper.GetInt32(false);
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
        
        
        
        public static Puerts.TypeRegisterInfo GetRegisterInfo()
        {
            return new Puerts.TypeRegisterInfo()
            {
                BlittableCopy = false,
                Constructor = Constructor,
                Methods = new System.Collections.Generic.Dictionary<Puerts.MethodKey, Puerts.V8FunctionCallback>()
                {
                    { new Puerts.MethodKey {Name = "Dispose", IsStatic = false},  M_Dispose },
                    { new Puerts.MethodKey {Name = "get_Item", IsStatic = false}, GetItem },
                    
                },
                Properties = new System.Collections.Generic.Dictionary<string, Puerts.PropertyRegisterInfo>()
                {
                    {"Length", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_Length, Setter = null} },
                    
                }
            };
        }
        
    }
}