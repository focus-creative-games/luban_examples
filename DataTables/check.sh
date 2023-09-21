#!/bin/bash

WORKSPACE=..

LUBAN_DLL=$WORKSPACE/Tools/Luban/Luban.dll
CONF_ROOT=.

dotnet $LUBAN_DLL \
    -t all \
	-f \
    --conf $CONF_ROOT/luban.conf \
    -x pathValidator.rootDir=$WORKSPACE/Projects/Csharp_Unity_bin \
    -x l10n.textProviderFile=$CONF_ROOT/Datas/l10n/texts.json