
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
     ---@field public CLIENT int
     ---@field public SERVER int
    ['ai.EExecutor'] = {   CLIENT=0,  SERVER=1,  };
    ---@class ai.EKeyType
     ---@field public BOOL int
     ---@field public INT int
     ---@field public FLOAT int
     ---@field public STRING int
     ---@field public VECTOR int
     ---@field public ROTATOR int
     ---@field public NAME int
     ---@field public CLASS int
     ---@field public ENUM int
     ---@field public OBJECT int
    ['ai.EKeyType'] = {   BOOL=1,  INT=2,  FLOAT=3,  STRING=4,  VECTOR=5,  ROTATOR=6,  NAME=7,  CLASS=8,  ENUM=9,  OBJECT=10,  };
    ---@class ai.EFlowAbortMode
     ---@field public NONE int
     ---@field public LOWER_PRIORITY int
     ---@field public SELF int
     ---@field public BOTH int
    ['ai.EFlowAbortMode'] = {   NONE=0,  LOWER_PRIORITY=1,  SELF=2,  BOTH=3,  };
    ---@class ai.EFinishMode
     ---@field public IMMEDIATE int
     ---@field public DELAYED int
    ['ai.EFinishMode'] = {   IMMEDIATE=0,  DELAYED=1,  };
    ---@class ai.ENotifyObserverMode
     ---@field public ON_VALUE_CHANGE int
     ---@field public ON_RESULT_CHANGE int
    ['ai.ENotifyObserverMode'] = {   ON_VALUE_CHANGE=0,  ON_RESULT_CHANGE=1,  };
    ---@class ai.EOperator
     ---@field public IS_EQUAL_TO int
     ---@field public IS_NOT_EQUAL_TO int
     ---@field public IS_LESS_THAN int
     ---@field public IS_LESS_THAN_OR_EQUAL_TO int
     ---@field public IS_GREAT_THAN int
     ---@field public IS_GREAT_THAN_OR_EQUAL_TO int
     ---@field public CONTAINS int
     ---@field public NOT_CONTAINS int
    ['ai.EOperator'] = {   IS_EQUAL_TO=0,  IS_NOT_EQUAL_TO=1,  IS_LESS_THAN=2,  IS_LESS_THAN_OR_EQUAL_TO=3,  IS_GREAT_THAN=4,  IS_GREAT_THAN_OR_EQUAL_TO=5,  CONTAINS=6,  NOT_CONTAINS=7,  };
    ---@class common.EBoolOperator
     ---@field public AND int
     ---@field public OR int
    ['common.EBoolOperator'] = {   AND=0,  OR=1,  };
    ---@class error.EOperation
     ---@field public LOGOUT int
     ---@field public RESTART int
    ['error.EOperation'] = {   LOGOUT=0,  RESTART=1,  };
    ---@class error.EErrorCode
     ---@field public OK int
     ---@field public SERVER_NOT_EXISTS int
     ---@field public HAS_BIND_SERVER int
     ---@field public AUTH_FAIL int
     ---@field public NOT_BIND_SERVER int
     ---@field public SERVER_ACCESS_FAIL int
     ---@field public EXAMPLE_FLASH int
     ---@field public EXAMPLE_MSGBOX int
     ---@field public EXAMPLE_DLG_OK int
     ---@field public EXAMPLE_DLG_OK_CANCEL int
     ---@field public ROLE_CREATE_NAME_INVALID_CHAR int
     ---@field public ROLE_CREATE_NAME_EMPTY int
     ---@field public ROLE_CREATE_NAME_EXCEED_MAX_LENGTH int
     ---@field public ROLE_CREATE_ROLE_LIST_FULL int
     ---@field public ROLE_CREATE_INVALID_PROFESSION int
     ---@field public ROLE_CREATE_INVALID_GENDER int
     ---@field public ROLE_NOT_OWNED_BY_USER int
     ---@field public ROLE_LEVEL_NOT_ARRIVE int
     ---@field public PARAM_ILLEGAL int
     ---@field public TEMP_BAG_NOT_EMPTY int
     ---@field public ITEM_CAN_NOT_USE int
     ---@field public CURRENCY_NOT_ENOUGH int
     ---@field public BAG_IS_FULL int
     ---@field public ITEM_NOT_ENOUGH int
     ---@field public ITEM_IN_BAG int
     ---@field public GENDER_NOT_MATCH int
     ---@field public LEVEL_TOO_LOW int
     ---@field public LEVEL_TOO_HIGH int
     ---@field public EXCEED_LIMIT int
     ---@field public OVER_TIME int
     ---@field public SERVER_ERROR int
     ---@field public SKILL_NOT_IN_LIST int
     ---@field public SKILL_NOT_COOLDOWN int
     ---@field public SKILL_TARGET_NOT_EXIST int
     ---@field public SKILL_ANOTHER_CASTING int
     ---@field public SKILL_OUT_OF_DISTANCE int
     ---@field public SKILL_TARGET_CAMP_NOT_MATCH int
     ---@field public SKILL_INVALID_DIRECTION int
     ---@field public SKILL_NOT_IN_SELECT_SHAPE int
     ---@field public SKILL_ENERGY_NOT_ENOUGH int
     ---@field public DIALOG_NODE_NOT_CHOOSEN int
     ---@field public DIALOG_NOT_FINISH int
     ---@field public DIALOG_HAS_FINISH int
     ---@field public QUEST_STAGE_NOT_FINISHED int
     ---@field public QUEST_NOT_DOING int
     ---@field public QUEST_STAGE_NOT_DOING int
     ---@field public QUEST_HAS_ACCEPTED int
     ---@field public MAP_OBJECT_NOT_EXIST int
     ---@field public INTERACTION_OBJECT_NOT_SUPPORT_OPERATION int
     ---@field public HAS_NOT_EQUIP int
     ---@field public HANDHELD_EQUIP_ID_NOT_MATCH int
     ---@field public NOT_AVAILABLE_SUIT_ID int
     ---@field public NO_INTERACTION_COMPONENT int
     ---@field public HAS_INTERACTED int
     ---@field public VIALITY_NOT_ENOUGH int
     ---@field public PLAYER_SESSION_NOT_EXIST int
     ---@field public PLAYER_SESSION_WORLD_PLAYER_NOT_INIT int
     ---@field public MAP_NOT_EXIST int
     ---@field public MAIL_TYPE_ERROR int
     ---@field public MAIL_NOT_EXITST int
     ---@field public MAIL_HAVE_DELETED int
     ---@field public MAIL_AWARD_HAVE_RECEIVED int
     ---@field public MAIL_OPERATE_TYPE_ERROR int
     ---@field public MAIL_CONDITION_NOT_MEET int
     ---@field public MAIL_STATE_ERROR int
     ---@field public MAIL_NO_AWARD int
     ---@field public MAIL_BOX_IS_FULL int
     ---@field public PROP_SCORE_NOT_BIGGER_THAN int
     ---@field public NOT_WEAR_CLOTHES int
     ---@field public NOT_WEAR_SUIT int
     ---@field public SUIT_NOT_UNLOCK int
     ---@field public SUIT_COMPONENT_NOT_UNLOCK int
     ---@field public SUIT_STATE_ERROR int
     ---@field public SUIT_COMPONENT_STATE_ERROR int
     ---@field public SUIT_COMPONENT_NO_NEED_LEARN int
     ---@field public STORE_NOT_ENABLED int
     ---@field public SHELF_NOT_ENABLED int
     ---@field public GOODS_NOT_ENABLED int
     ---@field public GOODS_NOT_IN_CUR_REFRESH int
     ---@field public RETRY int
     ---@field public NOT_COOLDOWN int
     ---@field public SELFIE_UNLOCK int
     ---@field public SELFIE_ALREADY_UNLOCK int
     ---@field public SELFIE_LACK_STARTS int
     ---@field public SELFIE_HAD_REWARD int
    ['error.EErrorCode'] = {   OK=0,  SERVER_NOT_EXISTS=1,  HAS_BIND_SERVER=2,  AUTH_FAIL=3,  NOT_BIND_SERVER=4,  SERVER_ACCESS_FAIL=5,  EXAMPLE_FLASH=6,  EXAMPLE_MSGBOX=7,  EXAMPLE_DLG_OK=8,  EXAMPLE_DLG_OK_CANCEL=9,  ROLE_CREATE_NAME_INVALID_CHAR=100,  ROLE_CREATE_NAME_EMPTY=101,  ROLE_CREATE_NAME_EXCEED_MAX_LENGTH=102,  ROLE_CREATE_ROLE_LIST_FULL=103,  ROLE_CREATE_INVALID_PROFESSION=104,  ROLE_CREATE_INVALID_GENDER=105,  ROLE_NOT_OWNED_BY_USER=106,  ROLE_LEVEL_NOT_ARRIVE=107,  PARAM_ILLEGAL=200,  TEMP_BAG_NOT_EMPTY=201,  ITEM_CAN_NOT_USE=202,  CURRENCY_NOT_ENOUGH=203,  BAG_IS_FULL=204,  ITEM_NOT_ENOUGH=205,  ITEM_IN_BAG=206,  GENDER_NOT_MATCH=300,  LEVEL_TOO_LOW=301,  LEVEL_TOO_HIGH=302,  EXCEED_LIMIT=303,  OVER_TIME=304,  SERVER_ERROR=305,  SKILL_NOT_IN_LIST=400,  SKILL_NOT_COOLDOWN=401,  SKILL_TARGET_NOT_EXIST=402,  SKILL_ANOTHER_CASTING=403,  SKILL_OUT_OF_DISTANCE=404,  SKILL_TARGET_CAMP_NOT_MATCH=405,  SKILL_INVALID_DIRECTION=406,  SKILL_NOT_IN_SELECT_SHAPE=407,  SKILL_ENERGY_NOT_ENOUGH=408,  DIALOG_NODE_NOT_CHOOSEN=500,  DIALOG_NOT_FINISH=501,  DIALOG_HAS_FINISH=502,  QUEST_STAGE_NOT_FINISHED=503,  QUEST_NOT_DOING=504,  QUEST_STAGE_NOT_DOING=505,  QUEST_HAS_ACCEPTED=506,  MAP_OBJECT_NOT_EXIST=600,  INTERACTION_OBJECT_NOT_SUPPORT_OPERATION=601,  HAS_NOT_EQUIP=602,  HANDHELD_EQUIP_ID_NOT_MATCH=603,  NOT_AVAILABLE_SUIT_ID=604,  NO_INTERACTION_COMPONENT=605,  HAS_INTERACTED=606,  VIALITY_NOT_ENOUGH=607,  PLAYER_SESSION_NOT_EXIST=608,  PLAYER_SESSION_WORLD_PLAYER_NOT_INIT=609,  MAP_NOT_EXIST=610,  MAIL_TYPE_ERROR=700,  MAIL_NOT_EXITST=701,  MAIL_HAVE_DELETED=702,  MAIL_AWARD_HAVE_RECEIVED=703,  MAIL_OPERATE_TYPE_ERROR=704,  MAIL_CONDITION_NOT_MEET=705,  MAIL_STATE_ERROR=706,  MAIL_NO_AWARD=707,  MAIL_BOX_IS_FULL=708,  PROP_SCORE_NOT_BIGGER_THAN=800,  NOT_WEAR_CLOTHES=801,  NOT_WEAR_SUIT=802,  SUIT_NOT_UNLOCK=900,  SUIT_COMPONENT_NOT_UNLOCK=901,  SUIT_STATE_ERROR=902,  SUIT_COMPONENT_STATE_ERROR=903,  SUIT_COMPONENT_NO_NEED_LEARN=904,  STORE_NOT_ENABLED=1000,  SHELF_NOT_ENABLED=1001,  GOODS_NOT_ENABLED=1002,  GOODS_NOT_IN_CUR_REFRESH=1003,  RETRY=1100,  NOT_COOLDOWN=1101,  SELFIE_UNLOCK=1200,  SELFIE_ALREADY_UNLOCK=1201,  SELFIE_LACK_STARTS=1202,  SELFIE_HAD_REWARD=1203,  };
    ---@class item.EItemQuality
     ---@field public WHITE int
     ---@field public GREEN int
     ---@field public BLUE int
     ---@field public PURPLE int
     ---@field public GOLDEN int
    ['item.EItemQuality'] = {   WHITE=0,  GREEN=1,  BLUE=2,  PURPLE=3,  GOLDEN=4,  };
    ---@class item.ECurrencyType
     ---@field public DIAMOND int
     ---@field public GOLD int
     ---@field public SILVER int
     ---@field public EXP int
     ---@field public POWER_POINT int
    ['item.ECurrencyType'] = {   DIAMOND=1,  GOLD=2,  SILVER=3,  EXP=4,  POWER_POINT=5,  };
    ---@class item.EMajorType
     ---@field public CURRENCY int
     ---@field public CLOTH int
     ---@field public QUEST int
     ---@field public CONSUMABLES int
     ---@field public TREASURE_BOX int
     ---@field public ACHIEVEMENT_AND_TITLE int
     ---@field public HEAD_FRAME int
     ---@field public VOICE int
     ---@field public ACTION int
     ---@field public EXPANSION int
     ---@field public MATERIAL int
    ['item.EMajorType'] = {   CURRENCY=1,  CLOTH=2,  QUEST=3,  CONSUMABLES=4,  TREASURE_BOX=5,  ACHIEVEMENT_AND_TITLE=6,  HEAD_FRAME=7,  VOICE=8,  ACTION=9,  EXPANSION=10,  MATERIAL=11,  };
    ---@class item.EMinorType
     ---@field public DIAMOND int
     ---@field public GOLD int
     ---@field public SILVER int
     ---@field public EXP int
     ---@field public POWER_POINT int
     ---@field public HAIR_STYLE int
     ---@field public COAT int
     ---@field public UPPER_JACKET int
     ---@field public TROUSERS int
     ---@field public SKIRT int
     ---@field public SOCKS int
     ---@field public SHOES int
     ---@field public HAIR_ACCESSORY int
     ---@field public HAT int
     ---@field public EARRING int
     ---@field public NECKLACE int
     ---@field public BRACELET int
     ---@field public HAIR_CLASP int
     ---@field public GLOVE int
     ---@field public HANDHELD_OBJECT int
     ---@field public SPECIAL int
     ---@field public BASE_COSMETIC int
     ---@field public EYEBROW_COSMETIC int
     ---@field public EYELASH int
     ---@field public COSMETIC_CONTACT_LENSES int
     ---@field public LIP_COSMETIC int
     ---@field public SKIN_COLOR int
     ---@field public ONE_PIECE_DRESS int
     ---@field public SWITCH_CLOTHES_SCENE int
     ---@field public QUEST int
     ---@field public CAST int
     ---@field public SWORD int
     ---@field public BOW_ARROW int
     ---@field public WANDS int
     ---@field public SPECIAL_TOOL int
     ---@field public FOOD int
     ---@field public TREASURE_BOX int
     ---@field public KEY int
     ---@field public MULTI_CHOOSE_TREASURE_BOX int
     ---@field public ACHIEVEMENT int
     ---@field public TITLE int
     ---@field public AVATAR_FRAME int
     ---@field public VOICE int
     ---@field public IDLE_POSE int
     ---@field public PHOTO_POSE int
     ---@field public BAG int
     ---@field public FRIEND_CAPACITY int
     ---@field public CONSTRUCTION_MATERIAL int
     ---@field public DESIGN_DRAWING int
    ['item.EMinorType'] = {   DIAMOND=101,  GOLD=102,  SILVER=103,  EXP=104,  POWER_POINT=105,  HAIR_STYLE=210,  COAT=220,  UPPER_JACKET=230,  TROUSERS=241,  SKIRT=242,  SOCKS=250,  SHOES=260,  HAIR_ACCESSORY=271,  HAT=272,  EARRING=273,  NECKLACE=274,  BRACELET=275,  HAIR_CLASP=276,  GLOVE=277,  HANDHELD_OBJECT=278,  SPECIAL=279,  BASE_COSMETIC=281,  EYEBROW_COSMETIC=282,  EYELASH=283,  COSMETIC_CONTACT_LENSES=284,  LIP_COSMETIC=285,  SKIN_COLOR=286,  ONE_PIECE_DRESS=290,  SWITCH_CLOTHES_SCENE=291,  QUEST=301,  CAST=401,  SWORD=421,  BOW_ARROW=422,  WANDS=423,  SPECIAL_TOOL=424,  FOOD=403,  TREASURE_BOX=501,  KEY=502,  MULTI_CHOOSE_TREASURE_BOX=503,  ACHIEVEMENT=601,  TITLE=602,  AVATAR_FRAME=701,  VOICE=801,  IDLE_POSE=901,  PHOTO_POSE=902,  BAG=1001,  FRIEND_CAPACITY=1002,  CONSTRUCTION_MATERIAL=1101,  DESIGN_DRAWING=1102,  };
    ---@class item.EClothersStarQualityType
     ---@field public ONE int
     ---@field public TWO int
     ---@field public THREE int
     ---@field public FOUR int
     ---@field public FIVE int
     ---@field public SIX int
     ---@field public SEVEN int
     ---@field public EIGHT int
     ---@field public NINE int
     ---@field public TEN int
    ['item.EClothersStarQualityType'] = {   ONE=1,  TWO=2,  THREE=3,  FOUR=4,  FIVE=5,  SIX=6,  SEVEN=7,  EIGHT=8,  NINE=9,  TEN=10,  };
    ---@class item.EClothersTag
     ---@field public FANG_SHAI int
     ---@field public WU_ZHE int
    ['item.EClothersTag'] = {   FANG_SHAI=1,  WU_ZHE=2,  };
    ---@class item.EUseType
     ---@field public MANUAL int
     ---@field public AUTO int
    ['item.EUseType'] = {   MANUAL=0,  AUTO=1,  };
    ---@class item.EClothesHidePartType
     ---@field public CHEST int
     ---@field public HEAD int
     ---@field public SPINE_UPPER int
     ---@field public SPINE_LOWER int
     ---@field public HIP int
     ---@field public LEG_UPPER int
     ---@field public LEG_MIDDLE int
     ---@field public LEG_LOWER int
    ['item.EClothesHidePartType'] = {   CHEST=0,  HEAD=1,  SPINE_UPPER=2,  SPINE_LOWER=3,  HIP=4,  LEG_UPPER=5,  LEG_MIDDLE=6,  LEG_LOWER=7,  };
    ---@class item.EClothesPropertyType
     ---@field public JIAN_YUE int
     ---@field public HUA_LI int
     ---@field public KE_AI int
     ---@field public CHENG_SHU int
     ---@field public HUO_PO int
     ---@field public YOU_YA int
     ---@field public QING_CHUN int
     ---@field public XING_GAN int
     ---@field public QING_LIANG int
     ---@field public BAO_NUAN int
    ['item.EClothesPropertyType'] = {   JIAN_YUE=1,  HUA_LI=2,  KE_AI=3,  CHENG_SHU=4,  HUO_PO=5,  YOU_YA=6,  QING_CHUN=7,  XING_GAN=8,  QING_LIANG=9,  BAO_NUAN=10,  };
    ---@class item.EItemFunctionType
     ---@field public REPLACE_HANDHELD int
     ---@field public USE_DESIGN_DRAWING int
    ['item.EItemFunctionType'] = {   REPLACE_HANDHELD=0,  USE_DESIGN_DRAWING=1,  };
    ---@class limit.ENamespace
     ---@field public ITEM_DAILY_OBTAIN int
     ---@field public TREASURE_DAILY_USE int
     ---@field public STORE_GOODS_LIMIT_BUY int
    ['limit.ENamespace'] = {   ITEM_DAILY_OBTAIN=1,  TREASURE_DAILY_USE=2,  STORE_GOODS_LIMIT_BUY=3,  };
    ---@class mail.EMailType
     ---@field public GLOBAL int
     ---@field public SYSTEM int
    ['mail.EMailType'] = {   GLOBAL=0,  SYSTEM=1,  };
    ---@class role.EGenderType
     ---@field public MALE int
     ---@field public FEMALE int
    ['role.EGenderType'] = {   MALE=1,  FEMALE=2,  };
    ---@class role.EProfession
     ---@field public TEST_PROFESSION int
    ['role.EProfession'] = {   TEST_PROFESSION=1,  };
    ---@class test.DemoEnum
     ---@field public A int
     ---@field public B int
     ---@field public C int
     ---@field public D int
    ['test.DemoEnum'] = {   A=1,  B=2,  C=4,  D=5,  };
    ---@class test.DemoFlag
     ---@field public A int
     ---@field public B int
     ---@field public D int
    ['test.DemoFlag'] = {   A=1,  B=2,  D=3,  };
    ---@class test.ETestUeType
     ---@field public WHITE int
     ---@field public BLACK int
    ['test.ETestUeType'] = {   WHITE=0,  BLACK=1,  };
    ---@class test.ETestEmptyEnum
    ['test.ETestEmptyEnum'] = {   };
    ---@class test.ETestEmptyEnum2
     ---@field public SMALL_THAN_256 int
     ---@field public X_256 int
     ---@field public X_257 int
    ['test.ETestEmptyEnum2'] = {   SMALL_THAN_256=255,  X_256=256,  X_257=257,  };
    ---@class test.ETestQuality
     ---@field public A int
     ---@field public B int
     ---@field public C int
     ---@field public D int
    ['test.ETestQuality'] = {   A=1,  B=2,  C=3,  D=4,  };
    ---@class test.ETestCurrency
     ---@field public DIAMOND int
     ---@field public GOLD int
    ['test.ETestCurrency'] = {   DIAMOND=1,  GOLD=2,  };
}

