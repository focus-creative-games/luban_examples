
local setmetatable = setmetatable
local pairs = pairs
local ipairs = ipairs
local tinsert = table.insert

local function SimpleClass()
    local class = {}
    class.__index = class
    class.New = function(...)
        local ctor = class.ctor
        local o = ctor and ctor(...) or {}
        setmetatable(o, class)
        return o
    end
    return class
end


local function get_map_size(m)
    local n = 0
    for _ in pairs(m) do
        n = n + 1
    end
    return n
end
local enums =
{
    ---@class ai.EExecutor
     ---@field public CLIENT integer
     ---@field public SERVER integer
    ['ai.EExecutor'] = {   CLIENT=0,  SERVER=1,  };
    ---@class ai.EKeyType
     ---@field public BOOL integer
     ---@field public INT integer
     ---@field public FLOAT integer
     ---@field public STRING integer
     ---@field public VECTOR integer
     ---@field public ROTATOR integer
     ---@field public NAME integer
     ---@field public CLASS integer
     ---@field public ENUM integer
     ---@field public OBJECT integer
    ['ai.EKeyType'] = {   BOOL=1,  INT=2,  FLOAT=3,  STRING=4,  VECTOR=5,  ROTATOR=6,  NAME=7,  CLASS=8,  ENUM=9,  OBJECT=10,  };
    ---@class ai.EFlowAbortMode
     ---@field public NONE integer
     ---@field public LOWER_PRIORITY integer
     ---@field public SELF integer
     ---@field public BOTH integer
    ['ai.EFlowAbortMode'] = {   NONE=0,  LOWER_PRIORITY=1,  SELF=2,  BOTH=3,  };
    ---@class ai.EFinishMode
     ---@field public IMMEDIATE integer
     ---@field public DELAYED integer
    ['ai.EFinishMode'] = {   IMMEDIATE=0,  DELAYED=1,  };
    ---@class ai.ENotifyObserverMode
     ---@field public ON_VALUE_CHANGE integer
     ---@field public ON_RESULT_CHANGE integer
    ['ai.ENotifyObserverMode'] = {   ON_VALUE_CHANGE=0,  ON_RESULT_CHANGE=1,  };
    ---@class ai.EOperator
     ---@field public IS_EQUAL_TO integer
     ---@field public IS_NOT_EQUAL_TO integer
     ---@field public IS_LESS_THAN integer
     ---@field public IS_LESS_THAN_OR_EQUAL_TO integer
     ---@field public IS_GREAT_THAN integer
     ---@field public IS_GREAT_THAN_OR_EQUAL_TO integer
     ---@field public CONTAINS integer
     ---@field public NOT_CONTAINS integer
    ['ai.EOperator'] = {   IS_EQUAL_TO=0,  IS_NOT_EQUAL_TO=1,  IS_LESS_THAN=2,  IS_LESS_THAN_OR_EQUAL_TO=3,  IS_GREAT_THAN=4,  IS_GREAT_THAN_OR_EQUAL_TO=5,  CONTAINS=6,  NOT_CONTAINS=7,  };
    ---@class common.EBoolOperator
     ---@field public AND integer
     ---@field public OR integer
    ['common.EBoolOperator'] = {   AND=0,  OR=1,  };
    ---@class error.EOperation
     ---@field public LOGOUT integer
     ---@field public RESTART integer
    ['error.EOperation'] = {   LOGOUT=0,  RESTART=1,  };
    ---@class error.EErrorCode
     ---@field public OK integer
     ---@field public SERVER_NOT_EXISTS integer
     ---@field public HAS_BIND_SERVER integer
     ---@field public AUTH_FAIL integer
     ---@field public NOT_BIND_SERVER integer
     ---@field public SERVER_ACCESS_FAIL integer
     ---@field public EXAMPLE_FLASH integer
     ---@field public EXAMPLE_MSGBOX integer
     ---@field public EXAMPLE_DLG_OK integer
     ---@field public EXAMPLE_DLG_OK_CANCEL integer
     ---@field public ROLE_CREATE_NAME_INVALID_CHAR integer
     ---@field public ROLE_CREATE_NAME_EMPTY integer
     ---@field public ROLE_CREATE_NAME_EXCEED_MAX_LENGTH integer
     ---@field public ROLE_CREATE_ROLE_LIST_FULL integer
     ---@field public ROLE_CREATE_INVALID_PROFESSION integer
     ---@field public ROLE_CREATE_INVALID_GENDER integer
     ---@field public ROLE_NOT_OWNED_BY_USER integer
     ---@field public ROLE_LEVEL_NOT_ARRIVE integer
     ---@field public PARAM_ILLEGAL integer
     ---@field public TEMP_BAG_NOT_EMPTY integer
     ---@field public ITEM_CAN_NOT_USE integer
     ---@field public CURRENCY_NOT_ENOUGH integer
     ---@field public BAG_IS_FULL integer
     ---@field public ITEM_NOT_ENOUGH integer
     ---@field public ITEM_IN_BAG integer
     ---@field public GENDER_NOT_MATCH integer
     ---@field public LEVEL_TOO_LOW integer
     ---@field public LEVEL_TOO_HIGH integer
     ---@field public EXCEED_LIMIT integer
     ---@field public OVER_TIME integer
     ---@field public SERVER_ERROR integer
     ---@field public SKILL_NOT_IN_LIST integer
     ---@field public SKILL_NOT_COOLDOWN integer
     ---@field public SKILL_TARGET_NOT_EXIST integer
     ---@field public SKILL_ANOTHER_CASTING integer
     ---@field public SKILL_OUT_OF_DISTANCE integer
     ---@field public SKILL_TARGET_CAMP_NOT_MATCH integer
     ---@field public SKILL_INVALID_DIRECTION integer
     ---@field public SKILL_NOT_IN_SELECT_SHAPE integer
     ---@field public SKILL_ENERGY_NOT_ENOUGH integer
     ---@field public DIALOG_NODE_NOT_CHOOSEN integer
     ---@field public DIALOG_NOT_FINISH integer
     ---@field public DIALOG_HAS_FINISH integer
     ---@field public QUEST_STAGE_NOT_FINISHED integer
     ---@field public QUEST_NOT_DOING integer
     ---@field public QUEST_STAGE_NOT_DOING integer
     ---@field public QUEST_HAS_ACCEPTED integer
     ---@field public MAP_OBJECT_NOT_EXIST integer
     ---@field public INTERACTION_OBJECT_NOT_SUPPORT_OPERATION integer
     ---@field public HAS_NOT_EQUIP integer
     ---@field public HANDHELD_EQUIP_ID_NOT_MATCH integer
     ---@field public NOT_AVAILABLE_SUIT_ID integer
     ---@field public NO_INTERACTION_COMPONENT integer
     ---@field public HAS_INTERACTED integer
     ---@field public VIALITY_NOT_ENOUGH integer
     ---@field public PLAYER_SESSION_NOT_EXIST integer
     ---@field public PLAYER_SESSION_WORLD_PLAYER_NOT_INIT integer
     ---@field public MAP_NOT_EXIST integer
     ---@field public MAIL_TYPE_ERROR integer
     ---@field public MAIL_NOT_EXITST integer
     ---@field public MAIL_HAVE_DELETED integer
     ---@field public MAIL_AWARD_HAVE_RECEIVED integer
     ---@field public MAIL_OPERATE_TYPE_ERROR integer
     ---@field public MAIL_CONDITION_NOT_MEET integer
     ---@field public MAIL_STATE_ERROR integer
     ---@field public MAIL_NO_AWARD integer
     ---@field public MAIL_BOX_IS_FULL integer
     ---@field public PROP_SCORE_NOT_BIGGER_THAN integer
     ---@field public NOT_WEAR_CLOTHES integer
     ---@field public NOT_WEAR_SUIT integer
     ---@field public SUIT_NOT_UNLOCK integer
     ---@field public SUIT_COMPONENT_NOT_UNLOCK integer
     ---@field public SUIT_STATE_ERROR integer
     ---@field public SUIT_COMPONENT_STATE_ERROR integer
     ---@field public SUIT_COMPONENT_NO_NEED_LEARN integer
     ---@field public STORE_NOT_ENABLED integer
     ---@field public SHELF_NOT_ENABLED integer
     ---@field public GOODS_NOT_ENABLED integer
     ---@field public GOODS_NOT_IN_CUR_REFRESH integer
     ---@field public RETRY integer
     ---@field public NOT_COOLDOWN integer
     ---@field public SELFIE_UNLOCK integer
     ---@field public SELFIE_ALREADY_UNLOCK integer
     ---@field public SELFIE_LACK_STARTS integer
     ---@field public SELFIE_HAD_REWARD integer
    ['error.EErrorCode'] = {   OK=0,  SERVER_NOT_EXISTS=1,  HAS_BIND_SERVER=2,  AUTH_FAIL=3,  NOT_BIND_SERVER=4,  SERVER_ACCESS_FAIL=5,  EXAMPLE_FLASH=6,  EXAMPLE_MSGBOX=7,  EXAMPLE_DLG_OK=8,  EXAMPLE_DLG_OK_CANCEL=9,  ROLE_CREATE_NAME_INVALID_CHAR=100,  ROLE_CREATE_NAME_EMPTY=101,  ROLE_CREATE_NAME_EXCEED_MAX_LENGTH=102,  ROLE_CREATE_ROLE_LIST_FULL=103,  ROLE_CREATE_INVALID_PROFESSION=104,  ROLE_CREATE_INVALID_GENDER=105,  ROLE_NOT_OWNED_BY_USER=106,  ROLE_LEVEL_NOT_ARRIVE=107,  PARAM_ILLEGAL=200,  TEMP_BAG_NOT_EMPTY=201,  ITEM_CAN_NOT_USE=202,  CURRENCY_NOT_ENOUGH=203,  BAG_IS_FULL=204,  ITEM_NOT_ENOUGH=205,  ITEM_IN_BAG=206,  GENDER_NOT_MATCH=300,  LEVEL_TOO_LOW=301,  LEVEL_TOO_HIGH=302,  EXCEED_LIMIT=303,  OVER_TIME=304,  SERVER_ERROR=305,  SKILL_NOT_IN_LIST=400,  SKILL_NOT_COOLDOWN=401,  SKILL_TARGET_NOT_EXIST=402,  SKILL_ANOTHER_CASTING=403,  SKILL_OUT_OF_DISTANCE=404,  SKILL_TARGET_CAMP_NOT_MATCH=405,  SKILL_INVALID_DIRECTION=406,  SKILL_NOT_IN_SELECT_SHAPE=407,  SKILL_ENERGY_NOT_ENOUGH=408,  DIALOG_NODE_NOT_CHOOSEN=500,  DIALOG_NOT_FINISH=501,  DIALOG_HAS_FINISH=502,  QUEST_STAGE_NOT_FINISHED=503,  QUEST_NOT_DOING=504,  QUEST_STAGE_NOT_DOING=505,  QUEST_HAS_ACCEPTED=506,  MAP_OBJECT_NOT_EXIST=600,  INTERACTION_OBJECT_NOT_SUPPORT_OPERATION=601,  HAS_NOT_EQUIP=602,  HANDHELD_EQUIP_ID_NOT_MATCH=603,  NOT_AVAILABLE_SUIT_ID=604,  NO_INTERACTION_COMPONENT=605,  HAS_INTERACTED=606,  VIALITY_NOT_ENOUGH=607,  PLAYER_SESSION_NOT_EXIST=608,  PLAYER_SESSION_WORLD_PLAYER_NOT_INIT=609,  MAP_NOT_EXIST=610,  MAIL_TYPE_ERROR=700,  MAIL_NOT_EXITST=701,  MAIL_HAVE_DELETED=702,  MAIL_AWARD_HAVE_RECEIVED=703,  MAIL_OPERATE_TYPE_ERROR=704,  MAIL_CONDITION_NOT_MEET=705,  MAIL_STATE_ERROR=706,  MAIL_NO_AWARD=707,  MAIL_BOX_IS_FULL=708,  PROP_SCORE_NOT_BIGGER_THAN=800,  NOT_WEAR_CLOTHES=801,  NOT_WEAR_SUIT=802,  SUIT_NOT_UNLOCK=900,  SUIT_COMPONENT_NOT_UNLOCK=901,  SUIT_STATE_ERROR=902,  SUIT_COMPONENT_STATE_ERROR=903,  SUIT_COMPONENT_NO_NEED_LEARN=904,  STORE_NOT_ENABLED=1000,  SHELF_NOT_ENABLED=1001,  GOODS_NOT_ENABLED=1002,  GOODS_NOT_IN_CUR_REFRESH=1003,  RETRY=1100,  NOT_COOLDOWN=1101,  SELFIE_UNLOCK=1200,  SELFIE_ALREADY_UNLOCK=1201,  SELFIE_LACK_STARTS=1202,  SELFIE_HAD_REWARD=1203,  };
    ---@class item.EItemQuality
     ---@field public WHITE integer
     ---@field public GREEN integer
     ---@field public BLUE integer
     ---@field public PURPLE integer
     ---@field public GOLDEN integer
    ['item.EItemQuality'] = {   WHITE=0,  GREEN=1,  BLUE=2,  PURPLE=3,  GOLDEN=4,  };
    ---@class item.ECurrencyType
     ---@field public DIAMOND integer
     ---@field public GOLD integer
     ---@field public SILVER integer
     ---@field public EXP integer
     ---@field public POWER_POINT integer
    ['item.ECurrencyType'] = {   DIAMOND=1,  GOLD=2,  SILVER=3,  EXP=4,  POWER_POINT=5,  };
    ---@class item.EMajorType
     ---@field public CURRENCY integer
     ---@field public CLOTH integer
     ---@field public QUEST integer
     ---@field public CONSUMABLES integer
     ---@field public TREASURE_BOX integer
     ---@field public ACHIEVEMENT_AND_TITLE integer
     ---@field public HEAD_FRAME integer
     ---@field public VOICE integer
     ---@field public ACTION integer
     ---@field public EXPANSION integer
     ---@field public MATERIAL integer
    ['item.EMajorType'] = {   CURRENCY=1,  CLOTH=2,  QUEST=3,  CONSUMABLES=4,  TREASURE_BOX=5,  ACHIEVEMENT_AND_TITLE=6,  HEAD_FRAME=7,  VOICE=8,  ACTION=9,  EXPANSION=10,  MATERIAL=11,  };
    ---@class item.EMinorType
     ---@field public DIAMOND integer
     ---@field public GOLD integer
     ---@field public SILVER integer
     ---@field public EXP integer
     ---@field public POWER_POINT integer
     ---@field public HAIR_STYLE integer
     ---@field public COAT integer
     ---@field public UPPER_JACKET integer
     ---@field public TROUSERS integer
     ---@field public SKIRT integer
     ---@field public SOCKS integer
     ---@field public SHOES integer
     ---@field public HAIR_ACCESSORY integer
     ---@field public HAT integer
     ---@field public EARRING integer
     ---@field public NECKLACE integer
     ---@field public BRACELET integer
     ---@field public HAIR_CLASP integer
     ---@field public GLOVE integer
     ---@field public HANDHELD_OBJECT integer
     ---@field public SPECIAL integer
     ---@field public BASE_COSMETIC integer
     ---@field public EYEBROW_COSMETIC integer
     ---@field public EYELASH integer
     ---@field public COSMETIC_CONTACT_LENSES integer
     ---@field public LIP_COSMETIC integer
     ---@field public SKIN_COLOR integer
     ---@field public ONE_PIECE_DRESS integer
     ---@field public SWITCH_CLOTHES_SCENE integer
     ---@field public QUEST integer
     ---@field public CAST integer
     ---@field public SWORD integer
     ---@field public BOW_ARROW integer
     ---@field public WANDS integer
     ---@field public SPECIAL_TOOL integer
     ---@field public FOOD integer
     ---@field public TREASURE_BOX integer
     ---@field public KEY integer
     ---@field public MULTI_CHOOSE_TREASURE_BOX integer
     ---@field public ACHIEVEMENT integer
     ---@field public TITLE integer
     ---@field public AVATAR_FRAME integer
     ---@field public VOICE integer
     ---@field public IDLE_POSE integer
     ---@field public PHOTO_POSE integer
     ---@field public BAG integer
     ---@field public FRIEND_CAPACITY integer
     ---@field public CONSTRUCTION_MATERIAL integer
     ---@field public DESIGN_DRAWING integer
    ['item.EMinorType'] = {   DIAMOND=101,  GOLD=102,  SILVER=103,  EXP=104,  POWER_POINT=105,  HAIR_STYLE=210,  COAT=220,  UPPER_JACKET=230,  TROUSERS=241,  SKIRT=242,  SOCKS=250,  SHOES=260,  HAIR_ACCESSORY=271,  HAT=272,  EARRING=273,  NECKLACE=274,  BRACELET=275,  HAIR_CLASP=276,  GLOVE=277,  HANDHELD_OBJECT=278,  SPECIAL=279,  BASE_COSMETIC=281,  EYEBROW_COSMETIC=282,  EYELASH=283,  COSMETIC_CONTACT_LENSES=284,  LIP_COSMETIC=285,  SKIN_COLOR=286,  ONE_PIECE_DRESS=290,  SWITCH_CLOTHES_SCENE=291,  QUEST=301,  CAST=401,  SWORD=421,  BOW_ARROW=422,  WANDS=423,  SPECIAL_TOOL=424,  FOOD=403,  TREASURE_BOX=501,  KEY=502,  MULTI_CHOOSE_TREASURE_BOX=503,  ACHIEVEMENT=601,  TITLE=602,  AVATAR_FRAME=701,  VOICE=801,  IDLE_POSE=901,  PHOTO_POSE=902,  BAG=1001,  FRIEND_CAPACITY=1002,  CONSTRUCTION_MATERIAL=1101,  DESIGN_DRAWING=1102,  };
    ---@class item.EClothersStarQualityType
     ---@field public ONE integer
     ---@field public TWO integer
     ---@field public THREE integer
     ---@field public FOUR integer
     ---@field public FIVE integer
     ---@field public SIX integer
     ---@field public SEVEN integer
     ---@field public EIGHT integer
     ---@field public NINE integer
     ---@field public TEN integer
    ['item.EClothersStarQualityType'] = {   ONE=1,  TWO=2,  THREE=3,  FOUR=4,  FIVE=5,  SIX=6,  SEVEN=7,  EIGHT=8,  NINE=9,  TEN=10,  };
    ---@class item.EClothersTag
     ---@field public FANG_SHAI integer
     ---@field public WU_ZHE integer
    ['item.EClothersTag'] = {   FANG_SHAI=1,  WU_ZHE=2,  };
    ---@class item.EUseType
     ---@field public MANUAL integer
     ---@field public AUTO integer
    ['item.EUseType'] = {   MANUAL=0,  AUTO=1,  };
    ---@class item.EClothesHidePartType
     ---@field public CHEST integer
     ---@field public HEAD integer
     ---@field public SPINE_UPPER integer
     ---@field public SPINE_LOWER integer
     ---@field public HIP integer
     ---@field public LEG_UPPER integer
     ---@field public LEG_MIDDLE integer
     ---@field public LEG_LOWER integer
    ['item.EClothesHidePartType'] = {   CHEST=0,  HEAD=1,  SPINE_UPPER=2,  SPINE_LOWER=3,  HIP=4,  LEG_UPPER=5,  LEG_MIDDLE=6,  LEG_LOWER=7,  };
    ---@class item.EClothesPropertyType
     ---@field public JIAN_YUE integer
     ---@field public HUA_LI integer
     ---@field public KE_AI integer
     ---@field public CHENG_SHU integer
     ---@field public HUO_PO integer
     ---@field public YOU_YA integer
     ---@field public QING_CHUN integer
     ---@field public XING_GAN integer
     ---@field public QING_LIANG integer
     ---@field public BAO_NUAN integer
    ['item.EClothesPropertyType'] = {   JIAN_YUE=1,  HUA_LI=2,  KE_AI=3,  CHENG_SHU=4,  HUO_PO=5,  YOU_YA=6,  QING_CHUN=7,  XING_GAN=8,  QING_LIANG=9,  BAO_NUAN=10,  };
    ---@class item.EItemFunctionType
     ---@field public REPLACE_HANDHELD integer
     ---@field public USE_DESIGN_DRAWING integer
    ['item.EItemFunctionType'] = {   REPLACE_HANDHELD=0,  USE_DESIGN_DRAWING=1,  };
    ---@class limit.ENamespace
     ---@field public ITEM_DAILY_OBTAIN integer
     ---@field public TREASURE_DAILY_USE integer
     ---@field public STORE_GOODS_LIMIT_BUY integer
    ['limit.ENamespace'] = {   ITEM_DAILY_OBTAIN=1,  TREASURE_DAILY_USE=2,  STORE_GOODS_LIMIT_BUY=3,  };
    ---@class mail.EMailType
     ---@field public GLOBAL integer
     ---@field public SYSTEM integer
    ['mail.EMailType'] = {   GLOBAL=0,  SYSTEM=1,  };
    ---@class role.EGenderType
     ---@field public MALE integer
     ---@field public FEMALE integer
    ['role.EGenderType'] = {   MALE=1,  FEMALE=2,  };
    ---@class role.EProfession
     ---@field public TEST_PROFESSION integer
    ['role.EProfession'] = {   TEST_PROFESSION=1,  };
    ---@class test.DemoEnum
     ---@field public NONE integer
     ---@field public A integer
     ---@field public B integer
     ---@field public C integer
     ---@field public D integer
    ['test.DemoEnum'] = {   NONE=0,  A=1,  B=2,  C=4,  D=5,  };
    ---@class test.DemoFlag
     ---@field public A integer
     ---@field public B integer
     ---@field public C integer
     ---@field public D integer
    ['test.DemoFlag'] = {   A=1,  B=2,  C=4,  D=8,  };
    ---@class test.ETestUeType
     ---@field public WHITE integer
     ---@field public BLACK integer
    ['test.ETestUeType'] = {   WHITE=0,  BLACK=1,  };
    ---@class test.ETestEmptyEnum
    ['test.ETestEmptyEnum'] = {   };
    ---@class test.ETestEmptyEnum2
     ---@field public SMALL_THAN_256 integer
     ---@field public X_256 integer
     ---@field public X_257 integer
    ['test.ETestEmptyEnum2'] = {   SMALL_THAN_256=255,  X_256=256,  X_257=257,  };
    ---@class test.AudioType
     ---@field public UNKNOWN integer
     ---@field public ACC integer
     ---@field public AIFF integer
    ['test.AudioType'] = {   UNKNOWN=0,  ACC=1,  AIFF=2,  };
    ---@class test.ETestQuality
     ---@field public A integer
     ---@field public B integer
     ---@field public C integer
     ---@field public D integer
    ['test.ETestQuality'] = {   A=1,  B=2,  C=3,  D=4,  };
    ---@class test.AccessFlag
     ---@field public WRITE integer
     ---@field public READ integer
     ---@field public TRUNCATE integer
     ---@field public NEW integer
     ---@field public READ_WRITE integer
    ['test.AccessFlag'] = {   WRITE=1,  READ=2,  TRUNCATE=4,  NEW=8,  READ_WRITE=3,  };
}

