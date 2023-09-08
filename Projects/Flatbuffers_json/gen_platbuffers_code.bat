flatc -I schemas --csharp -o Gen schemas\schema.fbs


set FLATC=flatc
set SCHEMA_FILE=schemas\schema.fbs
set DATA_DIR=json
set OUTPUT_DIR=bytes


%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestNull %DATA_DIR%\test_tbtestnull.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbFullTypes %DATA_DIR%\test_tbfulltypes.json

pause