local beans = {}
---@class ai.Blackboard 
---@field public name string
---@field public desc string
---@field public parent_name string
---@field public keys ai.BlackboardKey[]
beans['ai.Blackboard'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='parent_name', type='string'},
    { name='keys', type='ai.BlackboardKey[]'},
}

---@class ai.BlackboardKey 
---@field public name string
---@field public desc string
---@field public is_static bool
---@field public type ai.EKeyType
---@field public type_class_name string
beans['ai.BlackboardKey'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='is_static', type='bool'},
    { name='type', type='ai.EKeyType'},
    { name='type_class_name', type='string'},
}

---@class ai.BehaviorTree 
---@field public id int
---@field public name string
---@field public desc string
---@field public blackboard_id string
---@field public root ai.ComposeNode
beans['ai.BehaviorTree'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='blackboard_id', type='string'},
    { name='root', type='ai.ComposeNode'},
}

---@class ai.Node 
---@field public id int
---@field public node_name string
beans['ai.Node'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
}

---@class ai.Service :ai.Node 
beans['ai.Service'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
}

---@class ai.UeSetDefaultFocus :ai.Service 
---@field public keyboard_key string
beans['ai.UeSetDefaultFocus'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='keyboard_key', type='string'},
}

---@class ai.ExecuteTimeStatistic :ai.Service 
beans['ai.ExecuteTimeStatistic'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
}

