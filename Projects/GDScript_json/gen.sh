#!/bin/zsh

WORKSPACE=../..
LUBAN_DLL=$WORKSPACE/Tools/Luban/Luban.dll
CONF_ROOT=$WORKSPACE/DataTables

dotnet $LUBAN_DLL \
    -t all \
    -c gdscript-json \
    -d json \
    --conf $CONF_ROOT/luban.conf \
    -x outputDataDir=json \
    -x outputCodeDir=gen \
    -x pathValidator.rootDir=$WORKSPACE/Projects/Csharp_Unity_bin \
    -x l10n.provider=default \
    -x "l10n.textFile.path=*@$WORKSPACE/DataTables/Data/l10n/texts.json" \
    -x l10n.textFile.keyFieldName=key