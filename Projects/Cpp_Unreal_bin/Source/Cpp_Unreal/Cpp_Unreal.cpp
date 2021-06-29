// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

#include "Cpp_Unreal.h"
#include "Modules/ModuleManager.h"
#include "Misc/Paths.h"

#include "Gen/gen_types.h"
//#include "Gen/stub_0.cxx"

IMPLEMENT_PRIMARY_GAME_MODULE(MainModule, Cpp_Unreal, "Cpp_Unreal");



//std::vector<char> buffer;
//
////get length of file
//infile.seekg(0, infile.end);
//size_t length = infile.tellg();
//infile.seekg(0, infile.beg);
//
////read file
//if (length > 0) {
//    buffer.resize(length);
//    infile.read(&buffer[0], length);
//}

void MainModule::StartupModule()
{
    cfg::Tables tables;

    auto dir = FPaths::ProjectContentDir() + TEXT("/config_data");

    if (tables.load([&](ByteBuf& buf, const std::string& str) { buf.clear(); return buf.loadFromFile("config_data/" + str); }))
    {
        UE_LOG(LogTemp, Log, TEXT("LOAD SUCC"));
    }
    else
    {
        UE_LOG(LogTemp, Log, TEXT("load fail"));
    }
}