---@class ai.ChooseTarget :ai.Service 
---@field public result_target_key string
beans['ai.ChooseTarget'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='result_target_key', type='string'},
}

---@class ai.KeepFaceTarget :ai.Service 
---@field public target_actor_key string
beans['ai.KeepFaceTarget'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='target_actor_key', type='string'},
}

---@class ai.GetOwnerPlayer :ai.Service 
---@field public player_actor_key string
beans['ai.GetOwnerPlayer'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='player_actor_key', type='string'},
}

---@class ai.UpdateDailyBehaviorProps :ai.Service 
---@field public satiety_key string
---@field public energy_key string
---@field public mood_key string
---@field public satiety_lower_threshold_key string
---@field public satiety_upper_threshold_key string
---@field public energy_lower_threshold_key string
---@field public energy_upper_threshold_key string
---@field public mood_lower_threshold_key string
---@field public mood_upper_threshold_key string
beans['ai.UpdateDailyBehaviorProps'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='satiety_key', type='string'},
    { name='energy_key', type='string'},
    { name='mood_key', type='string'},
    { name='satiety_lower_threshold_key', type='string'},
    { name='satiety_upper_threshold_key', type='string'},
    { name='energy_lower_threshold_key', type='string'},
    { name='energy_upper_threshold_key', type='string'},
    { name='mood_lower_threshold_key', type='string'},
    { name='mood_upper_threshold_key', type='string'},
}

---@class ai.Decorator :ai.Node 
---@field public flow_abort_mode ai.EFlowAbortMode
beans['ai.Decorator'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
}

---@class ai.UeLoop :ai.Decorator 
---@field public num_loops int
---@field public infinite_loop bool
---@field public infinite_loop_timeout_time float
beans['ai.UeLoop'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='num_loops', type='int'},
    { name='infinite_loop', type='bool'},
    { name='infinite_loop_timeout_time', type='float'},
}

---@class ai.UeCooldown :ai.Decorator 
---@field public cooldown_time float
beans['ai.UeCooldown'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='cooldown_time', type='float'},
}

---@class ai.UeTimeLimit :ai.Decorator 
---@field public limit_time float
beans['ai.UeTimeLimit'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='limit_time', type='float'},
}

---@class ai.UeBlackboard :ai.Decorator 
---@field public notify_observer ai.ENotifyObserverMode
---@field public blackboard_key string
---@field public key_query ai.KeyQueryOperator
beans['ai.UeBlackboard'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='notify_observer', type='ai.ENotifyObserverMode'},
    { name='blackboard_key', type='string'},
    { name='key_query', type='ai.KeyQueryOperator'},
}

---@class ai.KeyQueryOperator 
beans['ai.KeyQueryOperator'] =
{
}

---@class ai.IsSet :ai.KeyQueryOperator 
beans['ai.IsSet'] =
{
}

---@class ai.IsNotSet :ai.KeyQueryOperator 
beans['ai.IsNotSet'] =
{
}

---@class ai.BinaryOperator :ai.KeyQueryOperator 
---@field public oper ai.EOperator
---@field public data ai.KeyData
beans['ai.BinaryOperator'] =
{
    { name='oper', type='ai.EOperator'},
    { name='data', type='ai.KeyData'},
}

---@class ai.KeyData 
beans['ai.KeyData'] =
{
}

---@class ai.FloatKeyData :ai.KeyData 
---@field public value float
beans['ai.FloatKeyData'] =
{
    { name='value', type='float'},
}

---@class ai.IntKeyData :ai.KeyData 
---@field public value int
beans['ai.IntKeyData'] =
{
    { name='value', type='int'},
}

