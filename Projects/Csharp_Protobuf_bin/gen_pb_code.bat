

..\..\Tools\protoc\bin\protoc -I=pb_schemas --csharp_out=Gen pb_schemas\schema.proto

xcopy "pb_schemas\Tables.cs" "Gen\" /s /e /y /q

pause