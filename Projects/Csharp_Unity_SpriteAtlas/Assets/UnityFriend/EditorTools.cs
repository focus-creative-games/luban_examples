using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.U2D;
using UnityEngine;
using UnityEngine.U2D;

namespace UnityFriend
{
    public static class EditorTools
    {
        [MenuItem("Assets/Repack SpriteAtlas")]
        public static void RepackSelectingAtlas()
        {
            var objs = Selection.objects;

            if(objs is null || objs.Length <= 0)
            {
                return;
            }

            foreach(var obj in objs)
            {
                string path = AssetDatabase.GetAssetPath(obj);

                if(string.IsNullOrEmpty(path))
                {
                    continue;
                }

                if(!path.EndsWith("spriteatlas"))
                {
                    continue;
                }

                RepackSpriteAtlas(path);
            }
        }

        public static void RepackSpriteAtlas(string path)
        {
            if(string.IsNullOrEmpty(path))
            {
                return;
            }

            SpriteAtlas atlas = AssetDatabase.LoadAssetAtPath<SpriteAtlas>(path);

            if(atlas is null)
            {
                return;
            }

            Hash128 hash = atlas.GetStoredHash();

            string cache_dir = $"{Application.dataPath}/../Library/AtlasCache";

            var files = Directory.GetFiles(cache_dir, hash.ToString());

            foreach(var file in files)
            {
                File.Delete(file);
            }

            EditorUtility.SetDirty(atlas);

            SpriteAtlasUtility.PackAtlases(new[] {atlas}, EditorUserBuildSettings.activeBuildTarget);

            AssetDatabase.SaveAssets();
        }
    }
}