---@class ai.StringKeyData :ai.KeyData 
---@field public value string
beans['ai.StringKeyData'] =
{
    { name='value', type='string'},
}

---@class ai.BlackboardKeyData :ai.KeyData 
---@field public value string
beans['ai.BlackboardKeyData'] =
{
    { name='value', type='string'},
}

---@class ai.UeForceSuccess :ai.Decorator 
beans['ai.UeForceSuccess'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
}

---@class ai.IsAtLocation :ai.Decorator 
---@field public acceptable_radius float
---@field public keyboard_key string
---@field public inverse_condition bool
beans['ai.IsAtLocation'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='acceptable_radius', type='float'},
    { name='keyboard_key', type='string'},
    { name='inverse_condition', type='bool'},
}

---@class ai.DistanceLessThan :ai.Decorator 
---@field public actor1_key string
---@field public actor2_key string
---@field public distance float
---@field public reverse_result bool
beans['ai.DistanceLessThan'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='flow_abort_mode', type='ai.EFlowAbortMode'},
    { name='actor1_key', type='string'},
    { name='actor2_key', type='string'},
    { name='distance', type='float'},
    { name='reverse_result', type='bool'},
}

---@class ai.FlowNode :ai.Node 
---@field public decorators ai.Decorator[]
---@field public services ai.Service[]
beans['ai.FlowNode'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
}

---@class ai.ComposeNode :ai.FlowNode 
beans['ai.ComposeNode'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
}

---@class ai.Sequence :ai.ComposeNode 
---@field public children ai.FlowNode[]
beans['ai.Sequence'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='children', type='ai.FlowNode[]'},
}

---@class ai.Selector :ai.ComposeNode 
---@field public children ai.FlowNode[]
beans['ai.Selector'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='children', type='ai.FlowNode[]'},
}

---@class ai.SimpleParallel :ai.ComposeNode 
---@field public finish_mode ai.EFinishMode
---@field public main_task ai.Task
---@field public background_node ai.FlowNode
beans['ai.SimpleParallel'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='finish_mode', type='ai.EFinishMode'},
    { name='main_task', type='ai.Task'},
    { name='background_node', type='ai.FlowNode'},
}

---@class ai.Task :ai.FlowNode 
---@field public ignore_restart_self bool
beans['ai.Task'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
}

---@class ai.UeWait :ai.Task 
---@field public wait_time float
---@field public random_deviation float
beans['ai.UeWait'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='wait_time', type='float'},
    { name='random_deviation', type='float'},
}

---@class ai.UeWaitBlackboardTime :ai.Task 
---@field public blackboard_key string
beans['ai.UeWaitBlackboardTime'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='blackboard_key', type='string'},
}

---@class ai.MoveToTarget :ai.Task 
---@field public target_actor_key string
---@field public acceptable_radius float
beans['ai.MoveToTarget'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='target_actor_key', type='string'},
    { name='acceptable_radius', type='float'},
}

---@class ai.ChooseSkill :ai.Task 
---@field public target_actor_key string
---@field public result_skill_id_key string
beans['ai.ChooseSkill'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='target_actor_key', type='string'},
    { name='result_skill_id_key', type='string'},
}

---@class ai.MoveToRandomLocation :ai.Task 
---@field public origin_position_key string
---@field public radius float
beans['ai.MoveToRandomLocation'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='origin_position_key', type='string'},
    { name='radius', type='float'},
}

---@class ai.MoveToLocation :ai.Task 
---@field public location vector3
---@field public acceptable_radius float
beans['ai.MoveToLocation'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='location', type='vector3'},
    { name='acceptable_radius', type='float'},
}

---@class ai.DebugPrint :ai.Task 
---@field public text string
beans['ai.DebugPrint'] =
{
    { name='id', type='int'},
    { name='node_name', type='string'},
    { name='decorators', type='ai.Decorator[]'},
    { name='services', type='ai.Service[]'},
    { name='ignore_restart_self', type='bool'},
    { name='text', type='string'},
}

---@class blueprint.Clazz 
---@field public name string
---@field public desc string
---@field public parents blueprint.Clazz[]
---@field public methods blueprint.Method[]
beans['blueprint.Clazz'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='parents', type='blueprint.Clazz[]'},
    { name='methods', type='blueprint.Method[]'},
}

---@class blueprint.Method 
---@field public name string
---@field public desc string
---@field public is_static bool
---@field public return_type string
---@field public parameters blueprint.ParamInfo[]
beans['blueprint.Method'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='is_static', type='bool'},
    { name='return_type', type='string'},
    { name='parameters', type='blueprint.ParamInfo[]'},
}

---@class blueprint.ParamInfo 
---@field public name string
---@field public type string
---@field public is_ref bool
beans['blueprint.ParamInfo'] =
{
    { name='name', type='string'},
    { name='type', type='string'},
    { name='is_ref', type='bool'},
}

---@class blueprint.AbstraceMethod :blueprint.Method 
beans['blueprint.AbstraceMethod'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='is_static', type='bool'},
    { name='return_type', type='string'},
    { name='parameters', type='blueprint.ParamInfo[]'},
}

---@class blueprint.ExternalMethod :blueprint.Method 
beans['blueprint.ExternalMethod'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='is_static', type='bool'},
    { name='return_type', type='string'},
    { name='parameters', type='blueprint.ParamInfo[]'},
}

---@class blueprint.BlueprintMethod :blueprint.Method 
beans['blueprint.BlueprintMethod'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='is_static', type='bool'},
    { name='return_type', type='string'},
    { name='parameters', type='blueprint.ParamInfo[]'},
}

---@class blueprint.Interface :blueprint.Clazz 
beans['blueprint.Interface'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='parents', type='blueprint.Clazz[]'},
    { name='methods', type='blueprint.Method[]'},
}

---@class blueprint.NormalClazz :blueprint.Clazz 
---@field public is_abstract bool
---@field public fields blueprint.Field[]
beans['blueprint.NormalClazz'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='parents', type='blueprint.Clazz[]'},
    { name='methods', type='blueprint.Method[]'},
    { name='is_abstract', type='bool'},
    { name='fields', type='blueprint.Field[]'},
}

---@class blueprint.Field 
---@field public name string
---@field public type string
---@field public desc string
beans['blueprint.Field'] =
{
    { name='name', type='string'},
    { name='type', type='string'},
    { name='desc', type='string'},
}

---@class blueprint.EnumClazz :blueprint.Clazz 
---@field public enums blueprint.EnumField[]
beans['blueprint.EnumClazz'] =
{
    { name='name', type='string'},
    { name='desc', type='string'},
    { name='parents', type='blueprint.Clazz[]'},
    { name='methods', type='blueprint.Method[]'},
    { name='enums', type='blueprint.EnumField[]'},
}

---@class blueprint.EnumField 
---@field public name string
---@field public value int
beans['blueprint.EnumField'] =
{
    { name='name', type='string'},
    { name='value', type='int'},
}

---@class bonus.DropInfo 
---@field public id int
---@field public desc string
---@field public client_show_items bonus.ShowItemInfo[]
---@field public bonus bonus.Bonus
beans['bonus.DropInfo'] =
{
    { name='id', type='int'},
    { name='desc', type='string'},
    { name='client_show_items', type='bonus.ShowItemInfo[]'},
    { name='bonus', type='bonus.Bonus'},
}

---@class bonus.ShowItemInfo 
---@field public item_id int
---@field public item_num long
beans['bonus.ShowItemInfo'] =
{
    { name='item_id', type='int'},
    { name='item_num', type='long'},
}

---@class bonus.Bonus 
beans['bonus.Bonus'] =
{
}

---@class bonus.OneItem :bonus.Bonus 
---@field public item_id int
beans['bonus.OneItem'] =
{
    { name='item_id', type='int'},
}

---@class bonus.OneItems :bonus.Bonus 
---@field public items int[]
beans['bonus.OneItems'] =
{
    { name='items', type='int[]'},
}

---@class bonus.Item :bonus.Bonus 
---@field public item_id int
---@field public amount int
beans['bonus.Item'] =
{
    { name='item_id', type='int'},
    { name='amount', type='int'},
}

---@class bonus.Items :bonus.Bonus 
---@field public item_list bonus.Item[]
beans['bonus.Items'] =
{
    { name='item_list', type='bonus.Item[]'},
}

---@class bonus.CoefficientItem :bonus.Bonus 
---@field public bonus_id int
---@field public bonus_list bonus.Items
beans['bonus.CoefficientItem'] =
{
    { name='bonus_id', type='int'},
    { name='bonus_list', type='bonus.Items'},
}

---@class bonus.WeightItems :bonus.Bonus 
---@field public item_list bonus.WeightItemInfo[]
beans['bonus.WeightItems'] =
{
    { name='item_list', type='bonus.WeightItemInfo[]'},
}

---@class bonus.WeightItemInfo 
---@field public item_id int
---@field public num int
---@field public weight int
beans['bonus.WeightItemInfo'] =
{
    { name='item_id', type='int'},
    { name='num', type='int'},
    { name='weight', type='int'},
}

