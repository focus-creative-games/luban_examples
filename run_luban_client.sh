WORKDIR=`pwd`/DesignerConfigs
dotnet ./Tools/Luban.Client/Luban.Client.dll \
    -h 127.0.0.1 \
    -p 8899 \
    -j cfg\
    --\
    --define_file $WORKDIR/Defines/__root__.xml \
    --input_data_dir $WORKDIR/Datas\
    --output_data_dir $WORKDIR/output/data \
    --output_code_dir $WORKDIR/output/code \
    --service server\
    --export_test_data\
    --gen_types "code_cs_bin,data_json"
