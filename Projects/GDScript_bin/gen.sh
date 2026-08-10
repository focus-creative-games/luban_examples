#!/bin/zsh

WORKSPACE=../..
LUBAN_DLL=$WORKSPACE/Tools/Luban/Luban.dll
CONF_ROOT=$WORKSPACE/DataTables
PROJECT_ROOT=.

dotnet $LUBAN_DLL \
    -t all \
    -c gdscript-bin \
    -d bin \
    --conf $CONF_ROOT/luban.conf \
    -x outputDataDir=$PROJECT_ROOT/config \
    -x outputCodeDir=$PROJECT_ROOT/gen \
    -x l10n.provider=default \
    -x "l10n.textFile.path=*@$WORKSPACE/DataTables/Data/l10n/texts.json" \
    -x l10n.textFile.keyFieldName=key \
    -x l10n.textFile.languageFieldName=zh \
    -x l10n.convertTextKeyToValue=1
    # -x pathValidator.rootDir=$WORKSPACE/Projects/Csharp_Unity_bin \