local tables =
{
    { name='TbBlackboard', file='ai_tbblackboard', mode='map', index='name', value_type='ai.Blackboard' },

    { name='TbBehaviorTree', file='ai_tbbehaviortree', mode='map', index='id', value_type='ai.BehaviorTree' },

    { name='TbClazz', file='blueprint_tbclazz', mode='map', index='name', value_type='blueprint.Clazz' },

    { name='TbDrop', file='bonus_tbdrop', mode='map', index='id', value_type='bonus.DropInfo' },

    { name='TbGlobalConfig', file='common_tbglobalconfig', mode='one', value_type='common.GlobalConfig'},
    
    { name='TbErrorInfo', file='error_tberrorinfo', mode='map', index='code', value_type='error.ErrorInfo' },

    { name='TbCodeInfo', file='error_tbcodeinfo', mode='map', index='code', value_type='error.CodeInfo' },

    { name='TbItem', file='item_tbitem', mode='map', index='id', value_type='item.Item' },

    { name='TbItemFunc', file='item_tbitemfunc', mode='map', index='minor_type', value_type='item.ItemFunction' },

    { name='TbItemExtra', file='item_tbitemextra', mode='map', index='id', value_type='item.ItemExtra' },

    { name='TbL10NDemo', file='l10n_tbl10ndemo', mode='map', index='id', value_type='l10n.L10NDemo' },

    { name='TbPatchDemo', file='l10n_tbpatchdemo', mode='map', index='id', value_type='l10n.PatchDemo' },

    { name='TbSystemMail', file='mail_tbsystemmail', mode='map', index='id', value_type='mail.SystemMail' },

    { name='TbGlobalMail', file='mail_tbglobalmail', mode='map', index='id', value_type='mail.GlobalMail' },

    { name='TbRoleLevelExpAttr', file='role_tbrolelevelexpattr', mode='map', index='level', value_type='role.LevelExpAttr' },

    { name='TbRoleLevelBonusCoefficient', file='role_tbrolelevelbonuscoefficient', mode='map', index='id', value_type='role.LevelBonus' },

    { name='TbTestTag', file='tag_tbtesttag', mode='map', index='id', value_type='tag.TestTag' },

    { name='TbFullTypes', file='test_tbfulltypes', mode='map', index='x4', value_type='test.DemoType2' },

    { name='TbSingleton', file='test_tbsingleton', mode='one', value_type='test.DemoSingletonType'},
    
    { name='TbNotIndexList', file='test_tbnotindexlist', mode='list', index='', value_type='test.NotIndexList' },

    { name='TbMultiUnionIndexList', file='test_tbmultiunionindexlist', mode='list', index='id1+id2+id3', value_type='test.MultiUnionIndexList' },

    { name='TbMultiIndexList', file='test_tbmultiindexlist', mode='list', index='id1,id2,id3', value_type='test.MultiIndexList' },

    { name='TbDataFromMisc', file='test_tbdatafrommisc', mode='map', index='x4', value_type='test.DemoType2' },

    { name='TbMultiRowRecord', file='test_tbmultirowrecord', mode='map', index='id', value_type='test.MultiRowRecord' },

    { name='TbTestMultiColumn', file='test_tbtestmulticolumn', mode='map', index='id', value_type='test.TestMultiColumn' },

    { name='TbMultiRowTitle', file='test_tbmultirowtitle', mode='map', index='id', value_type='test.MultiRowTitle' },

    { name='TbTestNull', file='test_tbtestnull', mode='map', index='id', value_type='test.TestNull' },

    { name='TbDemoPrimitive', file='test_tbdemoprimitive', mode='map', index='x4', value_type='test.DemoPrimitiveTypesTable' },

    { name='TbTestString', file='test_tbteststring', mode='map', index='id', value_type='test.TestString' },

    { name='TbDemoGroup', file='test_tbdemogroup', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbDemoGroup_C', file='test_tbdemogroup_c', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbDemoGroup_S', file='test_tbdemogroup_s', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbDemoGroup_E', file='test_tbdemogroup_e', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbTestGlobal', file='test_tbtestglobal', mode='one', value_type='test.TestGlobal'},
    
    { name='TbTestBeRef', file='test_tbtestberef', mode='map', index='id', value_type='test.TestBeRef' },

    { name='TbTestBeRef2', file='test_tbtestberef2', mode='map', index='id', value_type='test.TestBeRef' },

    { name='TbTestRef', file='test_tbtestref', mode='map', index='id', value_type='test.TestRef' },

    { name='TbTestSize', file='test_tbtestsize', mode='map', index='id', value_type='test.TestSize' },

    { name='TbTestSet', file='test_tbtestset', mode='map', index='id', value_type='test.TestSet' },

    { name='TbDetectCsvEncoding', file='test_tbdetectcsvencoding', mode='map', index='id', value_type='test.DetectEncoding' },

    { name='TbItem2', file='test_tbitem2', mode='map', index='id', value_type='test.ItemBase' },

    { name='TbDefineFromExcel', file='test_tbdefinefromexcel', mode='map', index='id', value_type='test.DefineFromExcel' },

    { name='TbDefineFromExcelOne', file='test_tbdefinefromexcelone', mode='one', value_type='test.DefineFromExcelOne'},
    
    { name='TbTestIndex', file='test_tbtestindex', mode='map', index='id', value_type='test.TestIndex' },

    { name='TbTestMap', file='test_tbtestmap', mode='map', index='id', value_type='test.TestMap' },

    { name='TbExcelFromJson', file='test_tbexcelfromjson', mode='map', index='x4', value_type='test.ExcelFromJson' },

    { name='TbCompositeJsonTable1', file='test_tbcompositejsontable1', mode='map', index='id', value_type='test.CompositeJsonTable1' },

    { name='TbCompositeJsonTable2', file='test_tbcompositejsontable2', mode='map', index='id', value_type='test.CompositeJsonTable2' },

    { name='TbCompositeJsonTable3', file='test_tbcompositejsontable3', mode='one', value_type='test.CompositeJsonTable3'},
    
    { name='TbExcelFromJsonMultiRow', file='test_tbexcelfromjsonmultirow', mode='map', index='id', value_type='test.ExcelFromJsonMultiRow' },

    { name='TbTestSep', file='test_tbtestsep', mode='map', index='id', value_type='test.TestSep' },

    { name='TbTestScriptableObject', file='test_tbtestscriptableobject', mode='map', index='id', value_type='test.TestScriptableObject' },

    { name='TbTestExternalType', file='test_tbtestexternaltype', mode='map', index='id', value_type='test.TestExternalType' },

    { name='TbDemoGroupDefineFromExcel', file='test_tbdemogroupdefinefromexcel', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbDefineFromExcel2', file='test_tbdefinefromexcel2', mode='map', index='id', value_type='test.DefineFromExcel2' },

    { name='TbTestExcelBean', file='test_tbtestexcelbean', mode='map', index='x1', value_type='test.TestExcelBean1' },

    { name='TbTestDesc', file='test_tbtestdesc', mode='list', index='id,name', value_type='test.TestDesc' },

}

return { enums = enums, tables = tables }
