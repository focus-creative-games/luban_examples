using System.Collections;
using System.Collections.Generic;
using System.IO;
using cfg;
using Luban;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        ConfigManager.LoadTables();
        var tables = ConfigManager.tables;

        //测试获取单个数据
        Debug.Log("========测试获取单个数据开始========");
        //map表数据
        var item = tables.TbItem.Get(1020100001);
        Debug.Log("测试map表数据");
        Debug.Log(item);

        //单例表数据
        var global = tables.TbGlobalConfig;
        Debug.Log("测试单例表数据");
        Debug.Log(global);

        //联合多主键数据
        var unionIndex = tables.TbMultiUnionIndexList.Get(1, 1, "ab1");
        Debug.Log("测试联合多主键数据");
        Debug.Log(unionIndex);

        //独立多主键数据
        var multiIndex = tables.TbMultiIndexList.GetById1(1);
        Debug.Log("测试独立多主键数据");
        Debug.Log(multiIndex);

        //无主键数据
        var notIndex = tables.TbNotIndexList.GetByIndex(0);
        Debug.Log("测试无主键数据");
        Debug.Log(notIndex);
        Debug.Log("========测试获取单个数据结束========");

        //测试遍历数据
        Debug.Log("========测试遍历数据开始========");
        //map表数据
        Debug.Log("测试map表数据");
        tables.TbItem.LoadAll((key, value) =>
        {
            Debug.Log($"key: {key} | value: {value}");
        });

        //联合多主键数据
        Debug.Log("测试联合多主键数据");
        tables.TbMultiUnionIndexList.LoadAll((id1, id2, id3, value) =>
        {
            Debug.Log($"key: {id1},{id2},{id3} | value: {value}");
        });

        //独立多主键数据
        Debug.Log("测试独立多主键数据");
        tables.TbMultiIndexList.LoadAll((id1, id2, id3, value) =>
        {
            Debug.Log($"key: {id1},{id2},{id3} | value: {value}");
        });

        //无主键数据
        Debug.Log("测试无主键数据");
        tables.TbNotIndexList.LoadAll((index, value) =>
        {
            Debug.Log($"key: {index} | value: {value}");
        });
        Debug.Log("========测试遍历数据结束========");

        Debug.Log("========测试Ref特性开始========");
        //测试Ref特性
        var refTest = tables.TbTestRef.Get(1);
        Debug.Log("测试Ref特性");
        Debug.Log(refTest);
        Debug.Log(refTest.X12_Ref);
        Debug.Log("========测试Ref特性结束========");
    }
}
