/*
 * Tencent is pleased to support the open source community by making InjectFix available.
 * Copyright (C) 2019 THL A29 Limited, a Tencent company.  All rights reserved.
 * InjectFix is licensed under the MIT License, except for the third-party components listed in the file 'LICENSE' which may be subject to their corresponding license terms. 
 * This file is subject to the terms and conditions defined in file 'LICENSE', which is part of this source code package.
 */

using System.Collections.Generic;
using Puerts;
using System;
using UnityEngine;

//1、配置类必须打[Configure]标签
//2、必须放Editor目录
[Configure]
public class ExamplesCfg
{
    [Binding]
    static IEnumerable<Type> Bindings
    {
        get
        {
            return new List<Type>()
            {
                typeof(Debug),
                //typeof(PuertsTest.TestClass),
                typeof(Vector3),
                typeof(List<int>),
                typeof(Dictionary<string, List<int>>),
                //typeof(PuertsTest.BaseClass),
                //typeof(PuertsTest.DerivedClass),
                //typeof(PuertsTest.BaseClassExtension),
                //typeof(PuertsTest.MyEnum),
                typeof(Time),
                typeof(Transform),
                typeof(Component),
                typeof(GameObject),
                typeof(UnityEngine.Object),
                typeof(Delegate),
                typeof(System.Object),
                typeof(Type),
                typeof(ParticleSystem),
                typeof(Canvas),
                typeof(RenderMode),
                typeof(Behaviour),
                typeof(MonoBehaviour),

                typeof(UnityEngine.EventSystems.UIBehaviour),
                typeof(UnityEngine.UI.Selectable),
                typeof(UnityEngine.UI.Button),
                typeof(UnityEngine.UI.Button.ButtonClickedEvent),
                typeof(UnityEngine.Events.UnityEvent),
                typeof(UnityEngine.UI.InputField),
                typeof(UnityEngine.UI.Toggle),
                typeof(UnityEngine.UI.Toggle.ToggleEvent),
                typeof(UnityEngine.Events.UnityEvent<bool>),

            };
        }
    }

    [BlittableCopy]
    static IEnumerable<Type> Blittables
    {
        get
        {
            return new List<Type>()
            {
                //打开这个可以优化Vector3的GC，但需要开启unsafe编译
                //typeof(Vector3),
            };
        }
    }

    [Filter]
    static bool FilterMethods(System.Reflection.MemberInfo mb)
    {
        // 排除 MonoBehaviour.runInEditMode, 在 Editor 环境下可用发布后不存在
        if (mb.DeclaringType == typeof(MonoBehaviour) && mb.Name == "runInEditMode")
        {
            return true;
        }
        return false;
    }
}