---@class bonus.ProbabilityItems :bonus.Bonus 
---@field public item_list bonus.ProbabilityItemInfo[]
beans['bonus.ProbabilityItems'] =
{
    { name='item_list', type='bonus.ProbabilityItemInfo[]'},
}

---@class bonus.ProbabilityItemInfo 
---@field public item_id int
---@field public num int
---@field public probability float
beans['bonus.ProbabilityItemInfo'] =
{
    { name='item_id', type='int'},
    { name='num', type='int'},
    { name='probability', type='float'},
}

---@class bonus.MultiBonus :bonus.Bonus 
---@field public bonuses bonus.Bonus[]
beans['bonus.MultiBonus'] =
{
    { name='bonuses', type='bonus.Bonus[]'},
}

---@class bonus.ProbabilityBonus :bonus.Bonus 
---@field public bonuses bonus.ProbabilityBonusInfo[]
beans['bonus.ProbabilityBonus'] =
{
    { name='bonuses', type='bonus.ProbabilityBonusInfo[]'},
}

---@class bonus.ProbabilityBonusInfo 
---@field public bonus bonus.Bonus
---@field public probability float
beans['bonus.ProbabilityBonusInfo'] =
{
    { name='bonus', type='bonus.Bonus'},
    { name='probability', type='float'},
}

---@class bonus.WeightBonus :bonus.Bonus 
---@field public bonuses bonus.WeightBonusInfo[]
beans['bonus.WeightBonus'] =
{
    { name='bonuses', type='bonus.WeightBonusInfo[]'},
}

---@class bonus.WeightBonusInfo 
---@field public bonus bonus.Bonus
---@field public weight int
beans['bonus.WeightBonusInfo'] =
{
    { name='bonus', type='bonus.Bonus'},
    { name='weight', type='int'},
}

---@class bonus.DropBonus :bonus.Bonus 
---@field public id int
beans['bonus.DropBonus'] =
{
    { name='id', type='int'},
}

---@class common.GlobalConfig 
---@field public bag_capacity int
---@field public bag_capacity_special int
---@field public bag_temp_expendable_capacity int
---@field public bag_temp_tool_capacity int
---@field public bag_init_capacity int
---@field public quick_bag_capacity int
---@field public cloth_bag_capacity int
---@field public cloth_bag_init_capacity int
---@field public cloth_bag_capacity_special int
---@field public bag_init_items_drop_id int
---@field public mail_box_capacity int
---@field public damage_param_c float
---@field public damage_param_e float
---@field public damage_param_f float
---@field public damage_param_d float
---@field public role_speed float
---@field public monster_speed float
---@field public init_energy int
---@field public init_viality int
---@field public max_viality int
---@field public per_viality_recovery_time int
beans['common.GlobalConfig'] =
{
    { name='bag_capacity', type='int'},
    { name='bag_capacity_special', type='int'},
    { name='bag_temp_expendable_capacity', type='int'},
    { name='bag_temp_tool_capacity', type='int'},
    { name='bag_init_capacity', type='int'},
    { name='quick_bag_capacity', type='int'},
    { name='cloth_bag_capacity', type='int'},
    { name='cloth_bag_init_capacity', type='int'},
    { name='cloth_bag_capacity_special', type='int'},
    { name='bag_init_items_drop_id', type='int'},
    { name='mail_box_capacity', type='int'},
    { name='damage_param_c', type='float'},
    { name='damage_param_e', type='float'},
    { name='damage_param_f', type='float'},
    { name='damage_param_d', type='float'},
    { name='role_speed', type='float'},
    { name='monster_speed', type='float'},
    { name='init_energy', type='int'},
    { name='init_viality', type='int'},
    { name='max_viality', type='int'},
    { name='per_viality_recovery_time', type='int'},
}

---@class error.ErrorInfo 
---@field public code string
---@field public desc string
---@field public style error.ErrorStyle
beans['error.ErrorInfo'] =
{
    { name='code', type='string'},
    { name='desc', type='string'},
    { name='style', type='error.ErrorStyle'},
}

---@class error.ErrorStyle 
beans['error.ErrorStyle'] =
{
}

---@class error.ErrorStyleTip :error.ErrorStyle 
beans['error.ErrorStyleTip'] =
{
}

---@class error.ErrorStyleMsgbox :error.ErrorStyle 
---@field public btn_name string
---@field public operation error.EOperation
beans['error.ErrorStyleMsgbox'] =
{
    { name='btn_name', type='string'},
    { name='operation', type='error.EOperation'},
}

---@class error.ErrorStyleDlgOk :error.ErrorStyle 
---@field public btn_name string
beans['error.ErrorStyleDlgOk'] =
{
    { name='btn_name', type='string'},
}

---@class error.ErrorStyleDlgOkCancel :error.ErrorStyle 
---@field public btn1_name string
---@field public btn2_name string
beans['error.ErrorStyleDlgOkCancel'] =
{
    { name='btn1_name', type='string'},
    { name='btn2_name', type='string'},
}

---@class error.CodeInfo 
---@field public code error.EErrorCode
---@field public key string
beans['error.CodeInfo'] =
{
    { name='code', type='error.EErrorCode'},
    { name='key', type='string'},
}

---@class item.Item 
---@field public id int
---@field public name string
---@field public major_type item.EMajorType
---@field public minor_type item.EMinorType
---@field public max_pile_num int
---@field public quality item.EItemQuality
---@field public icon string
---@field public icon_backgroud string
---@field public icon_mask string
---@field public desc string
---@field public show_order int
---@field public quantifier string
---@field public show_in_bag bool
---@field public min_show_level int
---@field public batch_usable bool
---@field public progress_time_when_use float
---@field public show_hint_when_use bool
---@field public droppable bool
---@field public price int
---@field public use_type item.EUseType
---@field public level_up_id int
beans['item.Item'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='major_type', type='item.EMajorType'},
    { name='minor_type', type='item.EMinorType'},
    { name='max_pile_num', type='int'},
    { name='quality', type='item.EItemQuality'},
    { name='icon', type='string'},
    { name='icon_backgroud', type='string'},
    { name='icon_mask', type='string'},
    { name='desc', type='string'},
    { name='show_order', type='int'},
    { name='quantifier', type='string'},
    { name='show_in_bag', type='bool'},
    { name='min_show_level', type='int'},
    { name='batch_usable', type='bool'},
    { name='progress_time_when_use', type='float'},
    { name='show_hint_when_use', type='bool'},
    { name='droppable', type='bool'},
    { name='price', type='int'},
    { name='use_type', type='item.EUseType'},
    { name='level_up_id', type='int'},
}

---@class item.ItemFunction 
---@field public minor_type item.EMinorType
---@field public func_type item.EItemFunctionType
---@field public method string
---@field public close_bag_ui bool
beans['item.ItemFunction'] =
{
    { name='minor_type', type='item.EMinorType'},
    { name='func_type', type='item.EItemFunctionType'},
    { name='method', type='string'},
    { name='close_bag_ui', type='bool'},
}

---@class item.ItemExtra 
---@field public id int
beans['item.ItemExtra'] =
{
    { name='id', type='int'},
}

---@class item.TreasureBox :item.ItemExtra 
---@field public key_item_id int
---@field public open_level condition.MinLevel
---@field public use_on_obtain bool
---@field public drop_ids int[]
---@field public choose_list item.ChooseOneBonus[]
beans['item.TreasureBox'] =
{
    { name='id', type='int'},
    { name='key_item_id', type='int'},
    { name='open_level', type='condition.MinLevel'},
    { name='use_on_obtain', type='bool'},
    { name='drop_ids', type='int[]'},
    { name='choose_list', type='item.ChooseOneBonus[]'},
}

---@class condition.Condition 
beans['condition.Condition'] =
{
}

---@class condition.TimeRange :condition.Condition 
---@field public date_time_range common.DateTimeRange
beans['condition.TimeRange'] =
{
    { name='date_time_range', type='common.DateTimeRange'},
}

---@class common.DateTimeRange 
---@field public start_time int
---@field public end_time int
beans['common.DateTimeRange'] =
{
    { name='start_time', type='int'},
    { name='end_time', type='int'},
}

---@class condition.RoleCondition :condition.Condition 
beans['condition.RoleCondition'] =
{
}

---@class condition.MultiRoleCondition :condition.RoleCondition 
---@field public conditions condition.RoleCondition[]
beans['condition.MultiRoleCondition'] =
{
    { name='conditions', type='condition.RoleCondition[]'},
}

---@class condition.BoolRoleCondition :condition.RoleCondition 
beans['condition.BoolRoleCondition'] =
{
}

---@class condition.GenderLimit :condition.BoolRoleCondition 
---@field public gender role.EGenderType
beans['condition.GenderLimit'] =
{
    { name='gender', type='role.EGenderType'},
}

---@class condition.MinLevel :condition.BoolRoleCondition 
---@field public level int
beans['condition.MinLevel'] =
{
    { name='level', type='int'},
}

