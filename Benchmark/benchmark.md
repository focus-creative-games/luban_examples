- Benchmark 项目

    性能测试项目
	
    测试 300个excel表，每个表文件大小132k（重复数据较多，xlsx被压缩了，不然不可能这么小）, 1000行较大的记录。

    Intel(R) Core i7-10700 @ 2.9G
    32G 内存

    测试结果：
    - bin 格式
        - 每个表输出文件 *.bin 164k， 总共大小 59.5 M
        - luban-server 首次生成耗时 15.652 s
        - luban-server 增量生成 797 ms

    - json 格式
        - 每个表输出文件 *.json 1.11M，总共大小555M
        - luban-server 首次生成耗时 17.746 s
        - luban-server 增量生成 796 ms