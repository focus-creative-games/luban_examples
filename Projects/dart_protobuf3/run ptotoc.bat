
@REM 注意 需要使用 Dart 的包管理工具 pub 安装插件：'dart pub global activate protoc_plugin'
set PATH=%PATH%;%LOCALAPPDATA%\Pub\Cache\bin
protoc -I=pb_schemas --dart_out=grpc:lib/gen pb_schemas\schema.proto

move /Y pb_schemas\Tables.dart lib\gen\

pause