---@class condition.MaxLevel :condition.BoolRoleCondition 
---@field public level int
beans['condition.MaxLevel'] =
{
    { name='level', type='int'},
}

---@class condition.MinMaxLevel :condition.BoolRoleCondition 
---@field public min int
---@field public max int
beans['condition.MinMaxLevel'] =
{
    { name='min', type='int'},
    { name='max', type='int'},
}

---@class condition.ClothesPropertyScoreGreaterThan :condition.BoolRoleCondition 
---@field public prop item.EClothesPropertyType
---@field public value int
beans['condition.ClothesPropertyScoreGreaterThan'] =
{
    { name='prop', type='item.EClothesPropertyType'},
    { name='value', type='int'},
}

---@class condition.ContainsItem :condition.RoleCondition 
---@field public item_id int
---@field public num int
---@field public reverse bool
beans['condition.ContainsItem'] =
{
    { name='item_id', type='int'},
    { name='num', type='int'},
    { name='reverse', type='bool'},
}

---@class item.ChooseOneBonus 
---@field public drop_id int
---@field public is_unique bool
beans['item.ChooseOneBonus'] =
{
    { name='drop_id', type='int'},
    { name='is_unique', type='bool'},
}

---@class item.InteractionItem :item.ItemExtra 
---@field public attack_num int
---@field public holding_static_mesh string
---@field public holding_static_mesh_mat string
beans['item.InteractionItem'] =
{
    { name='id', type='int'},
    { name='attack_num', type='int'},
    { name='holding_static_mesh', type='string'},
    { name='holding_static_mesh_mat', type='string'},
}

---@class item.Clothes :item.ItemExtra 
---@field public attack int
---@field public hp long
---@field public energy_limit int
---@field public energy_resume int
beans['item.Clothes'] =
{
    { name='id', type='int'},
    { name='attack', type='int'},
    { name='hp', type='long'},
    { name='energy_limit', type='int'},
    { name='energy_resume', type='int'},
}

---@class item.DesignDrawing :item.ItemExtra 
---@field public learn_component_id int[]
beans['item.DesignDrawing'] =
{
    { name='id', type='int'},
    { name='learn_component_id', type='int[]'},
}

---@class item.Dymmy :item.ItemExtra 
---@field public cost cost.Cost
beans['item.Dymmy'] =
{
    { name='id', type='int'},
    { name='cost', type='cost.Cost'},
}

---@class cost.Cost 
beans['cost.Cost'] =
{
}

---@class cost.CostCurrency :cost.Cost 
---@field public type item.ECurrencyType
---@field public num int
beans['cost.CostCurrency'] =
{
    { name='type', type='item.ECurrencyType'},
    { name='num', type='int'},
}

---@class cost.CostCurrencies :cost.Cost 
---@field public currencies cost.CostCurrency[]
beans['cost.CostCurrencies'] =
{
    { name='currencies', type='cost.CostCurrency[]'},
}

---@class cost.CostOneItem :cost.Cost 
---@field public item_id int
beans['cost.CostOneItem'] =
{
    { name='item_id', type='int'},
}

---@class cost.CostItem :cost.Cost 
---@field public item_id int
---@field public amount int
beans['cost.CostItem'] =
{
    { name='item_id', type='int'},
    { name='amount', type='int'},
}

---@class cost.CostItems :cost.Cost 
---@field public item_list cost.CostItem[]
beans['cost.CostItems'] =
{
    { name='item_list', type='cost.CostItem[]'},
}

---@class l10n.L10NDemo 
---@field public id int
---@field public text string
beans['l10n.L10NDemo'] =
{
    { name='id', type='int'},
    { name='text', type='string'},
}

---@class l10n.PatchDemo 
---@field public id int
---@field public value int
beans['l10n.PatchDemo'] =
{
    { name='id', type='int'},
    { name='value', type='int'},
}

---@class mail.SystemMail 
---@field public id int
---@field public title string
---@field public sender string
---@field public content string
---@field public award int[]
beans['mail.SystemMail'] =
{
    { name='id', type='int'},
    { name='title', type='string'},
    { name='sender', type='string'},
    { name='content', type='string'},
    { name='award', type='int[]'},
}

---@class mail.GlobalMail 
---@field public id int
---@field public title string
---@field public sender string
---@field public content string
---@field public award int[]
---@field public all_server bool
---@field public server_list int[]
---@field public platform string
---@field public channel string
---@field public min_max_level condition.MinMaxLevel
---@field public register_time condition.TimeRange
---@field public mail_time condition.TimeRange
beans['mail.GlobalMail'] =
{
    { name='id', type='int'},
    { name='title', type='string'},
    { name='sender', type='string'},
    { name='content', type='string'},
    { name='award', type='int[]'},
    { name='all_server', type='bool'},
    { name='server_list', type='int[]'},
    { name='platform', type='string'},
    { name='channel', type='string'},
    { name='min_max_level', type='condition.MinMaxLevel'},
    { name='register_time', type='condition.TimeRange'},
    { name='mail_time', type='condition.TimeRange'},
}

---@class role.LevelExpAttr 
---@field public level int
---@field public need_exp long
---@field public clothes_attrs int[]
beans['role.LevelExpAttr'] =
{
    { name='level', type='int'},
    { name='need_exp', type='long'},
    { name='clothes_attrs', type='int[]'},
}

---@class role.LevelBonus 
---@field public id int
---@field public distinct_bonus_infos role.DistinctBonusInfos[]
beans['role.LevelBonus'] =
{
    { name='id', type='int'},
    { name='distinct_bonus_infos', type='role.DistinctBonusInfos[]'},
}

---@class role.DistinctBonusInfos 
---@field public effective_level int
---@field public bonus_info role.BonusInfo[]
beans['role.DistinctBonusInfos'] =
{
    { name='effective_level', type='int'},
    { name='bonus_info', type='role.BonusInfo[]'},
}

---@class role.BonusInfo 
---@field public type item.ECurrencyType
---@field public coefficient float
beans['role.BonusInfo'] =
{
    { name='type', type='item.ECurrencyType'},
    { name='coefficient', type='float'},
}

---@class tag.TestTag 
---@field public id int
---@field public value string
beans['tag.TestTag'] =
{
    { name='id', type='int'},
    { name='value', type='string'},
}

---@class test.DemoType2 
---@field public x4 int
---@field public x1 bool
---@field public x2 byte
---@field public x3 short
---@field public x5 long
---@field public x6 float
---@field public x7 double
---@field public x8_0 short
---@field public x8 int
---@field public x9 long
---@field public x10 string
---@field public x12 test.DemoType1
---@field public x13 test.DemoEnum
---@field public x14 test.DemoDynamic
---@field public s1 string
---@field public v2 vector2
---@field public v3 vector3
---@field public v4 vector4
---@field public t1 int
---@field public k1 int[]
---@field public k2 int[]
---@field public k5 int[]
---@field public k8 table<int,int>
---@field public k9 test.DemoE2[]
---@field public k15 test.DemoDynamic[]
beans['test.DemoType2'] =
{
    { name='x4', type='int'},
    { name='x1', type='bool'},
    { name='x2', type='byte'},
    { name='x3', type='short'},
    { name='x5', type='long'},
    { name='x6', type='float'},
    { name='x7', type='double'},
    { name='x8_0', type='short'},
    { name='x8', type='int'},
    { name='x9', type='long'},
    { name='x10', type='string'},
    { name='x12', type='test.DemoType1'},
    { name='x13', type='test.DemoEnum'},
    { name='x14', type='test.DemoDynamic'},
    { name='s1', type='string'},
    { name='v2', type='vector2'},
    { name='v3', type='vector3'},
    { name='v4', type='vector4'},
    { name='t1', type='int'},
    { name='k1', type='int[]'},
    { name='k2', type='int[]'},
    { name='k5', type='int[]'},
    { name='k8', type='table<int,int>'},
    { name='k9', type='test.DemoE2[]'},
    { name='k15', type='test.DemoDynamic[]'},
}

---@class test.DemoType1 
---@field public x1 int
beans['test.DemoType1'] =
{
    { name='x1', type='int'},
}

---@class test.DemoDynamic 
---@field public x1 int
beans['test.DemoDynamic'] =
{
    { name='x1', type='int'},
}

---@class test.DemoD2 :test.DemoDynamic 
---@field public x2 int
beans['test.DemoD2'] =
{
    { name='x1', type='int'},
    { name='x2', type='int'},
}

---@class test.DemoD3 :test.DemoDynamic 
---@field public x3 int
beans['test.DemoD3'] =
{
    { name='x1', type='int'},
    { name='x3', type='int'},
}

---@class test.DemoE1 :test.DemoD3 
---@field public x4 int
beans['test.DemoE1'] =
{
    { name='x1', type='int'},
    { name='x3', type='int'},
    { name='x4', type='int'},
}

