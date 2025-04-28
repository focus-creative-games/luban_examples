
if not exist "PbGen" (
    mkdir PbGen
)

..\..\Tools\protoc\bin\protoc -I=pb_schemas --csharp_out=PbGen pb_schemas\schema.proto

pause