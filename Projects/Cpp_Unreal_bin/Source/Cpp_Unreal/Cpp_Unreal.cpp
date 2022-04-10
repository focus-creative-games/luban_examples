// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

#include "Cpp_Unreal.h"
#include "Modules/ModuleManager.h"
#include "Misc/Paths.h"

#include "Gen/gen_types.h"
//#include "Gen/stub_0.cxx"

IMPLEMENT_PRIMARY_GAME_MODULE(MainModule, Cpp_Unreal, "Cpp_Unreal");

void MainModule::StartupModule()
{
    cfg::Tables tables;

    auto dir = FPaths::ProjectContentDir() + TEXT("/../../GenerateDatas/bin/");

    if (tables.load([=](ByteBuf& buf, const std::string& str) { buf.clear(); return buf.loadFromFile(std::string(TCHAR_TO_UTF8(*dir)) + str + ".bytes"); }))
    {
        UE_LOG(LogTemp, Log, TEXT("LOAD SUCC"));
    }
    else
    {
        UE_LOG(LogTemp, Log, TEXT("load fail"));
    }
}