---@class test.DemoD5 :test.DemoDynamic 
---@field public time test.DateTimeRange
beans['test.DemoD5'] =
{
    { name='x1', type='int'},
    { name='time', type='test.DateTimeRange'},
}

---@class test.DateTimeRange 
---@field public start_time int
---@field public end_time int
beans['test.DateTimeRange'] =
{
    { name='start_time', type='int'},
    { name='end_time', type='int'},
}

---@class test.DemoE2 
---@field public y1 int
---@field public y2 bool
beans['test.DemoE2'] =
{
    { name='y1', type='int'},
    { name='y2', type='bool'},
}

---@class test.DemoSingletonType 
---@field public id int
---@field public name string
---@field public date test.DemoDynamic
beans['test.DemoSingletonType'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='date', type='test.DemoDynamic'},
}

---@class test.NotIndexList 
---@field public x int
---@field public y int
beans['test.NotIndexList'] =
{
    { name='x', type='int'},
    { name='y', type='int'},
}

---@class test.MultiUnionIndexList 
---@field public id1 int
---@field public id2 long
---@field public id3 string
---@field public num int
---@field public desc string
beans['test.MultiUnionIndexList'] =
{
    { name='id1', type='int'},
    { name='id2', type='long'},
    { name='id3', type='string'},
    { name='num', type='int'},
    { name='desc', type='string'},
}

---@class test.MultiIndexList 
---@field public id1 int
---@field public id2 long
---@field public id3 string
---@field public num int
---@field public desc string
beans['test.MultiIndexList'] =
{
    { name='id1', type='int'},
    { name='id2', type='long'},
    { name='id3', type='string'},
    { name='num', type='int'},
    { name='desc', type='string'},
}

---@class test.MultiRowRecord 
---@field public id int
---@field public name string
---@field public one_rows test.MultiRowType1[]
---@field public multi_rows1 test.MultiRowType1[]
---@field public multi_rows2 test.MultiRowType1[]
---@field public multi_rows4 table<int,test.MultiRowType2>
---@field public multi_rows5 test.MultiRowType3[]
---@field public multi_rows6 table<int,test.MultiRowType2>
---@field public multi_rows7 table<int,int>
beans['test.MultiRowRecord'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='one_rows', type='test.MultiRowType1[]'},
    { name='multi_rows1', type='test.MultiRowType1[]'},
    { name='multi_rows2', type='test.MultiRowType1[]'},
    { name='multi_rows4', type='table<int,test.MultiRowType2>'},
    { name='multi_rows5', type='test.MultiRowType3[]'},
    { name='multi_rows6', type='table<int,test.MultiRowType2>'},
    { name='multi_rows7', type='table<int,int>'},
}

---@class test.MultiRowType1 
---@field public id int
---@field public x int
beans['test.MultiRowType1'] =
{
    { name='id', type='int'},
    { name='x', type='int'},
}

---@class test.MultiRowType2 
---@field public id int
---@field public x int
---@field public y float
beans['test.MultiRowType2'] =
{
    { name='id', type='int'},
    { name='x', type='int'},
    { name='y', type='float'},
}

---@class test.MultiRowType3 
---@field public id int
---@field public items test.MultiRowType1[]
beans['test.MultiRowType3'] =
{
    { name='id', type='int'},
    { name='items', type='test.MultiRowType1[]'},
}

---@class test.MultiRowTitle 
---@field public id int
---@field public name string
---@field public x1 test.H1
---@field public x2 test.H2[]
---@field public x3 test.H2[]
---@field public x4 test.H2[]
beans['test.MultiRowTitle'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='x1', type='test.H1'},
    { name='x2', type='test.H2[]'},
    { name='x3', type='test.H2[]'},
    { name='x4', type='test.H2[]'},
}

---@class test.H1 
---@field public y2 test.H2
---@field public y3 int
beans['test.H1'] =
{
    { name='y2', type='test.H2'},
    { name='y3', type='int'},
}

---@class test.H2 
---@field public z2 int
---@field public z3 int
beans['test.H2'] =
{
    { name='z2', type='int'},
    { name='z3', type='int'},
}

---@class test.TestNull 
---@field public id int
---@field public x1 int
---@field public x2 test.DemoEnum
---@field public x3 test.DemoType1
---@field public x4 test.DemoDynamic
---@field public s1 string
---@field public s2 string
beans['test.TestNull'] =
{
    { name='id', type='int'},
    { name='x1', type='int'},
    { name='x2', type='test.DemoEnum'},
    { name='x3', type='test.DemoType1'},
    { name='x4', type='test.DemoDynamic'},
    { name='s1', type='string'},
    { name='s2', type='string'},
}

---@class test.DemoPrimitiveTypesTable 
---@field public x1 bool
---@field public x2 byte
---@field public x3 short
---@field public x4 int
---@field public x5 long
---@field public x6 float
---@field public x7 double
---@field public s1 string
---@field public s2 string
---@field public v2 vector2
---@field public v3 vector3
---@field public v4 vector4
---@field public t1 int
beans['test.DemoPrimitiveTypesTable'] =
{
    { name='x1', type='bool'},
    { name='x2', type='byte'},
    { name='x3', type='short'},
    { name='x4', type='int'},
    { name='x5', type='long'},
    { name='x6', type='float'},
    { name='x7', type='double'},
    { name='s1', type='string'},
    { name='s2', type='string'},
    { name='v2', type='vector2'},
    { name='v3', type='vector3'},
    { name='v4', type='vector4'},
    { name='t1', type='int'},
}

---@class test.TestString 
---@field public id int
---@field public s1 string
---@field public cs1 test.CompactString
---@field public cs2 test.CompactString
beans['test.TestString'] =
{
    { name='id', type='int'},
    { name='s1', type='string'},
    { name='cs1', type='test.CompactString'},
    { name='cs2', type='test.CompactString'},
}

---@class test.CompactString 
---@field public id int
---@field public s2 string
---@field public s3 string
beans['test.CompactString'] =
{
    { name='id', type='int'},
    { name='s2', type='string'},
    { name='s3', type='string'},
}

---@class test.DemoGroup 
---@field public id int
---@field public x1 int
---@field public x2 int
---@field public x3 int
---@field public x4 int
---@field public x5 test.InnerGroup
beans['test.DemoGroup'] =
{
    { name='id', type='int'},
    { name='x1', type='int'},
    { name='x2', type='int'},
    { name='x3', type='int'},
    { name='x4', type='int'},
    { name='x5', type='test.InnerGroup'},
}

---@class test.InnerGroup 
---@field public y1 int
---@field public y2 int
---@field public y3 int
---@field public y4 int
beans['test.InnerGroup'] =
{
    { name='y1', type='int'},
    { name='y2', type='int'},
    { name='y3', type='int'},
    { name='y4', type='int'},
}

---@class test.TestGlobal 
---@field public unlock_equip int
---@field public unlock_hero int
beans['test.TestGlobal'] =
{
    { name='unlock_equip', type='int'},
    { name='unlock_hero', type='int'},
}

---@class test.TestBeRef 
---@field public id int
---@field public count int
beans['test.TestBeRef'] =
{
    { name='id', type='int'},
    { name='count', type='int'},
}

---@class test.TestRef 
---@field public id int
---@field public x1 int
---@field public x1_2 int
---@field public x2 int
---@field public a1 int[]
---@field public a2 int[]
---@field public b1 int[]
---@field public b2 int[]
---@field public c1 int[]
---@field public c2 int[]
---@field public d1 table<int,int>
---@field public d2 table<int,int>
---@field public e1 int
---@field public e2 long
---@field public e3 string
---@field public f1 int
---@field public f2 long
---@field public f3 string
beans['test.TestRef'] =
{
    { name='id', type='int'},
    { name='x1', type='int'},
    { name='x1_2', type='int'},
    { name='x2', type='int'},
    { name='a1', type='int[]'},
    { name='a2', type='int[]'},
    { name='b1', type='int[]'},
    { name='b2', type='int[]'},
    { name='c1', type='int[]'},
    { name='c2', type='int[]'},
    { name='d1', type='table<int,int>'},
    { name='d2', type='table<int,int>'},
    { name='e1', type='int'},
    { name='e2', type='long'},
    { name='e3', type='string'},
    { name='f1', type='int'},
    { name='f2', type='long'},
    { name='f3', type='string'},
}

---@class test.TestSize 
---@field public id int
---@field public x1 int[]
---@field public x2 int[]
---@field public x3 int[]
---@field public x4 table<int,int>
beans['test.TestSize'] =
{
    { name='id', type='int'},
    { name='x1', type='int[]'},
    { name='x2', type='int[]'},
    { name='x3', type='int[]'},
    { name='x4', type='table<int,int>'},
}

---@class test.TestSet 
---@field public id int
---@field public x1 int[]
---@field public x2 long[]
---@field public x3 string[]
---@field public x4 test.DemoEnum[]
beans['test.TestSet'] =
{
    { name='id', type='int'},
    { name='x1', type='int[]'},
    { name='x2', type='long[]'},
    { name='x3', type='string[]'},
    { name='x4', type='test.DemoEnum[]'},
}

