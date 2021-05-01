using System;

namespace PuertsStaticWrap
{
    public static class UnityEngine_HumanDescription_Wrap
    {
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8ConstructorCallback))]
        private static IntPtr Constructor(IntPtr isolate, IntPtr info, int paramLen, long data)
        {
            try
            {
                
                Puerts.PuertsDLL.ThrowException(isolate, "invalid arguments to UnityEngine.HumanDescription constructor");
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
            return IntPtr.Zero;
        }
        
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_upperArmTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.upperArmTwist;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_upperArmTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.upperArmTwist = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_lowerArmTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.lowerArmTwist;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_lowerArmTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.lowerArmTwist = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_upperLegTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.upperLegTwist;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_upperLegTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.upperLegTwist = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_lowerLegTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.lowerLegTwist;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_lowerLegTwist(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.lowerLegTwist = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_armStretch(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.armStretch;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_armStretch(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.armStretch = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_legStretch(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.legStretch;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_legStretch(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.legStretch = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_feetSpacing(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.feetSpacing;
                Puerts.PuertsDLL.ReturnNumber(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_feetSpacing(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.feetSpacing = argHelper.GetFloat(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_hasTranslationDoF(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.hasTranslationDoF;
                Puerts.PuertsDLL.ReturnBoolean(isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_hasTranslationDoF(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.hasTranslationDoF = argHelper.GetBoolean(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_human(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.human;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_human(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.human = argHelper.Get<UnityEngine.HumanBone[]>(false);
                Puerts.Utils.SetSelf((int)data, self, obj);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void G_skeleton(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var result = obj.skeleton;
                Puerts.ResultHelper.Set((int)data, isolate, info, result);
            }
            catch (Exception e)
            {
                Puerts.PuertsDLL.ThrowException(isolate, "c# exception:" + e.Message + ",stack:" + e.StackTrace);
            }
        }
        
        [Puerts.MonoPInvokeCallback(typeof(Puerts.V8FunctionCallback))]
        private static void S_skeleton(IntPtr isolate, IntPtr info, IntPtr self, int paramLen, long data)
        {
            try
            {
                var obj = (UnityEngine.HumanDescription)Puerts.Utils.GetSelf((int)data, self);
                var argHelper = new Puerts.ArgumentHelper((int)data, isolate, info, 0);
                obj.skeleton = argHelper.Get<UnityEngine.SkeletonBone[]>(false);
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
                    {"upperArmTwist", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_upperArmTwist, Setter = S_upperArmTwist} },
                    {"lowerArmTwist", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_lowerArmTwist, Setter = S_lowerArmTwist} },
                    {"upperLegTwist", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_upperLegTwist, Setter = S_upperLegTwist} },
                    {"lowerLegTwist", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_lowerLegTwist, Setter = S_lowerLegTwist} },
                    {"armStretch", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_armStretch, Setter = S_armStretch} },
                    {"legStretch", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_legStretch, Setter = S_legStretch} },
                    {"feetSpacing", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_feetSpacing, Setter = S_feetSpacing} },
                    {"hasTranslationDoF", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_hasTranslationDoF, Setter = S_hasTranslationDoF} },
                    {"human", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_human, Setter = S_human} },
                    {"skeleton", new Puerts.PropertyRegisterInfo(){ IsStatic = false, Getter = G_skeleton, Setter = S_skeleton} },
                    
                }
            };
        }
        
    }
}