using System.Linq;
using System.Reflection;
using System.Collections.Generic;
using UnityEditor;
using Puerts;

/// <summary>
/// 这是参照xLua黑名单配置设计的
/// </summary>
[Configure]
public class PuertsFilter : Editor
{
    /// <summary>
    /// 配置黑名单字段丶方法
    /// 参数:
    /// 1:类型名称, 2:方法或字段名称, 3~~:如果2是方法名称, 代表方法参数类型名称
    /// </summary>
    public static List<List<string>> BlackList
    {
        get
        {
            return new List<List<string>>()  {
                new List<string>(){"System.Xml.XmlNodeList", "ItemOf"},
                new List<string>(){"UnityEngine.WWW", "movie"},
        #if UNITY_WEBGL
                new List<string>(){"UnityEngine.WWW", "threadPriority"},
        #endif
                new List<string>(){"UnityEngine.Texture2D", "alphaIsTransparency"},
                new List<string>(){"UnityEngine.Security", "GetChainOfTrustValue"},
                new List<string>(){"UnityEngine.CanvasRenderer", "onRequestRebuild"},
                new List<string>(){"UnityEngine.Light", "areaSize"},
                new List<string>(){"UnityEngine.Light", "shadowRadius"},
                new List<string>(){"UnityEngine.Light", "shadowAngle"},
                new List<string>(){"UnityEngine.Light", "lightmapBakeType"},
                new List<string>(){"UnityEngine.Light", "SetLightDirty"},
                new List<string>(){"UnityEngine.LightProbeGroup", "dering"},
                new List<string>(){"UnityEngine.LightProbeGroup", "probePositions"},
                new List<string>(){"UnityEngine.WWW", "MovieTexture"},
                new List<string>(){"UnityEngine.WWW", "GetMovieTexture"},
                new List<string>(){"UnityEngine.AnimatorOverrideController", "PerformOverrideClipListCleanup"},
        #if !UNITY_WEBPLAYER
                new List<string>(){"UnityEngine.Application", "ExternalEval"},
        #endif
                new List<string>(){"UnityEngine.GameObject", "networkView"}, //4.6.2 not support
                new List<string>(){"UnityEngine.Component", "networkView"},  //4.6.2 not support
                new List<string>(){"UnityEngine.MonoBehaviour", "runInEditMode"},
                new List<string>(){"UnityEngine.AnimatorControllerParameter", "name"},
                new List<string>(){"UnityEngine.AudioSettings", "GetSpatializerPluginNames"},
                new List<string>(){"UnityEngine.AudioSettings", "SetSpatializerPluginName", "System.String"},
                new List<string>(){"UnityEngine.QualitySettings", "streamingMipmapsRenderersPerFrame"},
                new List<string>(){"UnityEngine.Input", "IsJoystickPreconfigured", "System.String"},
                new List<string>(){"UnityEngine.ParticleSystemForceField", "FindAll"},
                new List<string>(){"UnityEngine.Texture", "imageContentsHash"},
                new List<string>(){"UnityEngine.UI.Graphic", "OnRebuildRequested"},
                new List<string>(){"UnityEngine.UI.Text", "OnRebuildRequested"},
                new List<string>(){"UnityEngine.DrivenRectTransformTracker", "StartRecordingUndo"},
                new List<string>(){"UnityEngine.DrivenRectTransformTracker", "StopRecordingUndo"},
                new List<string>(){"UnityEngine.Terrain", "bakeLightProbesForTrees"},
                new List<string>(){"UnityEngine.Terrain", "deringLightProbesForTrees"},
                new List<string>(){"UnityEngine.GUIStyleState", "scaledBackgrounds"},
                //System.Reflection
                new List<string>(){"System.Reflection.FieldInfo", "GetValueDirect", "System.TypedReference"},
                new List<string>(){"System.Reflection.FieldInfo", "SetValueDirect", "System.TypedReference", "System.Object"},
                //System.IO
                new List<string>(){"System.IO.FileInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.FileInfo", "SetAccessControl", "System.Security.AccessControl.FileSecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.DirectoryInfo", "SetAccessControl", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "CreateSubdirectory", "System.String", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.DirectoryInfo", "Create", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.Directory", "GetAccessControl", "System.String"},
                new List<string>(){"System.IO.Directory", "GetAccessControl", "System.String", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.Directory", "SetAccessControl", "System.String", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.Directory", "CreateDirectory", "System.String", "System.Security.AccessControl.DirectorySecurity"},
                new List<string>(){"System.IO.File", "SetAccessControl", "System.String", "System.Security.AccessControl.FileSecurity"},
                new List<string>(){"System.IO.File", "GetAccessControl", "System.String"},
                new List<string>(){"System.IO.File", "GetAccessControl", "System.String", "System.Security.AccessControl.AccessControlSections"},
                new List<string>(){"System.IO.File", "Create", "System.String", "System.Int32", "System.IO.FileOptions", "System.Security.AccessControl.FileSecurity"},
            };
        }
    }

    [Filter]
    static bool Filter(MemberInfo memberInfo)
    {
        string fullname = memberInfo.DeclaringType.FullName.Replace("+", ".");
        Dictionary<string, List<string[]>> methodOrProp;
        List<string[]> paramtersList;
        if (blacklist.TryGetValue(fullname, out methodOrProp) && methodOrProp.TryGetValue(memberInfo.Name, out paramtersList))
        {
            //如果是字段声明, 直接返回
            if (!(memberInfo is MethodInfo))
                return true;

            var m_paramters = (from p_info in ((MethodInfo)memberInfo).GetParameters()
                               select p_info.ParameterType.FullName.Replace("+", ".")).ToArray();
            foreach (var paramters in paramtersList)
            {
                //*(通配) / 屏蔽所有此名称的方法
                if (paramters.Length == 1 && paramters[0] == "*")
                    return true;
                //对比方法参数
                if (paramters.Length == m_paramters.Length)
                {
                    var exclude = true;
                    for (int i = 0; i < paramters.Length && exclude; i++)
                    {
                        if (paramters[i] != m_paramters[i])
                            exclude = false;
                    }
                    if (exclude) return true;
                }

            }
            return false;
        }
        return false;
    }
    static Dictionary<string, Dictionary<string, List<string[]>>> _blacklist;
    static Dictionary<string, Dictionary<string, List<string[]>>> blacklist
    {
        get
        {
            if (_blacklist == null)
            {
                _blacklist = new Dictionary<string, Dictionary<string, List<string[]>>>();

                foreach (var blackInfo in BlackList)
                {
                    if (blackInfo.Count < 2)
                        continue;

                    string fullname = blackInfo[0];
                    string methodName = blackInfo[1];
                    Dictionary<string, List<string[]>> methodOrProp;
                    if (!_blacklist.TryGetValue(fullname, out methodOrProp))
                    {
                        methodOrProp = new Dictionary<string, List<string[]>>();
                        _blacklist.Add(fullname, methodOrProp);
                    }
                    List<string[]> paramtersList;
                    if (!methodOrProp.TryGetValue(methodName, out paramtersList))
                    {
                        paramtersList = new List<string[]>();
                        methodOrProp.Add(methodName, paramtersList);
                    }
                    paramtersList.Add(blackInfo.GetRange(2, blackInfo.Count - 2).ToArray());
                }
            }
            return _blacklist;
        }
    }
}
