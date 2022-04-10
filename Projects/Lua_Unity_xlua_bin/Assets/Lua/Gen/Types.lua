
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
     ---@field public NONE int
     ---@field public A int
     ---@field public B int
     ---@field public C int
     ---@field public D int
    ['test.DemoEnum'] = {   NONE=0,  A=1,  B=2,  C=4,  D=5,  };
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
    ---@class test.AudioType
     ---@field public UNKNOWN int
     ---@field public ACC int
     ---@field public AIFF int
    ['test.AudioType'] = {   UNKNOWN=0,  ACC=1,  AIFF=2,  };
    ---@class test.ETestQuality
     ---@field public A int
     ---@field public B int
     ---@field public C int
     ---@field public D int
    ['test.ETestQuality'] = {   A=1,  B=2,  C=3,  D=4,  };
    ---@class test.AccessFlag
     ---@field public WRITE int
     ---@field public READ int
     ---@field public TRUNCATE int
     ---@field public NEW int
     ---@field public READ_WRITE int
    ['test.AccessFlag'] = {   WRITE=1,  READ=2,  TRUNCATE=4,  NEW=8,  READ_WRITE=3,  };
}


local function InitTypes(methods)
    local readBool = methods.readBool
    local readByte = methods.readByte
    local readShort = methods.readShort
    local readFshort = methods.readFshort
    local readInt = methods.readInt
    local readFint = methods.readFint
    local readLong = methods.readLong
    local readFlong = methods.readFlong
    local readFloat = methods.readFloat
    local readDouble = methods.readDouble
    local readSize = methods.readSize

    local readString = methods.readString

    local function readVector2(bs)
        return { x = readFloat(bs), y = readFloat(bs) }
    end

    local function readVector3(bs)
        return { x = readFloat(bs), y = readFloat(bs), z = readFloat(bs) }
    end

    local function readVector4(bs)
        return { x = readFloat(bs), y = readFloat(bs), z = readFloat(bs), w = readFloat(bs) }
    end

    local function readList(bs, keyFun)
        local list = {}
        local v
        for i = 1, readSize(bs) do
            tinsert(list, keyFun(bs))
        end
        return list
    end

    local readArray = readList

    local function readSet(bs, keyFun)
        local set = {}
        local v
        for i = 1, readSize(bs) do
            tinsert(set, keyFun(bs))
        end
        return set
    end

    local function readMap(bs, keyFun, valueFun)
        local map = {}
        for i = 1, readSize(bs) do
            local k = keyFun(bs)
            local v = valueFun(bs)
            map[k] = v
        end
        return map
    end

    local function readNullableBool(bs)
        if readBool(bs) then
            return readBool(bs)
        end
    end

    local beans = {}
    do
    ---@class ai.Blackboard 
     ---@field public name string
     ---@field public desc string
     ---@field public parent_name string
     ---@field public keys ai.BlackboardKey[]
        local class = SimpleClass()
        class._id = 1576193005
        class['_type_'] = 'ai.Blackboard'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            parent_name = readString(bs),
            keys = readList(bs, beans['ai.BlackboardKey']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.BlackboardKey 
     ---@field public name string
     ---@field public desc string
     ---@field public is_static bool
     ---@field public type ai.EKeyType
     ---@field public type_class_name string
        local class = SimpleClass()
        class._id = -511559886
        class['_type_'] = 'ai.BlackboardKey'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            is_static = readBool(bs),
            type = readInt(bs),
            type_class_name = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.BehaviorTree 
     ---@field public id int
     ---@field public name string
     ---@field public desc string
     ---@field public blackboard_id string
     ---@field public root ai.ComposeNode
        local class = SimpleClass()
        class._id = 159552822
        class['_type_'] = 'ai.BehaviorTree'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            desc = readString(bs),
            blackboard_id = readString(bs),
            root = beans['ai.ComposeNode']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Node 
     ---@field public id int
     ---@field public node_name string
        local class = SimpleClass()
        class._id = -1055479768
        class['_type_'] = 'ai.Node'
        local id2name = {  [1812449155] = 'ai.UeSetDefaultFocus',  [990693812] = 'ai.ExecuteTimeStatistic',  [1601247918] = 'ai.ChooseTarget',  [1195270745] = 'ai.KeepFaceTarget',  [-999247644] = 'ai.GetOwnerPlayer',  [-61887372] = 'ai.UpdateDailyBehaviorProps',  [-513308166] = 'ai.UeLoop',  [-951439423] = 'ai.UeCooldown',  [338469720] = 'ai.UeTimeLimit',  [-315297507] = 'ai.UeBlackboard',  [195054574] = 'ai.UeForceSuccess',  [1255972344] = 'ai.IsAtLocation',  [-1207170283] = 'ai.DistanceLessThan',  [-1789006105] = 'ai.Sequence',  [-1946981627] = 'ai.Selector',  [-1952582529] = 'ai.SimpleParallel',  [-512994101] = 'ai.UeWait',  [1215378271] = 'ai.UeWaitBlackboardTime',  [514987779] = 'ai.MoveToTarget',  [-918812268] = 'ai.ChooseSkill',  [-2140042998] = 'ai.MoveToRandomLocation',  [-969953113] = 'ai.MoveToLocation',  [1357409728] = 'ai.DebugPrint',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Service :ai.Node 
        local class = SimpleClass()
        class._id = -472395057
        class['_type_'] = 'ai.Service'
        local id2name = {  [1812449155] = 'ai.UeSetDefaultFocus',  [990693812] = 'ai.ExecuteTimeStatistic',  [1601247918] = 'ai.ChooseTarget',  [1195270745] = 'ai.KeepFaceTarget',  [-999247644] = 'ai.GetOwnerPlayer',  [-61887372] = 'ai.UpdateDailyBehaviorProps',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeSetDefaultFocus :ai.Service 
     ---@field public keyboard_key string
        local class = SimpleClass()
        class._id = 1812449155
        class['_type_'] = 'ai.UeSetDefaultFocus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            keyboard_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.ExecuteTimeStatistic :ai.Service 
        local class = SimpleClass()
        class._id = 990693812
        class['_type_'] = 'ai.ExecuteTimeStatistic'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.ChooseTarget :ai.Service 
     ---@field public result_target_key string
        local class = SimpleClass()
        class._id = 1601247918
        class['_type_'] = 'ai.ChooseTarget'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            result_target_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.KeepFaceTarget :ai.Service 
     ---@field public target_actor_key string
        local class = SimpleClass()
        class._id = 1195270745
        class['_type_'] = 'ai.KeepFaceTarget'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            target_actor_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.GetOwnerPlayer :ai.Service 
     ---@field public player_actor_key string
        local class = SimpleClass()
        class._id = -999247644
        class['_type_'] = 'ai.GetOwnerPlayer'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            player_actor_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -61887372
        class['_type_'] = 'ai.UpdateDailyBehaviorProps'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            satiety_key = readString(bs),
            energy_key = readString(bs),
            mood_key = readString(bs),
            satiety_lower_threshold_key = readString(bs),
            satiety_upper_threshold_key = readString(bs),
            energy_lower_threshold_key = readString(bs),
            energy_upper_threshold_key = readString(bs),
            mood_lower_threshold_key = readString(bs),
            mood_upper_threshold_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Decorator :ai.Node 
     ---@field public flow_abort_mode ai.EFlowAbortMode
        local class = SimpleClass()
        class._id = 2017109461
        class['_type_'] = 'ai.Decorator'
        local id2name = {  [-513308166] = 'ai.UeLoop',  [-951439423] = 'ai.UeCooldown',  [338469720] = 'ai.UeTimeLimit',  [-315297507] = 'ai.UeBlackboard',  [195054574] = 'ai.UeForceSuccess',  [1255972344] = 'ai.IsAtLocation',  [-1207170283] = 'ai.DistanceLessThan',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeLoop :ai.Decorator 
     ---@field public num_loops int
     ---@field public infinite_loop bool
     ---@field public infinite_loop_timeout_time float
        local class = SimpleClass()
        class._id = -513308166
        class['_type_'] = 'ai.UeLoop'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            num_loops = readInt(bs),
            infinite_loop = readBool(bs),
            infinite_loop_timeout_time = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeCooldown :ai.Decorator 
     ---@field public cooldown_time float
        local class = SimpleClass()
        class._id = -951439423
        class['_type_'] = 'ai.UeCooldown'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            cooldown_time = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeTimeLimit :ai.Decorator 
     ---@field public limit_time float
        local class = SimpleClass()
        class._id = 338469720
        class['_type_'] = 'ai.UeTimeLimit'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            limit_time = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeBlackboard :ai.Decorator 
     ---@field public notify_observer ai.ENotifyObserverMode
     ---@field public blackboard_key string
     ---@field public key_query ai.KeyQueryOperator
        local class = SimpleClass()
        class._id = -315297507
        class['_type_'] = 'ai.UeBlackboard'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            notify_observer = readInt(bs),
            blackboard_key = readString(bs),
            key_query = beans['ai.KeyQueryOperator']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.KeyQueryOperator 
        local class = SimpleClass()
        class._id = -738364781
        class['_type_'] = 'ai.KeyQueryOperator'
        local id2name = {  [1635350898] = 'ai.IsSet',  [790736255] = 'ai.IsNotSet',  [-979891605] = 'ai.BinaryOperator',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.IsSet :ai.KeyQueryOperator 
        local class = SimpleClass()
        class._id = 1635350898
        class['_type_'] = 'ai.IsSet'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.IsNotSet :ai.KeyQueryOperator 
        local class = SimpleClass()
        class._id = 790736255
        class['_type_'] = 'ai.IsNotSet'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.BinaryOperator :ai.KeyQueryOperator 
     ---@field public oper ai.EOperator
     ---@field public data ai.KeyData
        local class = SimpleClass()
        class._id = -979891605
        class['_type_'] = 'ai.BinaryOperator'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            oper = readInt(bs),
            data = beans['ai.KeyData']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.KeyData 
        local class = SimpleClass()
        class._id = 1022478019
        class['_type_'] = 'ai.KeyData'
        local id2name = {  [-719747885] = 'ai.FloatKeyData',  [-342751904] = 'ai.IntKeyData',  [-307888654] = 'ai.StringKeyData',  [1517269500] = 'ai.BlackboardKeyData',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.FloatKeyData :ai.KeyData 
     ---@field public value float
        local class = SimpleClass()
        class._id = -719747885
        class['_type_'] = 'ai.FloatKeyData'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            value = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.IntKeyData :ai.KeyData 
     ---@field public value int
        local class = SimpleClass()
        class._id = -342751904
        class['_type_'] = 'ai.IntKeyData'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            value = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.StringKeyData :ai.KeyData 
     ---@field public value string
        local class = SimpleClass()
        class._id = -307888654
        class['_type_'] = 'ai.StringKeyData'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            value = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.BlackboardKeyData :ai.KeyData 
     ---@field public value string
        local class = SimpleClass()
        class._id = 1517269500
        class['_type_'] = 'ai.BlackboardKeyData'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            value = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeForceSuccess :ai.Decorator 
        local class = SimpleClass()
        class._id = 195054574
        class['_type_'] = 'ai.UeForceSuccess'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.IsAtLocation :ai.Decorator 
     ---@field public acceptable_radius float
     ---@field public keyboard_key string
     ---@field public inverse_condition bool
        local class = SimpleClass()
        class._id = 1255972344
        class['_type_'] = 'ai.IsAtLocation'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            acceptable_radius = readFloat(bs),
            keyboard_key = readString(bs),
            inverse_condition = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.DistanceLessThan :ai.Decorator 
     ---@field public actor1_key string
     ---@field public actor2_key string
     ---@field public distance float
     ---@field public reverse_result bool
        local class = SimpleClass()
        class._id = -1207170283
        class['_type_'] = 'ai.DistanceLessThan'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            flow_abort_mode = readInt(bs),
            actor1_key = readString(bs),
            actor2_key = readString(bs),
            distance = readFloat(bs),
            reverse_result = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.FlowNode :ai.Node 
     ---@field public decorators ai.Decorator[]
     ---@field public services ai.Service[]
        local class = SimpleClass()
        class._id = -1109240970
        class['_type_'] = 'ai.FlowNode'
        local id2name = {  [-1789006105] = 'ai.Sequence',  [-1946981627] = 'ai.Selector',  [-1952582529] = 'ai.SimpleParallel',  [-512994101] = 'ai.UeWait',  [1215378271] = 'ai.UeWaitBlackboardTime',  [514987779] = 'ai.MoveToTarget',  [-918812268] = 'ai.ChooseSkill',  [-2140042998] = 'ai.MoveToRandomLocation',  [-969953113] = 'ai.MoveToLocation',  [1357409728] = 'ai.DebugPrint',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.ComposeNode :ai.FlowNode 
        local class = SimpleClass()
        class._id = -70129202
        class['_type_'] = 'ai.ComposeNode'
        local id2name = {  [-1789006105] = 'ai.Sequence',  [-1946981627] = 'ai.Selector',  [-1952582529] = 'ai.SimpleParallel',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Sequence :ai.ComposeNode 
     ---@field public children ai.FlowNode[]
        local class = SimpleClass()
        class._id = -1789006105
        class['_type_'] = 'ai.Sequence'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            children = readList(bs, beans['ai.FlowNode']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Selector :ai.ComposeNode 
     ---@field public children ai.FlowNode[]
        local class = SimpleClass()
        class._id = -1946981627
        class['_type_'] = 'ai.Selector'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            children = readList(bs, beans['ai.FlowNode']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.SimpleParallel :ai.ComposeNode 
     ---@field public finish_mode ai.EFinishMode
     ---@field public main_task ai.Task
     ---@field public background_node ai.FlowNode
        local class = SimpleClass()
        class._id = -1952582529
        class['_type_'] = 'ai.SimpleParallel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            finish_mode = readInt(bs),
            main_task = beans['ai.Task']._deserialize(bs),
            background_node = beans['ai.FlowNode']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.Task :ai.FlowNode 
     ---@field public ignore_restart_self bool
        local class = SimpleClass()
        class._id = -1055314005
        class['_type_'] = 'ai.Task'
        local id2name = {  [-512994101] = 'ai.UeWait',  [1215378271] = 'ai.UeWaitBlackboardTime',  [514987779] = 'ai.MoveToTarget',  [-918812268] = 'ai.ChooseSkill',  [-2140042998] = 'ai.MoveToRandomLocation',  [-969953113] = 'ai.MoveToLocation',  [1357409728] = 'ai.DebugPrint',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeWait :ai.Task 
     ---@field public wait_time float
     ---@field public random_deviation float
        local class = SimpleClass()
        class._id = -512994101
        class['_type_'] = 'ai.UeWait'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            wait_time = readFloat(bs),
            random_deviation = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.UeWaitBlackboardTime :ai.Task 
     ---@field public blackboard_key string
        local class = SimpleClass()
        class._id = 1215378271
        class['_type_'] = 'ai.UeWaitBlackboardTime'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            blackboard_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.MoveToTarget :ai.Task 
     ---@field public target_actor_key string
     ---@field public acceptable_radius float
        local class = SimpleClass()
        class._id = 514987779
        class['_type_'] = 'ai.MoveToTarget'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            target_actor_key = readString(bs),
            acceptable_radius = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.ChooseSkill :ai.Task 
     ---@field public target_actor_key string
     ---@field public result_skill_id_key string
        local class = SimpleClass()
        class._id = -918812268
        class['_type_'] = 'ai.ChooseSkill'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            target_actor_key = readString(bs),
            result_skill_id_key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.MoveToRandomLocation :ai.Task 
     ---@field public origin_position_key string
     ---@field public radius float
        local class = SimpleClass()
        class._id = -2140042998
        class['_type_'] = 'ai.MoveToRandomLocation'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            origin_position_key = readString(bs),
            radius = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.MoveToLocation :ai.Task 
     ---@field public location vector3
     ---@field public acceptable_radius float
        local class = SimpleClass()
        class._id = -969953113
        class['_type_'] = 'ai.MoveToLocation'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            location = readVector3(bs),
            acceptable_radius = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class ai.DebugPrint :ai.Task 
     ---@field public text string
        local class = SimpleClass()
        class._id = 1357409728
        class['_type_'] = 'ai.DebugPrint'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            node_name = readString(bs),
            decorators = readList(bs, beans['ai.Decorator']._deserialize),
            services = readList(bs, beans['ai.Service']._deserialize),
            ignore_restart_self = readBool(bs),
            text = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.Clazz 
     ---@field public name string
     ---@field public desc string
     ---@field public parents blueprint.Clazz[]
     ---@field public methods blueprint.Method[]
        local class = SimpleClass()
        class._id = 1691473693
        class['_type_'] = 'blueprint.Clazz'
        local id2name = {  [2114170750] = 'blueprint.Interface',  [-2073576778] = 'blueprint.NormalClazz',  [1827364892] = 'blueprint.EnumClazz',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.Method 
     ---@field public name string
     ---@field public desc string
     ---@field public is_static bool
     ---@field public return_type string
     ---@field public parameters blueprint.ParamInfo[]
        local class = SimpleClass()
        class._id = 1176452284
        class['_type_'] = 'blueprint.Method'
        local id2name = {  [-392137809] = 'blueprint.AbstraceMethod',  [1739079015] = 'blueprint.ExternalMethod',  [-696408103] = 'blueprint.BlueprintMethod',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.ParamInfo 
     ---@field public name string
     ---@field public type string
     ---@field public is_ref bool
        local class = SimpleClass()
        class._id = -729799392
        class['_type_'] = 'blueprint.ParamInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            type = readString(bs),
            is_ref = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.AbstraceMethod :blueprint.Method 
        local class = SimpleClass()
        class._id = -392137809
        class['_type_'] = 'blueprint.AbstraceMethod'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            is_static = readBool(bs),
            return_type = readString(bs),
            parameters = readList(bs, beans['blueprint.ParamInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.ExternalMethod :blueprint.Method 
        local class = SimpleClass()
        class._id = 1739079015
        class['_type_'] = 'blueprint.ExternalMethod'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            is_static = readBool(bs),
            return_type = readString(bs),
            parameters = readList(bs, beans['blueprint.ParamInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.BlueprintMethod :blueprint.Method 
        local class = SimpleClass()
        class._id = -696408103
        class['_type_'] = 'blueprint.BlueprintMethod'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            is_static = readBool(bs),
            return_type = readString(bs),
            parameters = readList(bs, beans['blueprint.ParamInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.Interface :blueprint.Clazz 
        local class = SimpleClass()
        class._id = 2114170750
        class['_type_'] = 'blueprint.Interface'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            parents = readList(bs, beans['blueprint.Clazz']._deserialize),
            methods = readList(bs, beans['blueprint.Method']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.NormalClazz :blueprint.Clazz 
     ---@field public is_abstract bool
     ---@field public fields blueprint.Field[]
        local class = SimpleClass()
        class._id = -2073576778
        class['_type_'] = 'blueprint.NormalClazz'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            parents = readList(bs, beans['blueprint.Clazz']._deserialize),
            methods = readList(bs, beans['blueprint.Method']._deserialize),
            is_abstract = readBool(bs),
            fields = readList(bs, beans['blueprint.Field']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.Field 
     ---@field public name string
     ---@field public type string
     ---@field public desc string
        local class = SimpleClass()
        class._id = 1694158271
        class['_type_'] = 'blueprint.Field'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            type = readString(bs),
            desc = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.EnumClazz :blueprint.Clazz 
     ---@field public enums blueprint.EnumField[]
        local class = SimpleClass()
        class._id = 1827364892
        class['_type_'] = 'blueprint.EnumClazz'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            desc = readString(bs),
            parents = readList(bs, beans['blueprint.Clazz']._deserialize),
            methods = readList(bs, beans['blueprint.Method']._deserialize),
            enums = readList(bs, beans['blueprint.EnumField']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class blueprint.EnumField 
     ---@field public name string
     ---@field public value int
        local class = SimpleClass()
        class._id = 1830049470
        class['_type_'] = 'blueprint.EnumField'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            name = readString(bs),
            value = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.DropInfo 
     ---@field public id int
     ---@field public desc string
     ---@field public client_show_items bonus.ShowItemInfo[]
     ---@field public bonus bonus.Bonus
        local class = SimpleClass()
        class._id = -2014781108
        class['_type_'] = 'bonus.DropInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            desc = readString(bs),
            client_show_items = readList(bs, beans['bonus.ShowItemInfo']._deserialize),
            bonus = beans['bonus.Bonus']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.ShowItemInfo 
     ---@field public item_id int
     ---@field public item_num long
        local class = SimpleClass()
        class._id = -1496363507
        class['_type_'] = 'bonus.ShowItemInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            item_num = readLong(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.Bonus 
        local class = SimpleClass()
        class._id = 813132144
        class['_type_'] = 'bonus.Bonus'
        local id2name = {  [-1649658966] = 'bonus.OneItem',  [400179721] = 'bonus.OneItems',  [1689011106] = 'bonus.Item',  [819736849] = 'bonus.Items',  [-229470727] = 'bonus.CoefficientItem',  [-356202311] = 'bonus.WeightItems',  [366387866] = 'bonus.ProbabilityItems',  [1421907893] = 'bonus.MultiBonus',  [359783161] = 'bonus.ProbabilityBonus',  [-362807016] = 'bonus.WeightBonus',  [1959868225] = 'bonus.DropBonus',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.OneItem :bonus.Bonus 
     ---@field public item_id int
        local class = SimpleClass()
        class._id = -1649658966
        class['_type_'] = 'bonus.OneItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.OneItems :bonus.Bonus 
     ---@field public items int[]
        local class = SimpleClass()
        class._id = 400179721
        class['_type_'] = 'bonus.OneItems'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            items = readArray(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.Item :bonus.Bonus 
     ---@field public item_id int
     ---@field public amount int
        local class = SimpleClass()
        class._id = 1689011106
        class['_type_'] = 'bonus.Item'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            amount = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.Items :bonus.Bonus 
     ---@field public item_list bonus.Item[]
        local class = SimpleClass()
        class._id = 819736849
        class['_type_'] = 'bonus.Items'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_list = readArray(bs, beans['bonus.Item']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.CoefficientItem :bonus.Bonus 
     ---@field public bonus_id int
     ---@field public bonus_list bonus.Items
        local class = SimpleClass()
        class._id = -229470727
        class['_type_'] = 'bonus.CoefficientItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonus_id = readInt(bs),
            bonus_list = beans['bonus.Items']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.WeightItems :bonus.Bonus 
     ---@field public item_list bonus.WeightItemInfo[]
        local class = SimpleClass()
        class._id = -356202311
        class['_type_'] = 'bonus.WeightItems'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_list = readArray(bs, beans['bonus.WeightItemInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.WeightItemInfo 
     ---@field public item_id int
     ---@field public num int
     ---@field public weight int
        local class = SimpleClass()
        class._id = 1239999176
        class['_type_'] = 'bonus.WeightItemInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            num = readInt(bs),
            weight = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.ProbabilityItems :bonus.Bonus 
     ---@field public item_list bonus.ProbabilityItemInfo[]
        local class = SimpleClass()
        class._id = 366387866
        class['_type_'] = 'bonus.ProbabilityItems'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_list = readArray(bs, beans['bonus.ProbabilityItemInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.ProbabilityItemInfo 
     ---@field public item_id int
     ---@field public num int
     ---@field public probability float
        local class = SimpleClass()
        class._id = 1547874631
        class['_type_'] = 'bonus.ProbabilityItemInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            num = readInt(bs),
            probability = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.MultiBonus :bonus.Bonus 
     ---@field public bonuses bonus.Bonus[]
        local class = SimpleClass()
        class._id = 1421907893
        class['_type_'] = 'bonus.MultiBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonuses = readArray(bs, beans['bonus.Bonus']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.ProbabilityBonus :bonus.Bonus 
     ---@field public bonuses bonus.ProbabilityBonusInfo[]
        local class = SimpleClass()
        class._id = 359783161
        class['_type_'] = 'bonus.ProbabilityBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonuses = readArray(bs, beans['bonus.ProbabilityBonusInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.ProbabilityBonusInfo 
     ---@field public bonus bonus.Bonus
     ---@field public probability float
        local class = SimpleClass()
        class._id = 46960455
        class['_type_'] = 'bonus.ProbabilityBonusInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonus = beans['bonus.Bonus']._deserialize(bs),
            probability = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.WeightBonus :bonus.Bonus 
     ---@field public bonuses bonus.WeightBonusInfo[]
        local class = SimpleClass()
        class._id = -362807016
        class['_type_'] = 'bonus.WeightBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonuses = readArray(bs, beans['bonus.WeightBonusInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.WeightBonusInfo 
     ---@field public bonus bonus.Bonus
     ---@field public weight int
        local class = SimpleClass()
        class._id = -907244058
        class['_type_'] = 'bonus.WeightBonusInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bonus = beans['bonus.Bonus']._deserialize(bs),
            weight = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class bonus.DropBonus :bonus.Bonus 
     ---@field public id int
        local class = SimpleClass()
        class._id = 1959868225
        class['_type_'] = 'bonus.DropBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -848234488
        class['_type_'] = 'common.GlobalConfig'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            bag_capacity = readInt(bs),
            bag_capacity_special = readInt(bs),
            bag_temp_expendable_capacity = readInt(bs),
            bag_temp_tool_capacity = readInt(bs),
            bag_init_capacity = readInt(bs),
            quick_bag_capacity = readInt(bs),
            cloth_bag_capacity = readInt(bs),
            cloth_bag_init_capacity = readInt(bs),
            cloth_bag_capacity_special = readInt(bs),
            bag_init_items_drop_id = readBool(bs) and readInt(bs) or nil,
            mail_box_capacity = readInt(bs),
            damage_param_c = readFloat(bs),
            damage_param_e = readFloat(bs),
            damage_param_f = readFloat(bs),
            damage_param_d = readFloat(bs),
            role_speed = readFloat(bs),
            monster_speed = readFloat(bs),
            init_energy = readInt(bs),
            init_viality = readInt(bs),
            max_viality = readInt(bs),
            per_viality_recovery_time = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorInfo 
     ---@field public code string
     ---@field public desc string
     ---@field public style error.ErrorStyle
        local class = SimpleClass()
        class._id = 1389347408
        class['_type_'] = 'error.ErrorInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            code = readString(bs),
            desc = readString(bs),
            style = beans['error.ErrorStyle']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorStyle 
        local class = SimpleClass()
        class._id = 129528911
        class['_type_'] = 'error.ErrorStyle'
        local id2name = {  [1915239884] = 'error.ErrorStyleTip',  [-1920482343] = 'error.ErrorStyleMsgbox',  [-2010134516] = 'error.ErrorStyleDlgOk',  [971221414] = 'error.ErrorStyleDlgOkCancel',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorStyleTip :error.ErrorStyle 
        local class = SimpleClass()
        class._id = 1915239884
        class['_type_'] = 'error.ErrorStyleTip'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorStyleMsgbox :error.ErrorStyle 
     ---@field public btn_name string
     ---@field public operation error.EOperation
        local class = SimpleClass()
        class._id = -1920482343
        class['_type_'] = 'error.ErrorStyleMsgbox'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            btn_name = readString(bs),
            operation = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorStyleDlgOk :error.ErrorStyle 
     ---@field public btn_name string
        local class = SimpleClass()
        class._id = -2010134516
        class['_type_'] = 'error.ErrorStyleDlgOk'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            btn_name = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.ErrorStyleDlgOkCancel :error.ErrorStyle 
     ---@field public btn1_name string
     ---@field public btn2_name string
        local class = SimpleClass()
        class._id = 971221414
        class['_type_'] = 'error.ErrorStyleDlgOkCancel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            btn1_name = readString(bs),
            btn2_name = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class error.CodeInfo 
     ---@field public code error.EErrorCode
     ---@field public key string
        local class = SimpleClass()
        class._id = -1942481535
        class['_type_'] = 'error.CodeInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            code = readInt(bs),
            key = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = 2107285806
        class['_type_'] = 'item.Item'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            major_type = readInt(bs),
            minor_type = readInt(bs),
            max_pile_num = readInt(bs),
            quality = readInt(bs),
            icon = readString(bs),
            icon_backgroud = readString(bs),
            icon_mask = readString(bs),
            desc = readString(bs),
            show_order = readInt(bs),
            quantifier = readString(bs),
            show_in_bag = readBool(bs),
            min_show_level = readInt(bs),
            batch_usable = readBool(bs),
            progress_time_when_use = readFloat(bs),
            show_hint_when_use = readBool(bs),
            droppable = readBool(bs),
            price = readBool(bs) and readInt(bs) or nil,
            use_type = readInt(bs),
            level_up_id = readBool(bs) and readInt(bs) or nil,
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.ItemFunction 
     ---@field public minor_type item.EMinorType
     ---@field public func_type item.EItemFunctionType
     ---@field public method string
     ---@field public close_bag_ui bool
        local class = SimpleClass()
        class._id = 1205824294
        class['_type_'] = 'item.ItemFunction'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            minor_type = readInt(bs),
            func_type = readInt(bs),
            method = readString(bs),
            close_bag_ui = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.ItemExtra 
     ---@field public id int
        local class = SimpleClass()
        class._id = 23433090
        class['_type_'] = 'item.ItemExtra'
        local id2name = {  [1494222369] = 'item.TreasureBox',  [640937802] = 'item.InteractionItem',  [1659907149] = 'item.Clothes',  [-1679179579] = 'item.DesignDrawing',  [896889705] = 'item.Dymmy',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.TreasureBox :item.ItemExtra 
     ---@field public key_item_id int
     ---@field public open_level condition.MinLevel
     ---@field public use_on_obtain bool
     ---@field public drop_ids int[]
     ---@field public choose_list item.ChooseOneBonus[]
        local class = SimpleClass()
        class._id = 1494222369
        class['_type_'] = 'item.TreasureBox'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            key_item_id = readBool(bs) and readInt(bs) or nil,
            open_level = beans['condition.MinLevel']._deserialize(bs),
            use_on_obtain = readBool(bs),
            drop_ids = readList(bs, readInt),
            choose_list = readList(bs, beans['item.ChooseOneBonus']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.Condition 
        local class = SimpleClass()
        class._id = 183625704
        class['_type_'] = 'condition.Condition'
        local id2name = {  [1069033789] = 'condition.TimeRange',  [934079583] = 'condition.MultiRoleCondition',  [103675143] = 'condition.GenderLimit',  [-1075273755] = 'condition.MinLevel',  [700922899] = 'condition.MaxLevel',  [907499647] = 'condition.MinMaxLevel',  [696630835] = 'condition.ClothesPropertyScoreGreaterThan',  [1961145317] = 'condition.ContainsItem',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.TimeRange :condition.Condition 
     ---@field public date_time_range common.DateTimeRange
        local class = SimpleClass()
        class._id = 1069033789
        class['_type_'] = 'condition.TimeRange'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            date_time_range = beans['common.DateTimeRange']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class common.DateTimeRange 
     ---@field public start_time int
     ---@field public end_time int
        local class = SimpleClass()
        class._id = 1642200959
        class['_type_'] = 'common.DateTimeRange'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            start_time = readBool(bs) and readInt(bs) or nil,
            end_time = readBool(bs) and readInt(bs) or nil,
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.RoleCondition :condition.Condition 
        local class = SimpleClass()
        class._id = -1632338542
        class['_type_'] = 'condition.RoleCondition'
        local id2name = {  [934079583] = 'condition.MultiRoleCondition',  [103675143] = 'condition.GenderLimit',  [-1075273755] = 'condition.MinLevel',  [700922899] = 'condition.MaxLevel',  [907499647] = 'condition.MinMaxLevel',  [696630835] = 'condition.ClothesPropertyScoreGreaterThan',  [1961145317] = 'condition.ContainsItem',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.MultiRoleCondition :condition.RoleCondition 
     ---@field public conditions condition.RoleCondition[]
        local class = SimpleClass()
        class._id = 934079583
        class['_type_'] = 'condition.MultiRoleCondition'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            conditions = readArray(bs, beans['condition.RoleCondition']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.BoolRoleCondition :condition.RoleCondition 
        local class = SimpleClass()
        class._id = -293269432
        class['_type_'] = 'condition.BoolRoleCondition'
        local id2name = {  [103675143] = 'condition.GenderLimit',  [-1075273755] = 'condition.MinLevel',  [700922899] = 'condition.MaxLevel',  [907499647] = 'condition.MinMaxLevel',  [696630835] = 'condition.ClothesPropertyScoreGreaterThan',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.GenderLimit :condition.BoolRoleCondition 
     ---@field public gender role.EGenderType
        local class = SimpleClass()
        class._id = 103675143
        class['_type_'] = 'condition.GenderLimit'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            gender = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.MinLevel :condition.BoolRoleCondition 
     ---@field public level int
        local class = SimpleClass()
        class._id = -1075273755
        class['_type_'] = 'condition.MinLevel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            level = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.MaxLevel :condition.BoolRoleCondition 
     ---@field public level int
        local class = SimpleClass()
        class._id = 700922899
        class['_type_'] = 'condition.MaxLevel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            level = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.MinMaxLevel :condition.BoolRoleCondition 
     ---@field public min int
     ---@field public max int
        local class = SimpleClass()
        class._id = 907499647
        class['_type_'] = 'condition.MinMaxLevel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            min = readInt(bs),
            max = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.ClothesPropertyScoreGreaterThan :condition.BoolRoleCondition 
     ---@field public prop item.EClothesPropertyType
     ---@field public value int
        local class = SimpleClass()
        class._id = 696630835
        class['_type_'] = 'condition.ClothesPropertyScoreGreaterThan'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            prop = readInt(bs),
            value = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class condition.ContainsItem :condition.RoleCondition 
     ---@field public item_id int
     ---@field public num int
     ---@field public reverse bool
        local class = SimpleClass()
        class._id = 1961145317
        class['_type_'] = 'condition.ContainsItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            num = readInt(bs),
            reverse = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.ChooseOneBonus 
     ---@field public drop_id int
     ---@field public is_unique bool
        local class = SimpleClass()
        class._id = 228058347
        class['_type_'] = 'item.ChooseOneBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            drop_id = readInt(bs),
            is_unique = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.InteractionItem :item.ItemExtra 
     ---@field public attack_num int
     ---@field public holding_static_mesh string
     ---@field public holding_static_mesh_mat string
        local class = SimpleClass()
        class._id = 640937802
        class['_type_'] = 'item.InteractionItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            attack_num = readBool(bs) and readInt(bs) or nil,
            holding_static_mesh = readString(bs),
            holding_static_mesh_mat = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.Clothes :item.ItemExtra 
     ---@field public attack int
     ---@field public hp long
     ---@field public energy_limit int
     ---@field public energy_resume int
        local class = SimpleClass()
        class._id = 1659907149
        class['_type_'] = 'item.Clothes'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            attack = readInt(bs),
            hp = readLong(bs),
            energy_limit = readInt(bs),
            energy_resume = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.DesignDrawing :item.ItemExtra 
     ---@field public learn_component_id int[]
        local class = SimpleClass()
        class._id = -1679179579
        class['_type_'] = 'item.DesignDrawing'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            learn_component_id = readList(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class item.Dymmy :item.ItemExtra 
     ---@field public cost cost.Cost
        local class = SimpleClass()
        class._id = 896889705
        class['_type_'] = 'item.Dymmy'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            cost = beans['cost.Cost']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.Cost 
        local class = SimpleClass()
        class._id = -316635794
        class['_type_'] = 'cost.Cost'
        local id2name = {  [911838111] = 'cost.CostCurrency',  [103084157] = 'cost.CostCurrencies',  [-1033587381] = 'cost.CostOneItem',  [-1249440351] = 'cost.CostItem',  [-77945102] = 'cost.CostItems',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.CostCurrency :cost.Cost 
     ---@field public type item.ECurrencyType
     ---@field public num int
        local class = SimpleClass()
        class._id = 911838111
        class['_type_'] = 'cost.CostCurrency'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            type = readInt(bs),
            num = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.CostCurrencies :cost.Cost 
     ---@field public currencies cost.CostCurrency[]
        local class = SimpleClass()
        class._id = 103084157
        class['_type_'] = 'cost.CostCurrencies'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            currencies = readList(bs, beans['cost.CostCurrency']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.CostOneItem :cost.Cost 
     ---@field public item_id int
        local class = SimpleClass()
        class._id = -1033587381
        class['_type_'] = 'cost.CostOneItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.CostItem :cost.Cost 
     ---@field public item_id int
     ---@field public amount int
        local class = SimpleClass()
        class._id = -1249440351
        class['_type_'] = 'cost.CostItem'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_id = readInt(bs),
            amount = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class cost.CostItems :cost.Cost 
     ---@field public item_list cost.CostItem[]
        local class = SimpleClass()
        class._id = -77945102
        class['_type_'] = 'cost.CostItems'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            item_list = readArray(bs, beans['cost.CostItem']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class l10n.L10NDemo 
     ---@field public id int
     ---@field public text string
        local class = SimpleClass()
        class._id = -331195887
        class['_type_'] = 'l10n.L10NDemo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            text = readString(bs) and readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class l10n.PatchDemo 
     ---@field public id int
     ---@field public value int
        local class = SimpleClass()
        class._id = -1707294656
        class['_type_'] = 'l10n.PatchDemo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            value = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class mail.SystemMail 
     ---@field public id int
     ---@field public title string
     ---@field public sender string
     ---@field public content string
     ---@field public award int[]
        local class = SimpleClass()
        class._id = 1214073149
        class['_type_'] = 'mail.SystemMail'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            title = readString(bs),
            sender = readString(bs),
            content = readString(bs),
            award = readList(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -287571791
        class['_type_'] = 'mail.GlobalMail'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            title = readString(bs),
            sender = readString(bs),
            content = readString(bs),
            award = readList(bs, readInt),
            all_server = readBool(bs),
            server_list = readList(bs, readInt),
            platform = readString(bs),
            channel = readString(bs),
            min_max_level = beans['condition.MinMaxLevel']._deserialize(bs),
            register_time = beans['condition.TimeRange']._deserialize(bs),
            mail_time = beans['condition.TimeRange']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class role.LevelExpAttr 
     ---@field public level int
     ---@field public need_exp long
     ---@field public clothes_attrs int[]
        local class = SimpleClass()
        class._id = -1569837022
        class['_type_'] = 'role.LevelExpAttr'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            level = readInt(bs),
            need_exp = readLong(bs),
            clothes_attrs = readList(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class role.LevelBonus 
     ---@field public id int
     ---@field public distinct_bonus_infos role.DistinctBonusInfos[]
        local class = SimpleClass()
        class._id = -572269677
        class['_type_'] = 'role.LevelBonus'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            distinct_bonus_infos = readList(bs, beans['role.DistinctBonusInfos']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class role.DistinctBonusInfos 
     ---@field public effective_level int
     ---@field public bonus_info role.BonusInfo[]
        local class = SimpleClass()
        class._id = -854361766
        class['_type_'] = 'role.DistinctBonusInfos'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            effective_level = readInt(bs),
            bonus_info = readList(bs, beans['role.BonusInfo']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class role.BonusInfo 
     ---@field public type item.ECurrencyType
     ---@field public coefficient float
        local class = SimpleClass()
        class._id = -1354421803
        class['_type_'] = 'role.BonusInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            type = readInt(bs),
            coefficient = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class tag.TestTag 
     ---@field public id int
     ---@field public value string
        local class = SimpleClass()
        class._id = 1742933812
        class['_type_'] = 'tag.TestTag'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            value = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -367048295
        class['_type_'] = 'test.DemoType2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x4 = readInt(bs),
            x1 = readBool(bs),
            x2 = readByte(bs),
            x3 = readShort(bs),
            x5 = readLong(bs),
            x6 = readFloat(bs),
            x7 = readDouble(bs),
            x8_0 = readFshort(bs),
            x8 = readFint(bs),
            x9 = readFlong(bs),
            x10 = readString(bs),
            x12 = beans['test.DemoType1']._deserialize(bs),
            x13 = readInt(bs),
            x14 = beans['test.DemoDynamic']._deserialize(bs),
            s1 = readString(bs) and readString(bs),
            v2 = readVector2(bs),
            v3 = readVector3(bs),
            v4 = readVector4(bs),
            t1 = readInt(bs),
            k1 = readArray(bs, readInt),
            k2 = readList(bs, readInt),
            k5 = readSet(bs, readInt),
            k8 = readMap(bs, readInt, readInt),
            k9 = readList(bs, beans['test.DemoE2']._deserialize),
            k15 = readArray(bs, beans['test.DemoDynamic']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoType1 
     ---@field public x1 int
        local class = SimpleClass()
        class._id = -367048296
        class['_type_'] = 'test.DemoType1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoDynamic 
     ---@field public x1 int
        local class = SimpleClass()
        class._id = -1863156384
        class['_type_'] = 'test.DemoDynamic'
        local id2name = {  [-2138341747] = 'test.DemoD2',  [-2138341717] = 'test.DemoE1',  [-989153243] = 'test.login.RoleInfo',  [-2138341744] = 'test.DemoD5',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoD2 :test.DemoDynamic 
     ---@field public x2 int
        local class = SimpleClass()
        class._id = -2138341747
        class['_type_'] = 'test.DemoD2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            x2 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoD3 :test.DemoDynamic 
     ---@field public x3 int
        local class = SimpleClass()
        class._id = -2138341746
        class['_type_'] = 'test.DemoD3'
        local id2name = {  [-2138341717] = 'test.DemoE1',  [-989153243] = 'test.login.RoleInfo',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoE1 :test.DemoD3 
     ---@field public x4 int
        local class = SimpleClass()
        class._id = -2138341717
        class['_type_'] = 'test.DemoE1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            x3 = readInt(bs),
            x4 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.login.RoleInfo :test.DemoD3 
     ---@field public role_id long
        local class = SimpleClass()
        class._id = -989153243
        class['_type_'] = 'test.login.RoleInfo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            x3 = readInt(bs),
            role_id = readLong(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoD5 :test.DemoDynamic 
     ---@field public time test.DateTimeRange
        local class = SimpleClass()
        class._id = -2138341744
        class['_type_'] = 'test.DemoD5'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            time = beans['test.DateTimeRange']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DateTimeRange 
     ---@field public start_time int
     ---@field public end_time int
        local class = SimpleClass()
        class._id = 495315430
        class['_type_'] = 'test.DateTimeRange'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            start_time = readInt(bs),
            end_time = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoE2 
     ---@field public y1 int
     ---@field public y2 bool
        local class = SimpleClass()
        class._id = -2138341716
        class['_type_'] = 'test.DemoE2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            y1 = readBool(bs) and readInt(bs) or nil,
            y2 = readBool(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoSingletonType 
     ---@field public id int
     ---@field public name string
     ---@field public date test.DemoDynamic
        local class = SimpleClass()
        class._id = 539196998
        class['_type_'] = 'test.DemoSingletonType'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs) and readString(bs),
            date = beans['test.DemoDynamic']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.NotIndexList 
     ---@field public x int
     ---@field public y int
        local class = SimpleClass()
        class._id = -50446599
        class['_type_'] = 'test.NotIndexList'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x = readInt(bs),
            y = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiUnionIndexList 
     ---@field public id1 int
     ---@field public id2 long
     ---@field public id3 string
     ---@field public num int
     ---@field public desc string
        local class = SimpleClass()
        class._id = 1966847134
        class['_type_'] = 'test.MultiUnionIndexList'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id1 = readInt(bs),
            id2 = readLong(bs),
            id3 = readString(bs),
            num = readInt(bs),
            desc = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiIndexList 
     ---@field public id1 int
     ---@field public id2 long
     ---@field public id3 string
     ---@field public num int
     ---@field public desc string
        local class = SimpleClass()
        class._id = 2016237651
        class['_type_'] = 'test.MultiIndexList'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id1 = readInt(bs),
            id2 = readLong(bs),
            id3 = readString(bs),
            num = readInt(bs),
            desc = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -501249394
        class['_type_'] = 'test.MultiRowRecord'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            one_rows = readList(bs, beans['test.MultiRowType1']._deserialize),
            multi_rows1 = readList(bs, beans['test.MultiRowType1']._deserialize),
            multi_rows2 = readArray(bs, beans['test.MultiRowType1']._deserialize),
            multi_rows4 = readMap(bs, readInt, beans['test.MultiRowType2']._deserialize),
            multi_rows5 = readList(bs, beans['test.MultiRowType3']._deserialize),
            multi_rows6 = readMap(bs, readInt, beans['test.MultiRowType2']._deserialize),
            multi_rows7 = readMap(bs, readInt, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiRowType1 
     ---@field public id int
     ---@field public x int
        local class = SimpleClass()
        class._id = 540474970
        class['_type_'] = 'test.MultiRowType1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiRowType2 
     ---@field public id int
     ---@field public x int
     ---@field public y float
        local class = SimpleClass()
        class._id = 540474971
        class['_type_'] = 'test.MultiRowType2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x = readInt(bs),
            y = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiRowType3 
     ---@field public id int
     ---@field public items test.MultiRowType1[]
        local class = SimpleClass()
        class._id = 540474972
        class['_type_'] = 'test.MultiRowType3'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            items = readList(bs, beans['test.MultiRowType1']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestMultiColumn 
     ---@field public id int
     ---@field public a test.Foo
     ---@field public b test.Foo
     ---@field public c test.Foo
        local class = SimpleClass()
        class._id = -294473599
        class['_type_'] = 'test.TestMultiColumn'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            a = beans['test.Foo']._deserialize(bs),
            b = beans['test.Foo']._deserialize(bs),
            c = beans['test.Foo']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Foo 
     ---@field public y1 int
     ---@field public y2 int
     ---@field public y3 int
        local class = SimpleClass()
        class._id = -1147950774
        class['_type_'] = 'test.Foo'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            y1 = readInt(bs),
            y2 = readInt(bs),
            y3 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.MultiRowTitle 
     ---@field public id int
     ---@field public name string
     ---@field public x1 test.H1
     ---@field public x2_0 test.H2
     ---@field public x2 test.H2[]
     ---@field public x3 test.H2[]
     ---@field public x4 test.H2[]
        local class = SimpleClass()
        class._id = 540002427
        class['_type_'] = 'test.MultiRowTitle'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            x1 = beans['test.H1']._deserialize(bs),
            x2_0 = readBool(bs) and beans['test.H2']._deserialize(bs) or nil,
            x2 = readList(bs, beans['test.H2']._deserialize),
            x3 = readArray(bs, beans['test.H2']._deserialize),
            x4 = readArray(bs, beans['test.H2']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.H1 
     ---@field public y2 test.H2
     ---@field public y3 int
        local class = SimpleClass()
        class._id = -1422503995
        class['_type_'] = 'test.H1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            y2 = beans['test.H2']._deserialize(bs),
            y3 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.H2 
     ---@field public z2 int
     ---@field public z3 int
        local class = SimpleClass()
        class._id = -1422503994
        class['_type_'] = 'test.H2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            z2 = readInt(bs),
            z3 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestNull 
     ---@field public id int
     ---@field public x1 int
     ---@field public x2 test.DemoEnum
     ---@field public x3 test.DemoType1
     ---@field public x4 test.DemoDynamic
     ---@field public s1 string
     ---@field public s2 string
        local class = SimpleClass()
        class._id = 339868469
        class['_type_'] = 'test.TestNull'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readBool(bs) and readInt(bs) or nil,
            x2 = readBool(bs) and readInt(bs) or nil,
            x3 = readBool(bs) and beans['test.DemoType1']._deserialize(bs) or nil,
            x4 = readBool(bs) and beans['test.DemoDynamic']._deserialize(bs) or nil,
            s1 = readBool(bs) and readString(bs) or nil,
            s2 = readBool(bs) and readString(bs) and readString(bs) or nil,
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -370934083
        class['_type_'] = 'test.DemoPrimitiveTypesTable'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readBool(bs),
            x2 = readByte(bs),
            x3 = readShort(bs),
            x4 = readInt(bs),
            x5 = readLong(bs),
            x6 = readFloat(bs),
            x7 = readDouble(bs),
            s1 = readString(bs),
            s2 = readString(bs) and readString(bs),
            v2 = readVector2(bs),
            v3 = readVector3(bs),
            v4 = readVector4(bs),
            t1 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestString 
     ---@field public id int
     ---@field public s1 string
     ---@field public cs1 test.CompactString
     ---@field public cs2 test.CompactString
        local class = SimpleClass()
        class._id = 338485823
        class['_type_'] = 'test.TestString'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            s1 = readString(bs),
            cs1 = beans['test.CompactString']._deserialize(bs),
            cs2 = beans['test.CompactString']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.CompactString 
     ---@field public id int
     ---@field public s2 string
     ---@field public s3 string
        local class = SimpleClass()
        class._id = 1968089240
        class['_type_'] = 'test.CompactString'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            s2 = readString(bs),
            s3 = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DemoGroup 
     ---@field public id int
     ---@field public x1 int
     ---@field public x2 int
     ---@field public x3 int
     ---@field public x4 int
     ---@field public x5 test.InnerGroup
        local class = SimpleClass()
        class._id = -379263008
        class['_type_'] = 'test.DemoGroup'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readInt(bs),
            x2 = readInt(bs),
            x3 = readInt(bs),
            x4 = readInt(bs),
            x5 = beans['test.InnerGroup']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.InnerGroup 
     ---@field public y1 int
     ---@field public y2 int
     ---@field public y3 int
     ---@field public y4 int
        local class = SimpleClass()
        class._id = -587873083
        class['_type_'] = 'test.InnerGroup'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            y1 = readInt(bs),
            y2 = readInt(bs),
            y3 = readInt(bs),
            y4 = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestGlobal 
     ---@field public unlock_equip int
     ---@field public unlock_hero int
        local class = SimpleClass()
        class._id = -12548655
        class['_type_'] = 'test.TestGlobal'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            unlock_equip = readInt(bs),
            unlock_hero = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestBeRef 
     ---@field public id int
     ---@field public count int
        local class = SimpleClass()
        class._id = 1934403938
        class['_type_'] = 'test.TestBeRef'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            count = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestRef 
     ---@field public id int
     ---@field public x1 int
     ---@field public x1_2 int
     ---@field public x2 int
     ---@field public x3 int
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
        local class = SimpleClass()
        class._id = -543222491
        class['_type_'] = 'test.TestRef'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readInt(bs),
            x1_2 = readInt(bs),
            x2 = readInt(bs),
            x3 = readInt(bs),
            a1 = readArray(bs, readInt),
            a2 = readArray(bs, readInt),
            b1 = readList(bs, readInt),
            b2 = readList(bs, readInt),
            c1 = readSet(bs, readInt),
            c2 = readSet(bs, readInt),
            d1 = readMap(bs, readInt, readInt),
            d2 = readMap(bs, readInt, readInt),
            e1 = readInt(bs),
            e2 = readLong(bs),
            e3 = readString(bs),
            f1 = readInt(bs),
            f2 = readLong(bs),
            f3 = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestSize 
     ---@field public id int
     ---@field public x1 int[]
     ---@field public x2 int[]
     ---@field public x3 int[]
     ---@field public x4 table<int,int>
        local class = SimpleClass()
        class._id = 340006319
        class['_type_'] = 'test.TestSize'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readArray(bs, readInt),
            x2 = readList(bs, readInt),
            x3 = readSet(bs, readInt),
            x4 = readMap(bs, readInt, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestSet 
     ---@field public id int
     ---@field public x0 string
     ---@field public x1 int[]
     ---@field public x2 long[]
     ---@field public x3 string[]
     ---@field public x4 test.DemoEnum[]
        local class = SimpleClass()
        class._id = -543221516
        class['_type_'] = 'test.TestSet'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x0 = readString(bs),
            x1 = readList(bs, readInt),
            x2 = readList(bs, readLong),
            x3 = readList(bs, readString),
            x4 = readList(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DetectEncoding 
     ---@field public id int
     ---@field public name string
        local class = SimpleClass()
        class._id = -1154609646
        class['_type_'] = 'test.DetectEncoding'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.ItemBase 
     ---@field public id int
     ---@field public name string
     ---@field public desc string
        local class = SimpleClass()
        class._id = -1631171968
        class['_type_'] = 'test.ItemBase'
        local id2name = {  [-1226641649] = 'test.Item',  [-76837102] = 'test.Equipment',  [-625155649] = 'test.Decorator',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Item :test.ItemBase 
     ---@field public num int
     ---@field public price int
        local class = SimpleClass()
        class._id = -1226641649
        class['_type_'] = 'test.Item'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            desc = readString(bs),
            num = readInt(bs),
            price = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Equipment :test.ItemBase 
     ---@field public attr test.DemoEnum
     ---@field public value int
        local class = SimpleClass()
        class._id = -76837102
        class['_type_'] = 'test.Equipment'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            desc = readString(bs),
            attr = readInt(bs),
            value = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Decorator :test.ItemBase 
     ---@field public duration int
        local class = SimpleClass()
        class._id = -625155649
        class['_type_'] = 'test.Decorator'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            desc = readString(bs),
            duration = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DefineFromExcel 
     ---@field public id int
     ---@field public x1 bool
     ---@field public x5 long
     ---@field public x6 float
     ---@field public x8 int
     ---@field public x10 string
     ---@field public x13 test.ETestQuality
     ---@field public x14 test.DemoDynamic
     ---@field public x15 test.Shape
     ---@field public v2 vector2
     ---@field public t1 int
     ---@field public k1 int[]
     ---@field public k2 int[]
     ---@field public k8 table<int,int>
     ---@field public k9 test.DemoE2[]
        local class = SimpleClass()
        class._id = 2100429878
        class['_type_'] = 'test.DefineFromExcel'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readBool(bs),
            x5 = readLong(bs),
            x6 = readFloat(bs),
            x8 = readInt(bs),
            x10 = readString(bs),
            x13 = readInt(bs),
            x14 = beans['test.DemoDynamic']._deserialize(bs),
            x15 = beans['test.Shape']._deserialize(bs),
            v2 = readVector2(bs),
            t1 = readInt(bs),
            k1 = readArray(bs, readInt),
            k2 = readArray(bs, readInt),
            k8 = readMap(bs, readInt, readInt),
            k9 = readList(bs, beans['test.DemoE2']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Shape 
        local class = SimpleClass()
        class._id = 637688613
        class['_type_'] = 'test.Shape'
        local id2name = {  [2131829196] = 'test.Circle',  [694982337] = 'test2.Rectangle',  }
        class._deserialize = function(bs)
            local id = readInt(bs)
            return beans[id2name[id]]._deserialize(bs)
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Circle :Shape 
     ---@field public radius float
        local class = SimpleClass()
        class._id = 2131829196
        class['_type_'] = 'test.Circle'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            radius = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test2.Rectangle :test.Shape 
     ---@field public width float
     ---@field public height float
        local class = SimpleClass()
        class._id = 694982337
        class['_type_'] = 'test2.Rectangle'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            width = readFloat(bs),
            height = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DefineFromExcelOne 
     ---@field public unlock_equip int
     ---@field public unlock_hero int
     ---@field public default_avatar string
     ---@field public default_item string
        local class = SimpleClass()
        class._id = 528039504
        class['_type_'] = 'test.DefineFromExcelOne'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            unlock_equip = readInt(bs),
            unlock_hero = readInt(bs),
            default_avatar = readString(bs),
            default_item = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestIndex 
     ---@field public id int
     ---@field public eles test.DemoType1[]
        local class = SimpleClass()
        class._id = 1941154020
        class['_type_'] = 'test.TestIndex'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            eles = readList(bs, beans['test.DemoType1']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestMap 
     ---@field public id int
     ---@field public x1 table<int,int>
     ---@field public x2 table<long,int>
     ---@field public x3 table<string,int>
     ---@field public x4 table<test.DemoEnum,int>
        local class = SimpleClass()
        class._id = -543227410
        class['_type_'] = 'test.TestMap'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readMap(bs, readInt, readInt),
            x2 = readMap(bs, readLong, readInt),
            x3 = readMap(bs, readString, readInt),
            x4 = readMap(bs, readInt, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
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
        local class = SimpleClass()
        class._id = -1485706483
        class['_type_'] = 'test.ExcelFromJson'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x4 = readInt(bs),
            x1 = readBool(bs),
            x5 = readLong(bs),
            x6 = readFloat(bs),
            s1 = readString(bs),
            s2 = readString(bs) and readString(bs),
            v2 = readVector2(bs),
            v3 = readVector3(bs),
            v4 = readVector4(bs),
            t1 = readInt(bs),
            x12 = beans['test.DemoType1']._deserialize(bs),
            x13 = readInt(bs),
            x14 = beans['test.DemoDynamic']._deserialize(bs),
            k1 = readArray(bs, readInt),
            k8 = readMap(bs, readInt, readInt),
            k9 = readList(bs, beans['test.DemoE2']._deserialize),
            k15 = readArray(bs, beans['test.DemoDynamic']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.CompositeJsonTable1 
     ---@field public id int
     ---@field public x string
        local class = SimpleClass()
        class._id = 1566207894
        class['_type_'] = 'test.CompositeJsonTable1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.CompositeJsonTable2 
     ---@field public id int
     ---@field public y int
        local class = SimpleClass()
        class._id = 1566207895
        class['_type_'] = 'test.CompositeJsonTable2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            y = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.CompositeJsonTable3 
     ---@field public a int
     ---@field public b int
        local class = SimpleClass()
        class._id = 1566207896
        class['_type_'] = 'test.CompositeJsonTable3'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            a = readInt(bs),
            b = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.ExcelFromJsonMultiRow 
     ---@field public id int
     ---@field public x int
     ---@field public items test.TestRow[]
        local class = SimpleClass()
        class._id = 715335694
        class['_type_'] = 'test.ExcelFromJsonMultiRow'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x = readInt(bs),
            items = readList(bs, beans['test.TestRow']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestRow 
     ---@field public x int
     ---@field public y bool
     ---@field public z string
     ---@field public a test.Test3
     ---@field public b int[]
        local class = SimpleClass()
        class._id = -543222164
        class['_type_'] = 'test.TestRow'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x = readInt(bs),
            y = readBool(bs),
            z = readString(bs),
            a = beans['test.Test3']._deserialize(bs),
            b = readList(bs, readInt),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Test3 
     ---@field public x int
     ---@field public y int
        local class = SimpleClass()
        class._id = 638540133
        class['_type_'] = 'test.Test3'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x = readInt(bs),
            y = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestSep 
     ---@field public id int
     ---@field public x1 string
     ---@field public x2 test.SepBean1
     ---@field public x3 test.SepVector
     ---@field public x4 test.SepVector[]
     ---@field public x5 test.SepBean1[]
     ---@field public x6 test.SepBean1[]
        local class = SimpleClass()
        class._id = -543221520
        class['_type_'] = 'test.TestSep'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readString(bs) and readString(bs),
            x2 = beans['test.SepBean1']._deserialize(bs),
            x3 = beans['test.SepVector']._deserialize(bs),
            x4 = readList(bs, beans['test.SepVector']._deserialize),
            x5 = readList(bs, beans['test.SepBean1']._deserialize),
            x6 = readList(bs, beans['test.SepBean1']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.SepBean1 
     ---@field public a int
     ---@field public b int
     ---@field public c string
        local class = SimpleClass()
        class._id = -1534339393
        class['_type_'] = 'test.SepBean1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            a = readInt(bs),
            b = readInt(bs),
            c = readString(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.SepVector 
     ---@field public x int
     ---@field public y int
     ---@field public z int
        local class = SimpleClass()
        class._id = 252769477
        class['_type_'] = 'test.SepVector'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x = readInt(bs),
            y = readInt(bs),
            z = readInt(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestScriptableObject 
     ---@field public id int
     ---@field public desc string
     ---@field public rate float
     ---@field public num int
     ---@field public v2 vector2
     ---@field public v3 vector3
     ---@field public v4 vector4
        local class = SimpleClass()
        class._id = -1896814350
        class['_type_'] = 'test.TestScriptableObject'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            desc = readString(bs),
            rate = readFloat(bs),
            num = readInt(bs),
            v2 = readVector2(bs),
            v3 = readVector3(bs),
            v4 = readVector4(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestExternalType 
     ---@field public id int
     ---@field public audio_type test.AudioType
     ---@field public color test.Color
        local class = SimpleClass()
        class._id = -990826157
        class['_type_'] = 'test.TestExternalType'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            audio_type = readInt(bs),
            color = beans['test.Color']._deserialize(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.Color 
     ---@field public r float
     ---@field public g float
     ---@field public b float
     ---@field public a float
        local class = SimpleClass()
        class._id = 623131367
        class['_type_'] = 'test.Color'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            r = readFloat(bs),
            g = readFloat(bs),
            b = readFloat(bs),
            a = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.DefineFromExcel2 
     ---@field public id int
     ---@field public x1 bool
     ---@field public x5 long
     ---@field public x6 float
     ---@field public x8 int
     ---@field public x10 string
     ---@field public x13 test.ETestQuality
     ---@field public x14 test.DemoDynamic
     ---@field public x15 test.Shape
     ---@field public v2 vector2
     ---@field public t1 int
     ---@field public k1 int[]
     ---@field public k2 int[]
     ---@field public k8 table<int,int>
     ---@field public k9 test.DemoE2[]
        local class = SimpleClass()
        class._id = 688816828
        class['_type_'] = 'test.DefineFromExcel2'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            x1 = readBool(bs),
            x5 = readLong(bs),
            x6 = readFloat(bs),
            x8 = readInt(bs),
            x10 = readString(bs),
            x13 = readInt(bs),
            x14 = beans['test.DemoDynamic']._deserialize(bs),
            x15 = beans['test.Shape']._deserialize(bs),
            v2 = readVector2(bs),
            t1 = readInt(bs),
            k1 = readArray(bs, readInt),
            k2 = readArray(bs, readInt),
            k8 = readMap(bs, readInt, readInt),
            k9 = readList(bs, beans['test.DemoE2']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestExcelBean1 
     ---@field public x1 int
     ---@field public x2 string
     ---@field public x3 int
     ---@field public x4 float
        local class = SimpleClass()
        class._id = -1738345160
        class['_type_'] = 'test.TestExcelBean1'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            x1 = readInt(bs),
            x2 = readString(bs),
            x3 = readInt(bs),
            x4 = readFloat(bs),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end
    do
    ---@class test.TestDesc 
     ---@field public id int
     ---@field public name string
     ---@field public a1 int
     ---@field public a2 int
     ---@field public x1 test.H1
     ---@field public x2 test.H2[]
     ---@field public x3 test.H2[]
        local class = SimpleClass()
        class._id = 339555391
        class['_type_'] = 'test.TestDesc'
        local id2name = {  }
        class._deserialize = function(bs)
            local o = {
            id = readInt(bs),
            name = readString(bs),
            a1 = readInt(bs),
            a2 = readInt(bs),
            x1 = beans['test.H1']._deserialize(bs),
            x2 = readList(bs, beans['test.H2']._deserialize),
            x3 = readArray(bs, beans['test.H2']._deserialize),
            }
            setmetatable(o, class)
            return o
        end
        beans[class['_type_']] = class
    end

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
    { name='TbTestDesc', file='test_tbtestdesc', mode='map', index='id', value_type='test.TestDesc' },
    }
    return { enums = enums, beans = beans, tables = tables }
    end

return { InitTypes = InitTypes }

