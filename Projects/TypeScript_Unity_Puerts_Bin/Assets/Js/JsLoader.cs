using Puerts;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

class JsLoader : ILoader
{
    private readonly string _root;

    public JsLoader(string root)
    {
        _root = root;
    }

    public bool FileExists(string filepath)
    {
        if (filepath.StartsWith("puerts/"))
        {
            return UnityEngine.Resources.Load<TextAsset>(filepath) != null;
        }
        else
        {
            return File.Exists(Path.Combine(_root, filepath));
        }
    }

    public string ReadFile(string filepath, out string debugpath)
    {
        if (filepath.StartsWith("puerts/"))
        {
            debugpath = filepath;
            return UnityEngine.Resources.Load<TextAsset>(filepath).text;
        }
        else
        {
            var fullPath = Path.Combine(_root, filepath);
            debugpath = fullPath;
            return File.ReadAllText(fullPath, System.Text.Encoding.UTF8);
        }
    }
}

