using cfg;
using Luban;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class ConfigManager
{
    public static Tables tables;
    private static byte[] BUFFER = new byte[1024 * 1024 * 10];
    private static Dictionary<string, FileStream> fileStreams;
    public static void LoadTables()
    {
        fileStreams = new Dictionary<string, FileStream>(Tables.TABLE_COUNT / 2);
        tables = new cfg.Tables(LoadOffsetByteBuf, ByteBufLoader);
    }
    public static void Dispose()
    {
        foreach (var fs in fileStreams.Values)
        {
            fs.Dispose();
        }
        fileStreams.Clear();
    }
    private static ByteBuf LoadOffsetByteBuf(string file)
    {
        var a = File.ReadAllBytes($"{Application.streamingAssetsPath}/Config/offset/{file}.bytes");
        return new ByteBuf(a);
    }

    //注意： 安卓平台和WebGL平台不能读取StreamingAssetsPath下的文件，这里只提供思路，可以根据各自项目情况作出调整
    private static ByteBuf ByteBufLoader(string file, int offset, int length)
    {
        if (!fileStreams.TryGetValue(file, out var fs))
        {
            fs = new FileStream($"{Application.streamingAssetsPath}/Config/bin/{file}.bytes", FileMode.Open);
            fileStreams.Add(file, fs);
        }
        fs.Seek(offset, SeekOrigin.Begin);
        fs.Read(BUFFER, 0, length);
        var buf = new ByteBuf(BUFFER, 0, length);
        return buf;
    }
}