---@class test.DetectEncoding 
---@field public id int
---@field public name string
beans['test.DetectEncoding'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
}

---@class test.DefineFromExcel 
---@field public id int
---@field public x1 bool
---@field public x5 long
---@field public x6 float
---@field public x8 int
---@field public x10 string
---@field public x13 test.ETestQuality
---@field public x14 test.DemoDynamic
---@field public v2 vector2
---@field public t1 int
---@field public k1 int[]
---@field public k8 table<int,int>
---@field public k9 test.DemoE2[]
beans['test.DefineFromExcel'] =
{
    { name='id', type='int'},
    { name='x1', type='bool'},
    { name='x5', type='long'},
    { name='x6', type='float'},
    { name='x8', type='int'},
    { name='x10', type='string'},
    { name='x13', type='test.ETestQuality'},
    { name='x14', type='test.DemoDynamic'},
    { name='v2', type='vector2'},
    { name='t1', type='int'},
    { name='k1', type='int[]'},
    { name='k8', type='table<int,int>'},
    { name='k9', type='test.DemoE2[]'},
}

---@class test.DefineFromExcelOne 
---@field public unlock_equip int
---@field public unlock_hero int
---@field public default_avatar string
---@field public default_item string
beans['test.DefineFromExcelOne'] =
{
    { name='unlock_equip', type='int'},
    { name='unlock_hero', type='int'},
    { name='default_avatar', type='string'},
    { name='default_item', type='string'},
}

---@class test.TestIndex 
---@field public id int
---@field public eles test.DemoType1[]
beans['test.TestIndex'] =
{
    { name='id', type='int'},
    { name='eles', type='test.DemoType1[]'},
}

---@class test.TestMap 
---@field public id int
---@field public x1 table<int,int>
---@field public x2 table<long,int>
---@field public x3 table<string,int>
---@field public x4 table<test.DemoEnum,int>
beans['test.TestMap'] =
{
    { name='id', type='int'},
    { name='x1', type='table<int,int>'},
    { name='x2', type='table<long,int>'},
    { name='x3', type='table<string,int>'},
    { name='x4', type='table<test.DemoEnum,int>'},
}

---@class test.ExcelFromJson 
---@field public x4 int
---@field public x1 bool
---@field public x5 long
---@field public x6 float
---@field public s1 string
---@field public s2 string
---@field public v2 vector2
---@field public v3 vector3
---@field public v4 vector4
---@field public t1 int
---@field public x12 test.DemoType1
---@field public x13 test.DemoEnum
---@field public x14 test.DemoDynamic
---@field public k1 int[]
---@field public k8 table<int,int>
---@field public k9 test.DemoE2[]
---@field public k15 test.DemoDynamic[]
beans['test.ExcelFromJson'] =
{
    { name='x4', type='int'},
    { name='x1', type='bool'},
    { name='x5', type='long'},
    { name='x6', type='float'},
    { name='s1', type='string'},
    { name='s2', type='string'},
    { name='v2', type='vector2'},
    { name='v3', type='vector3'},
    { name='v4', type='vector4'},
    { name='t1', type='int'},
    { name='x12', type='test.DemoType1'},
    { name='x13', type='test.DemoEnum'},
    { name='x14', type='test.DemoDynamic'},
    { name='k1', type='int[]'},
    { name='k8', type='table<int,int>'},
    { name='k9', type='test.DemoE2[]'},
    { name='k15', type='test.DemoDynamic[]'},
}

---@class test.CompositeJsonTable1 
---@field public id int
---@field public x string
beans['test.CompositeJsonTable1'] =
{
    { name='id', type='int'},
    { name='x', type='string'},
}

---@class test.CompositeJsonTable2 
---@field public id int
---@field public y int
beans['test.CompositeJsonTable2'] =
{
    { name='id', type='int'},
    { name='y', type='int'},
}

---@class test.CompositeJsonTable3 
---@field public a int
---@field public b int
beans['test.CompositeJsonTable3'] =
{
    { name='a', type='int'},
    { name='b', type='int'},
}

---@class test.ExcelFromJsonMultiRow 
---@field public id int
---@field public x int
---@field public items test.TestRow[]
beans['test.ExcelFromJsonMultiRow'] =
{
    { name='id', type='int'},
    { name='x', type='int'},
    { name='items', type='test.TestRow[]'},
}

---@class test.TestRow 
---@field public x int
---@field public y bool
---@field public z string
---@field public a test.Test3
---@field public b int[]
beans['test.TestRow'] =
{
    { name='x', type='int'},
    { name='y', type='bool'},
    { name='z', type='string'},
    { name='a', type='test.Test3'},
    { name='b', type='int[]'},
}

---@class test.Test3 
---@field public x int
---@field public y int
beans['test.Test3'] =
{
    { name='x', type='int'},
    { name='y', type='int'},
}

---@class test.DefineFromExcel2 
---@field public id int
---@field public x1 bool
---@field public x5 long
---@field public x6 float
---@field public x8 int
---@field public x10 string
---@field public x13 test.ETestQuality
---@field public x14 test.DemoDynamic
---@field public v2 vector2
---@field public t1 int
---@field public k1 int[]
---@field public k8 table<int,int>
---@field public k9 test.DemoE2[]
beans['test.DefineFromExcel2'] =
{
    { name='id', type='int'},
    { name='x1', type='bool'},
    { name='x5', type='long'},
    { name='x6', type='float'},
    { name='x8', type='int'},
    { name='x10', type='string'},
    { name='x13', type='test.ETestQuality'},
    { name='x14', type='test.DemoDynamic'},
    { name='v2', type='vector2'},
    { name='t1', type='int'},
    { name='k1', type='int[]'},
    { name='k8', type='table<int,int>'},
    { name='k9', type='test.DemoE2[]'},
}

---@class test.TestExcelBean1 
---@field public x1 int
---@field public x2 string
---@field public x3 int
---@field public x4 float
beans['test.TestExcelBean1'] =
{
    { name='x1', type='int'},
    { name='x2', type='string'},
    { name='x3', type='int'},
    { name='x4', type='float'},
}

---@class test.TestDesc 
---@field public id int
---@field public name string
---@field public a1 int
---@field public a2 int
---@field public x1 test.H1
---@field public x2 test.H2[]
---@field public x3 test.H2[]
beans['test.TestDesc'] =
{
    { name='id', type='int'},
    { name='name', type='string'},
    { name='a1', type='int'},
    { name='a2', type='int'},
    { name='x1', type='test.H1'},
    { name='x2', type='test.H2[]'},
    { name='x3', type='test.H2[]'},
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

    { name='TbTestRef', file='test_tbtestref', mode='map', index='id', value_type='test.TestRef' },

    { name='TbTestSize', file='test_tbtestsize', mode='map', index='id', value_type='test.TestSize' },

    { name='TbTestSet', file='test_tbtestset', mode='map', index='id', value_type='test.TestSet' },

    { name='TbDetectCsvEncoding', file='test_tbdetectcsvencoding', mode='map', index='id', value_type='test.DetectEncoding' },

    { name='TbDefineFromExcel', file='test_tbdefinefromexcel', mode='map', index='id', value_type='test.DefineFromExcel' },

    { name='TbDefineFromExcelOne', file='test_tbdefinefromexcelone', mode='one', value_type='test.DefineFromExcelOne'},
    
    { name='TbTestIndex', file='test_tbtestindex', mode='map', index='id', value_type='test.TestIndex' },

    { name='TbTestMap', file='test_tbtestmap', mode='map', index='id', value_type='test.TestMap' },

    { name='TbExcelFromJson', file='test_tbexcelfromjson', mode='map', index='x4', value_type='test.ExcelFromJson' },

    { name='TbCompositeJsonTable1', file='test_tbcompositejsontable1', mode='map', index='id', value_type='test.CompositeJsonTable1' },

    { name='TbCompositeJsonTable2', file='test_tbcompositejsontable2', mode='map', index='id', value_type='test.CompositeJsonTable2' },

    { name='TbCompositeJsonTable3', file='test_tbcompositejsontable3', mode='one', value_type='test.CompositeJsonTable3'},
    
    { name='TbExcelFromJsonMultiRow', file='test_tbexcelfromjsonmultirow', mode='map', index='id', value_type='test.ExcelFromJsonMultiRow' },

    { name='TbDemoGroupDefineFromExcel', file='test_tbdemogroupdefinefromexcel', mode='map', index='id', value_type='test.DemoGroup' },

    { name='TbDefineFromExcel2', file='test_tbdefinefromexcel2', mode='map', index='id', value_type='test.DefineFromExcel2' },

    { name='TbTestExcelBean', file='test_tbtestexcelbean', mode='map', index='x1', value_type='test.TestExcelBean1' },

    { name='TbTestDesc', file='test_tbtestdesc', mode='map', index='id', value_type='test.TestDesc' },

}

return { enums = enums, beans = beans, tables = tables }
