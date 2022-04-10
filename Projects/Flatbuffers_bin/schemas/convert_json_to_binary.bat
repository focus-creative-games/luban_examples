
echo off

set FLATC=%1
set SCHEMA_FILE=%2
set DATA_DIR=%3
set OUTPUT_DIR=%4

%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.AiTbBlackboard %DATA_DIR%\ai_tbblackboard.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.AiTbBehaviorTree %DATA_DIR%\ai_tbbehaviortree.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.BlueprintTbClazz %DATA_DIR%\blueprint_tbclazz.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.BonusTbDrop %DATA_DIR%\bonus_tbdrop.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.CommonTbGlobalConfig %DATA_DIR%\common_tbglobalconfig.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.ErrorTbErrorInfo %DATA_DIR%\error_tberrorinfo.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.ErrorTbCodeInfo %DATA_DIR%\error_tbcodeinfo.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.ItemTbItem %DATA_DIR%\item_tbitem.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.ItemTbItemFunc %DATA_DIR%\item_tbitemfunc.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.ItemTbItemExtra %DATA_DIR%\item_tbitemextra.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.L10nTbL10NDemo %DATA_DIR%\l10n_tbl10ndemo.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.L10nTbPatchDemo %DATA_DIR%\l10n_tbpatchdemo.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.MailTbSystemMail %DATA_DIR%\mail_tbsystemmail.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.MailTbGlobalMail %DATA_DIR%\mail_tbglobalmail.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.RoleTbRoleLevelExpAttr %DATA_DIR%\role_tbrolelevelexpattr.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.RoleTbRoleLevelBonusCoefficient %DATA_DIR%\role_tbrolelevelbonuscoefficient.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TagTbTestTag %DATA_DIR%\tag_tbtesttag.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbFullTypes %DATA_DIR%\test_tbfulltypes.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbSingleton %DATA_DIR%\test_tbsingleton.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbNotIndexList %DATA_DIR%\test_tbnotindexlist.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbMultiUnionIndexList %DATA_DIR%\test_tbmultiunionindexlist.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbMultiIndexList %DATA_DIR%\test_tbmultiindexlist.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDataFromMisc %DATA_DIR%\test_tbdatafrommisc.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbMultiRowRecord %DATA_DIR%\test_tbmultirowrecord.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbMultiRowTitle %DATA_DIR%\test_tbmultirowtitle.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestNull %DATA_DIR%\test_tbtestnull.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoPrimitive %DATA_DIR%\test_tbdemoprimitive.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestString %DATA_DIR%\test_tbteststring.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoGroup %DATA_DIR%\test_tbdemogroup.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoGroup_C %DATA_DIR%\test_tbdemogroup_c.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoGroup_S %DATA_DIR%\test_tbdemogroup_s.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoGroup_E %DATA_DIR%\test_tbdemogroup_e.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestGlobal %DATA_DIR%\test_tbtestglobal.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestBeRef %DATA_DIR%\test_tbtestberef.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestBeRef2 %DATA_DIR%\test_tbtestberef2.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestRef %DATA_DIR%\test_tbtestref.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestSize %DATA_DIR%\test_tbtestsize.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestSet %DATA_DIR%\test_tbtestset.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDetectCsvEncoding %DATA_DIR%\test_tbdetectcsvencoding.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDefineFromExcel %DATA_DIR%\test_tbdefinefromexcel.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDefineFromExcelOne %DATA_DIR%\test_tbdefinefromexcelone.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestIndex %DATA_DIR%\test_tbtestindex.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestMap %DATA_DIR%\test_tbtestmap.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbExcelFromJson %DATA_DIR%\test_tbexcelfromjson.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbCompositeJsonTable1 %DATA_DIR%\test_tbcompositejsontable1.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbCompositeJsonTable2 %DATA_DIR%\test_tbcompositejsontable2.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbCompositeJsonTable3 %DATA_DIR%\test_tbcompositejsontable3.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbExcelFromJsonMultiRow %DATA_DIR%\test_tbexcelfromjsonmultirow.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestSep %DATA_DIR%\test_tbtestsep.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestExternalType %DATA_DIR%\test_tbtestexternaltype.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDemoGroupDefineFromExcel %DATA_DIR%\test_tbdemogroupdefinefromexcel.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbDefineFromExcel2 %DATA_DIR%\test_tbdefinefromexcel2.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestExcelBean %DATA_DIR%\test_tbtestexcelbean.json
%FLATC% -o %OUTPUT_DIR% -b %SCHEMA_FILE% --root-type cfg.TestTbTestDesc %DATA_DIR%\test_tbtestdesc.json
