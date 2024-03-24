<?php

namespace cfg {
class ai_EKeyType {
    public const BOOL = 1;
    public const INT = 2;
    public const FLOAT = 3;
    public const STRING = 4;
    public const VECTOR = 5;
    public const ROTATOR = 6;
    public const NAME = 7;
    public const CLASS1 = 8;
    public const ENUM1 = 9;
    public const OBJECT = 10;
}

class ai_EFlowAbortMode {
    public const NONE = 0;
    public const LOWER_PRIORITY = 1;
    public const SELF = 2;
    public const BOTH = 3;
}

class ai_ENotifyObserverMode {
    public const ON_VALUE_CHANGE = 0;
    public const ON_RESULT_CHANGE = 1;
}

class ai_EOperator {
    public const IS_EQUAL_TO = 0;
    public const IS_NOT_EQUAL_TO = 1;
    public const IS_LESS_THAN = 2;
    public const IS_LESS_THAN_OR_EQUAL_TO = 3;
    public const IS_GREAT_THAN = 4;
    public const IS_GREAT_THAN_OR_EQUAL_TO = 5;
    public const CONTAINS = 6;
    public const NOT_CONTAINS = 7;
}

class ai_EFinishMode {
    public const IMMEDIATE = 0;
    public const DELAYED = 1;
}

class item_EMajorType {
    /**
     * 货币
     */
    public const CURRENCY = 1;
    /**
     * 服装
     */
    public const CLOTH = 2;
    /**
     * 任务
     */
    public const QUEST = 3;
    /**
     * 消耗品
     */
    public const CONSUMABLES = 4;
    /**
     * 宝箱
     */
    public const TREASURE_BOX = 5;
    /**
     * 成就和称谓
     */
    public const ACHIEVEMENT_AND_TITLE = 6;
    /**
     * 头像框
     */
    public const HEAD_FRAME = 7;
    /**
     * 语音
     */
    public const VOICE = 8;
    /**
     * 动作
     */
    public const ACTION = 9;
    /**
     * 扩容道具
     */
    public const EXPANSION = 10;
    /**
     * 制作材料
     */
    public const MATERIAL = 11;
}

class item_EMinorType {
    /**
     * 钻石
     */
    public const DIAMOND = 101;
    /**
     * 金币
     */
    public const GOLD = 102;
    /**
     * 银币
     */
    public const SILVER = 103;
    /**
     * 经验
     */
    public const EXP = 104;
    /**
     * 能量点
     */
    public const POWER_POINT = 105;
    /**
     * 发型
     */
    public const HAIR_STYLE = 210;
    /**
     * 外套
     */
    public const COAT = 220;
    /**
     * 上衣
     */
    public const UPPER_JACKET = 230;
    /**
     * 裤子
     */
    public const TROUSERS = 241;
    /**
     * 裙子
     */
    public const SKIRT = 242;
    /**
     * 袜子
     */
    public const SOCKS = 250;
    /**
     * 鞋子
     */
    public const SHOES = 260;
    /**
     * 发饰
     */
    public const HAIR_ACCESSORY = 271;
    /**
     * 帽子
     */
    public const HAT = 272;
    /**
     * 耳饰
     */
    public const EARRING = 273;
    /**
     * 颈饰
     */
    public const NECKLACE = 274;
    /**
     * 腕饰
     */
    public const BRACELET = 275;
    /**
     * 发箍
     */
    public const HAIR_CLASP = 276;
    /**
     * 手套
     */
    public const GLOVE = 277;
    /**
     * 手持物
     */
    public const HANDHELD_OBJECT = 278;
    /**
     * 特殊
     */
    public const SPECIAL = 279;
    /**
     * 底妆
     */
    public const BASE_COSMETIC = 281;
    /**
     * 眉妆
     */
    public const EYEBROW_COSMETIC = 282;
    /**
     * 睫毛
     */
    public const EYELASH = 283;
    /**
     * 美瞳
     */
    public const COSMETIC_CONTACT_LENSES = 284;
    /**
     * 唇妆
     */
    public const LIP_COSMETIC = 285;
    /**
     * 肤色
     */
    public const SKIN_COLOR = 286;
    /**
     * 连衣裙
     */
    public const ONE_PIECE_DRESS = 290;
    /**
     * 换装场景
     */
    public const SWITCH_CLOTHES_SCENE = 291;
    /**
     * 任务道具
     */
    public const QUEST = 301;
    /**
     * 投掷物
     */
    public const CAST = 401;
    /**
     * 刀剑
     */
    public const SWORD = 421;
    /**
     * 弓箭
     */
    public const BOW_ARROW = 422;
    /**
     * 法杖
     */
    public const WANDS = 423;
    /**
     * 特殊工具
     */
    public const SPECIAL_TOOL = 424;
    /**
     * 食物
     */
    public const FOOD = 403;
    /**
     * 宝箱
     */
    public const TREASURE_BOX = 501;
    /**
     * 钥匙
     */
    public const KEY = 502;
    /**
     * 多选一宝箱
     */
    public const MULTI_CHOOSE_TREASURE_BOX = 503;
    /**
     * 成就相关
     */
    public const ACHIEVEMENT = 601;
    /**
     * 称谓相关
     */
    public const TITLE = 602;
    /**
     * 头像框
     */
    public const AVATAR_FRAME = 701;
    /**
     * 语音
     */
    public const VOICE = 801;
    /**
     * 特殊待机动作
     */
    public const IDLE_POSE = 901;
    /**
     * 拍照动作
     */
    public const PHOTO_POSE = 902;
    /**
     * 背包
     */
    public const BAG = 1001;
    /**
     * 好友数量
     */
    public const FRIEND_CAPACITY = 1002;
    /**
     * 制作材料
     */
    public const CONSTRUCTION_MATERIAL = 1101;
    /**
     * 设计图纸
     */
    public const DESIGN_DRAWING = 1102;
}

/**
 * 道具品质
 */
class item_EItemQuality {
    /**
     * 白
     */
    public const WHITE = 0;
    /**
     * 绿
     */
    public const GREEN = 1;
    /**
     * 蓝
     */
    public const BLUE = 2;
    /**
     * 紫
     */
    public const PURPLE = 3;
    /**
     * 金
     */
    public const GOLDEN = 4;
}

class test_DemoEnum {
    public const NONE = 0;
    /**
     * aa
     */
    public const A = 1;
    /**
     * bb
     */
    public const B = 2;
    /**
     * cc
     */
    public const C = 4;
    /**
     * dd
     */
    public const D = 5;
    public const Any = 6;
}

class AudioType {
    public const UNKNOWN = 0;
    public const ACC = 1;
    public const AIFF = 2;
}

class test_DemoFlag {
    public const A = 1;
    public const B = 2;
    public const C = 4;
    public const D = 8;
}




 class vec2 {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
    }

    public $x;
    public $y;
}



 class vec3 {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
        if (!array_key_exists('z', $_json_)) { throw new \Exception("field:'z' missing"); }
        $this->z = $_json_['z'];
    }

    public $x;
    public $y;
    public $z;
}



 class vec4 {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
        if (!array_key_exists('z', $_json_)) { throw new \Exception("field:'z' missing"); }
        $this->z = $_json_['z'];
        if (!array_key_exists('w', $_json_)) { throw new \Exception("field:'w' missing"); }
        $this->w = $_json_['w'];
    }

    public $x;
    public $y;
    public $z;
    public $w;
}



/**
 * 这是个测试excel结构
 */
 class test_TestExcelBean1 {

    public function __construct($_json_) {
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
    }

    /**
     * 最高品质
     */
    public $x1;
    /**
     * 黑色的
     */
    public $x2;
    /**
     * 蓝色的
     */
    public $x3;
    /**
     * 最差品质
     */
    public $x4;
}



 class ai_Blackboard {

    public function __construct($_json_) {
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
        if (!array_key_exists('parent_name', $_json_)) { throw new \Exception("field:'parent_name' missing"); }
        $this->parentName = $_json_['parent_name'];
        if (!array_key_exists('keys', $_json_)) { throw new \Exception("field:'keys' missing"); }
        { $this->keys = []; foreach ($_json_['keys'] as $_ele0) { $_e0 = new ai_BlackboardKey($_ele0); array_push($this->keys, $_e0);} };
    }

    public $name;
    public $desc;
    public $parentName;
    public $keys;
}



 class ai_BlackboardKey {

    public function __construct($_json_) {
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
        if (!array_key_exists('is_static', $_json_)) { throw new \Exception("field:'is_static' missing"); }
        $this->isStatic = $_json_['is_static'];
        if (!array_key_exists('type', $_json_)) { throw new \Exception("field:'type' missing"); }
        $this->type = $_json_['type'];
        if (!array_key_exists('type_class_name', $_json_)) { throw new \Exception("field:'type_class_name' missing"); }
        $this->typeClassName = $_json_['type_class_name'];
    }

    public $name;
    public $desc;
    public $isStatic;
    public $type;
    public $typeClassName;
}



 class ai_BehaviorTree {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
        if (!array_key_exists('blackboard_id', $_json_)) { throw new \Exception("field:'blackboard_id' missing"); }
        $this->blackboardId = $_json_['blackboard_id'];
        if (!array_key_exists('root', $_json_)) { throw new \Exception("field:'root' missing"); }
        $this->root = ai_ComposeNode::constructFrom($_json_['root']);
    }

    public $id;
    public $name;
    public $desc;
    public $blackboardId;
    public $root;
}



abstract class ai_Node {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'UeSetDefaultFocus': return new ai_UeSetDefaultFocus($_json_);
            case 'ExecuteTimeStatistic': return new ai_ExecuteTimeStatistic($_json_);
            case 'ChooseTarget': return new ai_ChooseTarget($_json_);
            case 'KeepFaceTarget': return new ai_KeepFaceTarget($_json_);
            case 'GetOwnerPlayer': return new ai_GetOwnerPlayer($_json_);
            case 'UpdateDailyBehaviorProps': return new ai_UpdateDailyBehaviorProps($_json_);
            case 'UeLoop': return new ai_UeLoop($_json_);
            case 'UeCooldown': return new ai_UeCooldown($_json_);
            case 'UeTimeLimit': return new ai_UeTimeLimit($_json_);
            case 'UeBlackboard': return new ai_UeBlackboard($_json_);
            case 'UeForceSuccess': return new ai_UeForceSuccess($_json_);
            case 'IsAtLocation': return new ai_IsAtLocation($_json_);
            case 'DistanceLessThan': return new ai_DistanceLessThan($_json_);
            case 'Sequence': return new ai_Sequence($_json_);
            case 'Selector': return new ai_Selector($_json_);
            case 'SimpleParallel': return new ai_SimpleParallel($_json_);
            case 'UeWait': return new ai_UeWait($_json_);
            case 'UeWaitBlackboardTime': return new ai_UeWaitBlackboardTime($_json_);
            case 'MoveToTarget': return new ai_MoveToTarget($_json_);
            case 'ChooseSkill': return new ai_ChooseSkill($_json_);
            case 'MoveToRandomLocation': return new ai_MoveToRandomLocation($_json_);
            case 'MoveToLocation': return new ai_MoveToLocation($_json_);
            case 'DebugPrint': return new ai_DebugPrint($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('node_name', $_json_)) { throw new \Exception("field:'node_name' missing"); }
        $this->nodeName = $_json_['node_name'];
    }

    public $id;
    public $nodeName;
}



abstract class ai_Service extends ai_Node {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'UeSetDefaultFocus': return new ai_UeSetDefaultFocus($_json_);
            case 'ExecuteTimeStatistic': return new ai_ExecuteTimeStatistic($_json_);
            case 'ChooseTarget': return new ai_ChooseTarget($_json_);
            case 'KeepFaceTarget': return new ai_KeepFaceTarget($_json_);
            case 'GetOwnerPlayer': return new ai_GetOwnerPlayer($_json_);
            case 'UpdateDailyBehaviorProps': return new ai_UpdateDailyBehaviorProps($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_UeSetDefaultFocus extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('keyboard_key', $_json_)) { throw new \Exception("field:'keyboard_key' missing"); }
        $this->keyboardKey = $_json_['keyboard_key'];
    }

    public $keyboardKey;
}



 class ai_ExecuteTimeStatistic extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_ChooseTarget extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('result_target_key', $_json_)) { throw new \Exception("field:'result_target_key' missing"); }
        $this->resultTargetKey = $_json_['result_target_key'];
    }

    public $resultTargetKey;
}



 class ai_KeepFaceTarget extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('target_actor_key', $_json_)) { throw new \Exception("field:'target_actor_key' missing"); }
        $this->targetActorKey = $_json_['target_actor_key'];
    }

    public $targetActorKey;
}



 class ai_GetOwnerPlayer extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('player_actor_key', $_json_)) { throw new \Exception("field:'player_actor_key' missing"); }
        $this->playerActorKey = $_json_['player_actor_key'];
    }

    public $playerActorKey;
}



 class ai_UpdateDailyBehaviorProps extends ai_Service {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('satiety_key', $_json_)) { throw new \Exception("field:'satiety_key' missing"); }
        $this->satietyKey = $_json_['satiety_key'];
        if (!array_key_exists('energy_key', $_json_)) { throw new \Exception("field:'energy_key' missing"); }
        $this->energyKey = $_json_['energy_key'];
        if (!array_key_exists('mood_key', $_json_)) { throw new \Exception("field:'mood_key' missing"); }
        $this->moodKey = $_json_['mood_key'];
        if (!array_key_exists('satiety_lower_threshold_key', $_json_)) { throw new \Exception("field:'satiety_lower_threshold_key' missing"); }
        $this->satietyLowerThresholdKey = $_json_['satiety_lower_threshold_key'];
        if (!array_key_exists('satiety_upper_threshold_key', $_json_)) { throw new \Exception("field:'satiety_upper_threshold_key' missing"); }
        $this->satietyUpperThresholdKey = $_json_['satiety_upper_threshold_key'];
        if (!array_key_exists('energy_lower_threshold_key', $_json_)) { throw new \Exception("field:'energy_lower_threshold_key' missing"); }
        $this->energyLowerThresholdKey = $_json_['energy_lower_threshold_key'];
        if (!array_key_exists('energy_upper_threshold_key', $_json_)) { throw new \Exception("field:'energy_upper_threshold_key' missing"); }
        $this->energyUpperThresholdKey = $_json_['energy_upper_threshold_key'];
        if (!array_key_exists('mood_lower_threshold_key', $_json_)) { throw new \Exception("field:'mood_lower_threshold_key' missing"); }
        $this->moodLowerThresholdKey = $_json_['mood_lower_threshold_key'];
        if (!array_key_exists('mood_upper_threshold_key', $_json_)) { throw new \Exception("field:'mood_upper_threshold_key' missing"); }
        $this->moodUpperThresholdKey = $_json_['mood_upper_threshold_key'];
    }

    public $satietyKey;
    public $energyKey;
    public $moodKey;
    public $satietyLowerThresholdKey;
    public $satietyUpperThresholdKey;
    public $energyLowerThresholdKey;
    public $energyUpperThresholdKey;
    public $moodLowerThresholdKey;
    public $moodUpperThresholdKey;
}



abstract class ai_Decorator extends ai_Node {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'UeLoop': return new ai_UeLoop($_json_);
            case 'UeCooldown': return new ai_UeCooldown($_json_);
            case 'UeTimeLimit': return new ai_UeTimeLimit($_json_);
            case 'UeBlackboard': return new ai_UeBlackboard($_json_);
            case 'UeForceSuccess': return new ai_UeForceSuccess($_json_);
            case 'IsAtLocation': return new ai_IsAtLocation($_json_);
            case 'DistanceLessThan': return new ai_DistanceLessThan($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('flow_abort_mode', $_json_)) { throw new \Exception("field:'flow_abort_mode' missing"); }
        $this->flowAbortMode = $_json_['flow_abort_mode'];
    }

    public $flowAbortMode;
}



 class ai_UeLoop extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('num_loops', $_json_)) { throw new \Exception("field:'num_loops' missing"); }
        $this->numLoops = $_json_['num_loops'];
        if (!array_key_exists('infinite_loop', $_json_)) { throw new \Exception("field:'infinite_loop' missing"); }
        $this->infiniteLoop = $_json_['infinite_loop'];
        if (!array_key_exists('infinite_loop_timeout_time', $_json_)) { throw new \Exception("field:'infinite_loop_timeout_time' missing"); }
        $this->infiniteLoopTimeoutTime = $_json_['infinite_loop_timeout_time'];
    }

    public $numLoops;
    public $infiniteLoop;
    public $infiniteLoopTimeoutTime;
}



 class ai_UeCooldown extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('cooldown_time', $_json_)) { throw new \Exception("field:'cooldown_time' missing"); }
        $this->cooldownTime = $_json_['cooldown_time'];
    }

    public $cooldownTime;
}



 class ai_UeTimeLimit extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('limit_time', $_json_)) { throw new \Exception("field:'limit_time' missing"); }
        $this->limitTime = $_json_['limit_time'];
    }

    public $limitTime;
}



 class ai_UeBlackboard extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('notify_observer', $_json_)) { throw new \Exception("field:'notify_observer' missing"); }
        $this->notifyObserver = $_json_['notify_observer'];
        if (!array_key_exists('blackboard_key', $_json_)) { throw new \Exception("field:'blackboard_key' missing"); }
        $this->blackboardKey = $_json_['blackboard_key'];
        if (!array_key_exists('key_query', $_json_)) { throw new \Exception("field:'key_query' missing"); }
        $this->keyQuery = ai_KeyQueryOperator::constructFrom($_json_['key_query']);
    }

    public $notifyObserver;
    public $blackboardKey;
    public $keyQuery;
}



abstract class ai_KeyQueryOperator {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'IsSet2': return new ai_IsSet2($_json_);
            case 'IsNotSet': return new ai_IsNotSet($_json_);
            case 'BinaryOperator': return new ai_BinaryOperator($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
    }

}



 class ai_IsSet2 extends ai_KeyQueryOperator {

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_IsNotSet extends ai_KeyQueryOperator {

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_BinaryOperator extends ai_KeyQueryOperator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('oper', $_json_)) { throw new \Exception("field:'oper' missing"); }
        $this->oper = $_json_['oper'];
        if (!array_key_exists('data', $_json_)) { throw new \Exception("field:'data' missing"); }
        $this->data = ai_KeyData::constructFrom($_json_['data']);
    }

    public $oper;
    public $data;
}



abstract class ai_KeyData {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'FloatKeyData': return new ai_FloatKeyData($_json_);
            case 'IntKeyData': return new ai_IntKeyData($_json_);
            case 'StringKeyData': return new ai_StringKeyData($_json_);
            case 'BlackboardKeyData': return new ai_BlackboardKeyData($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
    }

}



 class ai_FloatKeyData extends ai_KeyData {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $value;
}



 class ai_IntKeyData extends ai_KeyData {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $value;
}



 class ai_StringKeyData extends ai_KeyData {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $value;
}



 class ai_BlackboardKeyData extends ai_KeyData {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $value;
}



 class ai_UeForceSuccess extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_IsAtLocation extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('acceptable_radius', $_json_)) { throw new \Exception("field:'acceptable_radius' missing"); }
        $this->acceptableRadius = $_json_['acceptable_radius'];
        if (!array_key_exists('keyboard_key', $_json_)) { throw new \Exception("field:'keyboard_key' missing"); }
        $this->keyboardKey = $_json_['keyboard_key'];
        if (!array_key_exists('inverse_condition', $_json_)) { throw new \Exception("field:'inverse_condition' missing"); }
        $this->inverseCondition = $_json_['inverse_condition'];
    }

    public $acceptableRadius;
    public $keyboardKey;
    public $inverseCondition;
}



 class ai_DistanceLessThan extends ai_Decorator {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('actor1_key', $_json_)) { throw new \Exception("field:'actor1_key' missing"); }
        $this->actor1Key = $_json_['actor1_key'];
        if (!array_key_exists('actor2_key', $_json_)) { throw new \Exception("field:'actor2_key' missing"); }
        $this->actor2Key = $_json_['actor2_key'];
        if (!array_key_exists('distance', $_json_)) { throw new \Exception("field:'distance' missing"); }
        $this->distance = $_json_['distance'];
        if (!array_key_exists('reverse_result', $_json_)) { throw new \Exception("field:'reverse_result' missing"); }
        $this->reverseResult = $_json_['reverse_result'];
    }

    public $actor1Key;
    public $actor2Key;
    public $distance;
    public $reverseResult;
}



abstract class ai_FlowNode extends ai_Node {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'Sequence': return new ai_Sequence($_json_);
            case 'Selector': return new ai_Selector($_json_);
            case 'SimpleParallel': return new ai_SimpleParallel($_json_);
            case 'UeWait': return new ai_UeWait($_json_);
            case 'UeWaitBlackboardTime': return new ai_UeWaitBlackboardTime($_json_);
            case 'MoveToTarget': return new ai_MoveToTarget($_json_);
            case 'ChooseSkill': return new ai_ChooseSkill($_json_);
            case 'MoveToRandomLocation': return new ai_MoveToRandomLocation($_json_);
            case 'MoveToLocation': return new ai_MoveToLocation($_json_);
            case 'DebugPrint': return new ai_DebugPrint($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('decorators', $_json_)) { throw new \Exception("field:'decorators' missing"); }
        { $this->decorators = []; foreach ($_json_['decorators'] as $_ele0) { $_e0 = ai_Decorator::constructFrom($_ele0); array_push($this->decorators, $_e0);} };
        if (!array_key_exists('services', $_json_)) { throw new \Exception("field:'services' missing"); }
        { $this->services = []; foreach ($_json_['services'] as $_ele0) { $_e0 = ai_Service::constructFrom($_ele0); array_push($this->services, $_e0);} };
    }

    public $decorators;
    public $services;
}



abstract class ai_ComposeNode extends ai_FlowNode {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'Sequence': return new ai_Sequence($_json_);
            case 'Selector': return new ai_Selector($_json_);
            case 'SimpleParallel': return new ai_SimpleParallel($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
    }

}



 class ai_Sequence extends ai_ComposeNode {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('children', $_json_)) { throw new \Exception("field:'children' missing"); }
        { $this->children = []; foreach ($_json_['children'] as $_ele0) { $_e0 = ai_FlowNode::constructFrom($_ele0); array_push($this->children, $_e0);} };
    }

    public $children;
}



 class ai_Selector extends ai_ComposeNode {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('children', $_json_)) { throw new \Exception("field:'children' missing"); }
        { $this->children = []; foreach ($_json_['children'] as $_ele0) { $_e0 = ai_FlowNode::constructFrom($_ele0); array_push($this->children, $_e0);} };
    }

    public $children;
}



 class ai_SimpleParallel extends ai_ComposeNode {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('finish_mode', $_json_)) { throw new \Exception("field:'finish_mode' missing"); }
        $this->finishMode = $_json_['finish_mode'];
        if (!array_key_exists('main_task', $_json_)) { throw new \Exception("field:'main_task' missing"); }
        $this->mainTask = ai_Task::constructFrom($_json_['main_task']);
        if (!array_key_exists('background_node', $_json_)) { throw new \Exception("field:'background_node' missing"); }
        $this->backgroundNode = ai_FlowNode::constructFrom($_json_['background_node']);
    }

    public $finishMode;
    public $mainTask;
    public $backgroundNode;
}



abstract class ai_Task extends ai_FlowNode {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'UeWait': return new ai_UeWait($_json_);
            case 'UeWaitBlackboardTime': return new ai_UeWaitBlackboardTime($_json_);
            case 'MoveToTarget': return new ai_MoveToTarget($_json_);
            case 'ChooseSkill': return new ai_ChooseSkill($_json_);
            case 'MoveToRandomLocation': return new ai_MoveToRandomLocation($_json_);
            case 'MoveToLocation': return new ai_MoveToLocation($_json_);
            case 'DebugPrint': return new ai_DebugPrint($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('ignore_restart_self', $_json_)) { throw new \Exception("field:'ignore_restart_self' missing"); }
        $this->ignoreRestartSelf = $_json_['ignore_restart_self'];
    }

    public $ignoreRestartSelf;
}



 class ai_UeWait extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('wait_time', $_json_)) { throw new \Exception("field:'wait_time' missing"); }
        $this->waitTime = $_json_['wait_time'];
        if (!array_key_exists('random_deviation', $_json_)) { throw new \Exception("field:'random_deviation' missing"); }
        $this->randomDeviation = $_json_['random_deviation'];
    }

    public $waitTime;
    public $randomDeviation;
}



 class ai_UeWaitBlackboardTime extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('blackboard_key', $_json_)) { throw new \Exception("field:'blackboard_key' missing"); }
        $this->blackboardKey = $_json_['blackboard_key'];
    }

    public $blackboardKey;
}



 class ai_MoveToTarget extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('target_actor_key', $_json_)) { throw new \Exception("field:'target_actor_key' missing"); }
        $this->targetActorKey = $_json_['target_actor_key'];
        if (!array_key_exists('acceptable_radius', $_json_)) { throw new \Exception("field:'acceptable_radius' missing"); }
        $this->acceptableRadius = $_json_['acceptable_radius'];
    }

    public $targetActorKey;
    public $acceptableRadius;
}



 class ai_ChooseSkill extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('target_actor_key', $_json_)) { throw new \Exception("field:'target_actor_key' missing"); }
        $this->targetActorKey = $_json_['target_actor_key'];
        if (!array_key_exists('result_skill_id_key', $_json_)) { throw new \Exception("field:'result_skill_id_key' missing"); }
        $this->resultSkillIdKey = $_json_['result_skill_id_key'];
    }

    public $targetActorKey;
    public $resultSkillIdKey;
}



 class ai_MoveToRandomLocation extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('origin_position_key', $_json_)) { throw new \Exception("field:'origin_position_key' missing"); }
        $this->originPositionKey = $_json_['origin_position_key'];
        if (!array_key_exists('radius', $_json_)) { throw new \Exception("field:'radius' missing"); }
        $this->radius = $_json_['radius'];
    }

    public $originPositionKey;
    public $radius;
}



 class ai_MoveToLocation extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('acceptable_radius', $_json_)) { throw new \Exception("field:'acceptable_radius' missing"); }
        $this->acceptableRadius = $_json_['acceptable_radius'];
    }

    public $acceptableRadius;
}



 class ai_DebugPrint extends ai_Task {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('text', $_json_)) { throw new \Exception("field:'text' missing"); }
        $this->text = $_json_['text'];
    }

    public $text;
}



 class common_GlobalConfig {

    public function __construct($_json_) {
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = $_json_['x5'];
        if (!array_key_exists('x6', $_json_)) { throw new \Exception("field:'x6' missing"); }
        $this->x6 = $_json_['x6'];
        if (!array_key_exists('x7', $_json_)) { throw new \Exception("field:'x7' missing"); }
        { $this->x7 = []; foreach ($_json_['x7'] as $_ele0) { $_e0 = $_ele0; array_push($this->x7, $_e0);} };
    }

    /**
     * 背包容量
     */
    public $x1;
    public $x2;
    public $x3;
    public $x4;
    public $x5;
    public $x6;
    public $x7;
}



/**
 * 道具
 */
 class item_Item {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('major_type', $_json_)) { throw new \Exception("field:'major_type' missing"); }
        $this->majorType = $_json_['major_type'];
        if (!array_key_exists('minor_type', $_json_)) { throw new \Exception("field:'minor_type' missing"); }
        $this->minorType = $_json_['minor_type'];
        if (!array_key_exists('max_pile_num', $_json_)) { throw new \Exception("field:'max_pile_num' missing"); }
        $this->maxPileNum = $_json_['max_pile_num'];
        if (!array_key_exists('quality', $_json_)) { throw new \Exception("field:'quality' missing"); }
        $this->quality = $_json_['quality'];
        if (!array_key_exists('icon', $_json_)) { throw new \Exception("field:'icon' missing"); }
        $this->icon = $_json_['icon'];
        if (!array_key_exists('icon_backgroud', $_json_)) { throw new \Exception("field:'icon_backgroud' missing"); }
        $this->iconBackgroud = $_json_['icon_backgroud'];
        if (!array_key_exists('icon_mask', $_json_)) { throw new \Exception("field:'icon_mask' missing"); }
        $this->iconMask = $_json_['icon_mask'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
        if (!array_key_exists('show_order', $_json_)) { throw new \Exception("field:'show_order' missing"); }
        $this->showOrder = $_json_['show_order'];
    }

    /**
     * 道具id
     */
    public $id;
    public $name;
    public $majorType;
    public $minorType;
    public $maxPileNum;
    public $quality;
    public $icon;
    public $iconBackgroud;
    public $iconMask;
    public $desc;
    public $showOrder;
}



 class l10n_L10NDemo {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('text', $_json_)) { throw new \Exception("field:'text' missing"); }
        $this->text = $_json_['text'];
    }

    public $id;
    public $text;
}



 class l10n_PatchDemo {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $id;
    public $value;
}



 class tag_TestTag {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $id;
    public $value;
}



 class test_DemoType2 {

    public function __construct($_json_) {
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = $_json_['x5'];
        if (!array_key_exists('x6', $_json_)) { throw new \Exception("field:'x6' missing"); }
        $this->x6 = $_json_['x6'];
        if (!array_key_exists('x7', $_json_)) { throw new \Exception("field:'x7' missing"); }
        $this->x7 = $_json_['x7'];
        if (!array_key_exists('x8_0', $_json_)) { throw new \Exception("field:'x8_0' missing"); }
        $this->x80 = $_json_['x8_0'];
        if (!array_key_exists('x8', $_json_)) { throw new \Exception("field:'x8' missing"); }
        $this->x8 = $_json_['x8'];
        if (!array_key_exists('x9', $_json_)) { throw new \Exception("field:'x9' missing"); }
        $this->x9 = $_json_['x9'];
        if (!array_key_exists('x10', $_json_)) { throw new \Exception("field:'x10' missing"); }
        $this->x10 = $_json_['x10'];
        if (!array_key_exists('x12', $_json_)) { throw new \Exception("field:'x12' missing"); }
        $this->x12 = new test_DemoType1($_json_['x12']);
        if (!array_key_exists('x13', $_json_)) { throw new \Exception("field:'x13' missing"); }
        $this->x13 = $_json_['x13'];
        if (!array_key_exists('x14', $_json_)) { throw new \Exception("field:'x14' missing"); }
        $this->x14 = test_DemoDynamic::constructFrom($_json_['x14']);
        if (!array_key_exists('s1', $_json_)) { throw new \Exception("field:'s1' missing"); }
        $this->s1 = $_json_['s1'];
        if (!array_key_exists('t1', $_json_)) { throw new \Exception("field:'t1' missing"); }
        $this->t1 = $_json_['t1'];
        if (!array_key_exists('k1', $_json_)) { throw new \Exception("field:'k1' missing"); }
        { $this->k1 = []; foreach ($_json_['k1'] as $_ele0) { $_e0 = $_ele0; array_push($this->k1, $_e0);} };
        if (!array_key_exists('k2', $_json_)) { throw new \Exception("field:'k2' missing"); }
        { $this->k2 = []; foreach ($_json_['k2'] as $_ele0) { $_e0 = $_ele0; array_push($this->k2, $_e0);} };
        if (!array_key_exists('k5', $_json_)) { throw new \Exception("field:'k5' missing"); }
        $this->k5 = $_json_['k5'];
        if (!array_key_exists('k8', $_json_)) { throw new \Exception("field:'k8' missing"); }
        $this->k8 = $_json_['k8'];
        if (!array_key_exists('k9', $_json_)) { throw new \Exception("field:'k9' missing"); }
        { $this->k9 = []; foreach ($_json_['k9'] as $_ele0) { $_e0 = new test_DemoE2($_ele0); array_push($this->k9, $_e0);} };
        if (!array_key_exists('k15', $_json_)) { throw new \Exception("field:'k15' missing"); }
        { $this->k15 = []; foreach ($_json_['k15'] as $_ele0) { $_e0 = test_DemoDynamic::constructFrom($_ele0); array_push($this->k15, $_e0);} };
    }

    public $x4;
    public $x1;
    public $x2;
    public $x3;
    public $x5;
    public $x6;
    public $x7;
    public $x80;
    public $x8;
    public $x9;
    public $x10;
    public $x12;
    public $x13;
    public $x14;
    public $s1;
    public $t1;
    public $k1;
    public $k2;
    public $k5;
    public $k8;
    public $k9;
    public $k15;
}



 class test_DemoType1 {

    public function __construct($_json_) {
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
    }

    public $x1;
}



abstract class test_DemoDynamic {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'DemoD2': return new test_DemoD2($_json_);
            case 'DemoE1': return new test_DemoE1($_json_);
            case 'test.login.RoleInfo': return new test_login_RoleInfo($_json_);
            case 'DemoD5': return new test_DemoD5($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
    }

    public $x1;
}



 class test_DemoD2 extends test_DemoDynamic {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
    }

    public $x2;
}



abstract class test_DemoD3 extends test_DemoDynamic {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'DemoE1': return new test_DemoE1($_json_);
            case 'test.login.RoleInfo': return new test_login_RoleInfo($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
    }

    public $x3;
}



 class test_DemoE1 extends test_DemoD3 {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
    }

    public $x4;
}



 class test_login_RoleInfo extends test_DemoD3 {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('role_id', $_json_)) { throw new \Exception("field:'role_id' missing"); }
        $this->roleId = $_json_['role_id'];
    }

    public $roleId;
}



 class test_DemoD5 extends test_DemoDynamic {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('time', $_json_)) { throw new \Exception("field:'time' missing"); }
        $this->time = new test_DateTimeRange($_json_['time']);
    }

    public $time;
}



 class test_DateTimeRange {

    public function __construct($_json_) {
        if (!array_key_exists('start_time', $_json_)) { throw new \Exception("field:'start_time' missing"); }
        $this->startTime = $_json_['start_time'];
        if (!array_key_exists('end_time', $_json_)) { throw new \Exception("field:'end_time' missing"); }
        $this->endTime = $_json_['end_time'];
    }

    public $startTime;
    public $endTime;
}



 class test_DemoE2 {

    public function __construct($_json_) {
        if($_json_['y1'] != null) { $this->y1 = $_json_['y1']; } else { $this->y1 = null; };
        if (!array_key_exists('y2', $_json_)) { throw new \Exception("field:'y2' missing"); }
        $this->y2 = $_json_['y2'];
    }

    public $y1;
    public $y2;
}



 class test_DemoSingletonType {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('date', $_json_)) { throw new \Exception("field:'date' missing"); }
        $this->date = test_DemoDynamic::constructFrom($_json_['date']);
    }

    public $id;
    public $name;
    public $date;
}



 class test_NotIndexList {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
    }

    public $x;
    public $y;
}



 class test_MultiUnionIndexList {

    public function __construct($_json_) {
        if (!array_key_exists('id1', $_json_)) { throw new \Exception("field:'id1' missing"); }
        $this->id1 = $_json_['id1'];
        if (!array_key_exists('id2', $_json_)) { throw new \Exception("field:'id2' missing"); }
        $this->id2 = $_json_['id2'];
        if (!array_key_exists('id3', $_json_)) { throw new \Exception("field:'id3' missing"); }
        $this->id3 = $_json_['id3'];
        if (!array_key_exists('num', $_json_)) { throw new \Exception("field:'num' missing"); }
        $this->num = $_json_['num'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
    }

    public $id1;
    public $id2;
    public $id3;
    public $num;
    public $desc;
}



 class test_MultiIndexList {

    public function __construct($_json_) {
        if (!array_key_exists('id1', $_json_)) { throw new \Exception("field:'id1' missing"); }
        $this->id1 = $_json_['id1'];
        if (!array_key_exists('id2', $_json_)) { throw new \Exception("field:'id2' missing"); }
        $this->id2 = $_json_['id2'];
        if (!array_key_exists('id3', $_json_)) { throw new \Exception("field:'id3' missing"); }
        $this->id3 = $_json_['id3'];
        if (!array_key_exists('num', $_json_)) { throw new \Exception("field:'num' missing"); }
        $this->num = $_json_['num'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
    }

    public $id1;
    public $id2;
    public $id3;
    public $num;
    public $desc;
}



 class test_MultiRowRecord {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('one_rows', $_json_)) { throw new \Exception("field:'one_rows' missing"); }
        { $this->oneRows = []; foreach ($_json_['one_rows'] as $_ele0) { $_e0 = new test_MultiRowType1($_ele0); array_push($this->oneRows, $_e0);} };
        if (!array_key_exists('multi_rows1', $_json_)) { throw new \Exception("field:'multi_rows1' missing"); }
        { $this->multiRows1 = []; foreach ($_json_['multi_rows1'] as $_ele0) { $_e0 = new test_MultiRowType1($_ele0); array_push($this->multiRows1, $_e0);} };
        if (!array_key_exists('multi_rows2', $_json_)) { throw new \Exception("field:'multi_rows2' missing"); }
        { $this->multiRows2 = []; foreach ($_json_['multi_rows2'] as $_ele0) { $_e0 = new test_MultiRowType1($_ele0); array_push($this->multiRows2, $_e0);} };
        if (!array_key_exists('multi_rows4', $_json_)) { throw new \Exception("field:'multi_rows4' missing"); }
        {$this->multiRows4 = []; foreach ($_json_['multi_rows4'] as $e0) { $_k0 = $e0[0]; $_v0 = new test_MultiRowType2($e0[1]); $this->multiRows4[$_k0] = $_v0; } };
        if (!array_key_exists('multi_rows5', $_json_)) { throw new \Exception("field:'multi_rows5' missing"); }
        { $this->multiRows5 = []; foreach ($_json_['multi_rows5'] as $_ele0) { $_e0 = new test_MultiRowType3($_ele0); array_push($this->multiRows5, $_e0);} };
        if (!array_key_exists('multi_rows6', $_json_)) { throw new \Exception("field:'multi_rows6' missing"); }
        {$this->multiRows6 = []; foreach ($_json_['multi_rows6'] as $e0) { $_k0 = $e0[0]; $_v0 = new test_MultiRowType2($e0[1]); $this->multiRows6[$_k0] = $_v0; } };
        if (!array_key_exists('multi_rows7', $_json_)) { throw new \Exception("field:'multi_rows7' missing"); }
        $this->multiRows7 = $_json_['multi_rows7'];
    }

    public $id;
    public $name;
    public $oneRows;
    public $multiRows1;
    public $multiRows2;
    public $multiRows4;
    public $multiRows5;
    public $multiRows6;
    public $multiRows7;
}



 class test_MultiRowType1 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
    }

    public $id;
    public $x;
}



 class test_MultiRowType2 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
    }

    public $id;
    public $x;
    public $y;
}



 class test_MultiRowType3 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('items', $_json_)) { throw new \Exception("field:'items' missing"); }
        { $this->items = []; foreach ($_json_['items'] as $_ele0) { $_e0 = new test_MultiRowType1($_ele0); array_push($this->items, $_e0);} };
    }

    public $id;
    public $items;
}



 class test_TestMultiColumn {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('a', $_json_)) { throw new \Exception("field:'a' missing"); }
        $this->a = new test_Foo($_json_['a']);
        if (!array_key_exists('b', $_json_)) { throw new \Exception("field:'b' missing"); }
        $this->b = new test_Foo($_json_['b']);
        if (!array_key_exists('c', $_json_)) { throw new \Exception("field:'c' missing"); }
        $this->c = new test_Foo($_json_['c']);
    }

    public $id;
    public $a;
    public $b;
    public $c;
}



 class test_Foo {

    public function __construct($_json_) {
        if (!array_key_exists('y1', $_json_)) { throw new \Exception("field:'y1' missing"); }
        $this->y1 = $_json_['y1'];
        if (!array_key_exists('y2', $_json_)) { throw new \Exception("field:'y2' missing"); }
        $this->y2 = $_json_['y2'];
        if (!array_key_exists('y3', $_json_)) { throw new \Exception("field:'y3' missing"); }
        $this->y3 = $_json_['y3'];
    }

    public $y1;
    public $y2;
    public $y3;
}



 class test_MultiRowTitle {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = new test_H1($_json_['x1']);
        if($_json_['x2_0'] != null) { $this->x20 = new test_H2($_json_['x2_0']); } else { $this->x20 = null; };
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        { $this->x2 = []; foreach ($_json_['x2'] as $_ele0) { $_e0 = new test_H2($_ele0); array_push($this->x2, $_e0);} };
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        { $this->x3 = []; foreach ($_json_['x3'] as $_ele0) { $_e0 = new test_H2($_ele0); array_push($this->x3, $_e0);} };
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        { $this->x4 = []; foreach ($_json_['x4'] as $_ele0) { $_e0 = new test_H2($_ele0); array_push($this->x4, $_e0);} };
    }

    public $id;
    public $name;
    public $x1;
    public $x20;
    public $x2;
    public $x3;
    public $x4;
}



 class test_H1 {

    public function __construct($_json_) {
        if (!array_key_exists('y2', $_json_)) { throw new \Exception("field:'y2' missing"); }
        $this->y2 = new test_H2($_json_['y2']);
        if (!array_key_exists('y3', $_json_)) { throw new \Exception("field:'y3' missing"); }
        $this->y3 = $_json_['y3'];
    }

    public $y2;
    public $y3;
}



 class test_H2 {

    public function __construct($_json_) {
        if (!array_key_exists('z2', $_json_)) { throw new \Exception("field:'z2' missing"); }
        $this->z2 = $_json_['z2'];
        if (!array_key_exists('z3', $_json_)) { throw new \Exception("field:'z3' missing"); }
        $this->z3 = $_json_['z3'];
    }

    public $z2;
    public $z3;
}



 class test_TestNull {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if($_json_['x1'] != null) { $this->x1 = $_json_['x1']; } else { $this->x1 = null; };
        if($_json_['x2'] != null) { $this->x2 = $_json_['x2']; } else { $this->x2 = null; };
        if($_json_['x3'] != null) { $this->x3 = new test_DemoType1($_json_['x3']); } else { $this->x3 = null; };
        if($_json_['x4'] != null) { $this->x4 = test_DemoDynamic::constructFrom($_json_['x4']); } else { $this->x4 = null; };
        if($_json_['s1'] != null) { $this->s1 = $_json_['s1']; } else { $this->s1 = null; };
        if($_json_['s2'] != null) { $this->s2 = $_json_['s2']; } else { $this->s2 = null; };
    }

    public $id;
    public $x1;
    public $x2;
    public $x3;
    public $x4;
    public $s1;
    public $s2;
}



 class test_DemoPrimitiveTypesTable {

    public function __construct($_json_) {
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = $_json_['x5'];
        if (!array_key_exists('x6', $_json_)) { throw new \Exception("field:'x6' missing"); }
        $this->x6 = $_json_['x6'];
        if (!array_key_exists('x7', $_json_)) { throw new \Exception("field:'x7' missing"); }
        $this->x7 = $_json_['x7'];
        if (!array_key_exists('s1', $_json_)) { throw new \Exception("field:'s1' missing"); }
        $this->s1 = $_json_['s1'];
        if (!array_key_exists('s2', $_json_)) { throw new \Exception("field:'s2' missing"); }
        $this->s2 = $_json_['s2'];
        if (!array_key_exists('v2', $_json_)) { throw new \Exception("field:'v2' missing"); }
        $this->v2 = new vec2($_json_['v2']);
        if (!array_key_exists('v3', $_json_)) { throw new \Exception("field:'v3' missing"); }
        $this->v3 = new vec3($_json_['v3']);
        if (!array_key_exists('v4', $_json_)) { throw new \Exception("field:'v4' missing"); }
        $this->v4 = new vec4($_json_['v4']);
        if (!array_key_exists('t1', $_json_)) { throw new \Exception("field:'t1' missing"); }
        $this->t1 = $_json_['t1'];
    }

    public $x1;
    public $x2;
    public $x3;
    public $x4;
    public $x5;
    public $x6;
    public $x7;
    public $s1;
    public $s2;
    public $v2;
    public $v3;
    public $v4;
    public $t1;
}



 class test_TestString {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('s1', $_json_)) { throw new \Exception("field:'s1' missing"); }
        $this->s1 = $_json_['s1'];
        if (!array_key_exists('s2', $_json_)) { throw new \Exception("field:'s2' missing"); }
        $this->s2 = $_json_['s2'];
        if (!array_key_exists('cs1', $_json_)) { throw new \Exception("field:'cs1' missing"); }
        $this->cs1 = new test_CompactString($_json_['cs1']);
        if (!array_key_exists('cs2', $_json_)) { throw new \Exception("field:'cs2' missing"); }
        $this->cs2 = new test_CompactString($_json_['cs2']);
    }

    public $id;
    public $s1;
    public $s2;
    public $cs1;
    public $cs2;
}



 class test_CompactString {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('s2', $_json_)) { throw new \Exception("field:'s2' missing"); }
        $this->s2 = $_json_['s2'];
        if (!array_key_exists('s3', $_json_)) { throw new \Exception("field:'s3' missing"); }
        $this->s3 = $_json_['s3'];
    }

    public $id;
    public $s2;
    public $s3;
}



 class test_DemoGroup {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = new test_InnerGroup($_json_['x5']);
    }

    public $id;
    public $x1;
    public $x2;
    public $x3;
    public $x4;
    public $x5;
}



 class test_InnerGroup {

    public function __construct($_json_) {
        if (!array_key_exists('y1', $_json_)) { throw new \Exception("field:'y1' missing"); }
        $this->y1 = $_json_['y1'];
        if (!array_key_exists('y2', $_json_)) { throw new \Exception("field:'y2' missing"); }
        $this->y2 = $_json_['y2'];
        if (!array_key_exists('y3', $_json_)) { throw new \Exception("field:'y3' missing"); }
        $this->y3 = $_json_['y3'];
        if (!array_key_exists('y4', $_json_)) { throw new \Exception("field:'y4' missing"); }
        $this->y4 = $_json_['y4'];
    }

    public $y1;
    public $y2;
    public $y3;
    public $y4;
}



 class test_TestGlobal {

    public function __construct($_json_) {
        if (!array_key_exists('unlock_equip', $_json_)) { throw new \Exception("field:'unlock_equip' missing"); }
        $this->unlockEquip = $_json_['unlock_equip'];
        if (!array_key_exists('unlock_hero', $_json_)) { throw new \Exception("field:'unlock_hero' missing"); }
        $this->unlockHero = $_json_['unlock_hero'];
    }

    public $unlockEquip;
    public $unlockHero;
}



 class test_TestBeRef {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('count', $_json_)) { throw new \Exception("field:'count' missing"); }
        $this->count = $_json_['count'];
    }

    public $id;
    public $count;
}



 class test_TestRef {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x1_2', $_json_)) { throw new \Exception("field:'x1_2' missing"); }
        $this->x12 = $_json_['x1_2'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('a1', $_json_)) { throw new \Exception("field:'a1' missing"); }
        { $this->a1 = []; foreach ($_json_['a1'] as $_ele0) { $_e0 = $_ele0; array_push($this->a1, $_e0);} };
        if (!array_key_exists('a2', $_json_)) { throw new \Exception("field:'a2' missing"); }
        { $this->a2 = []; foreach ($_json_['a2'] as $_ele0) { $_e0 = $_ele0; array_push($this->a2, $_e0);} };
        if (!array_key_exists('b1', $_json_)) { throw new \Exception("field:'b1' missing"); }
        { $this->b1 = []; foreach ($_json_['b1'] as $_ele0) { $_e0 = $_ele0; array_push($this->b1, $_e0);} };
        if (!array_key_exists('b2', $_json_)) { throw new \Exception("field:'b2' missing"); }
        { $this->b2 = []; foreach ($_json_['b2'] as $_ele0) { $_e0 = $_ele0; array_push($this->b2, $_e0);} };
        if (!array_key_exists('c1', $_json_)) { throw new \Exception("field:'c1' missing"); }
        $this->c1 = $_json_['c1'];
        if (!array_key_exists('c2', $_json_)) { throw new \Exception("field:'c2' missing"); }
        $this->c2 = $_json_['c2'];
        if (!array_key_exists('d1', $_json_)) { throw new \Exception("field:'d1' missing"); }
        $this->d1 = $_json_['d1'];
        if (!array_key_exists('d2', $_json_)) { throw new \Exception("field:'d2' missing"); }
        $this->d2 = $_json_['d2'];
        if (!array_key_exists('e1', $_json_)) { throw new \Exception("field:'e1' missing"); }
        $this->e1 = $_json_['e1'];
        if (!array_key_exists('e2', $_json_)) { throw new \Exception("field:'e2' missing"); }
        $this->e2 = $_json_['e2'];
        if (!array_key_exists('e3', $_json_)) { throw new \Exception("field:'e3' missing"); }
        $this->e3 = $_json_['e3'];
        if (!array_key_exists('f1', $_json_)) { throw new \Exception("field:'f1' missing"); }
        $this->f1 = $_json_['f1'];
        if (!array_key_exists('f2', $_json_)) { throw new \Exception("field:'f2' missing"); }
        $this->f2 = $_json_['f2'];
        if (!array_key_exists('f3', $_json_)) { throw new \Exception("field:'f3' missing"); }
        $this->f3 = $_json_['f3'];
        if (!array_key_exists('s1', $_json_)) { throw new \Exception("field:'s1' missing"); }
        $this->s1 = test_RefDynamicBase::constructFrom($_json_['s1']);
    }

    public $id;
    public $x1;
    public $x12;
    public $x2;
    public $x3;
    public $x4;
    public $a1;
    public $a2;
    public $b1;
    public $b2;
    public $c1;
    public $c2;
    public $d1;
    public $d2;
    public $e1;
    public $e2;
    public $e3;
    public $f1;
    public $f2;
    public $f3;
    public $s1;
}



abstract class test_RefDynamicBase {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'RefBean': return new test_RefBean($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
    }

    public $x;
}



 class test_RefBean extends test_RefDynamicBase {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('arr', $_json_)) { throw new \Exception("field:'arr' missing"); }
        { $this->arr = []; foreach ($_json_['arr'] as $_ele0) { $_e0 = $_ele0; array_push($this->arr, $_e0);} };
    }

    public $arr;
}



 class test_TestSize {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        { $this->x1 = []; foreach ($_json_['x1'] as $_ele0) { $_e0 = $_ele0; array_push($this->x1, $_e0);} };
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        { $this->x2 = []; foreach ($_json_['x2'] as $_ele0) { $_e0 = $_ele0; array_push($this->x2, $_e0);} };
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
    }

    public $id;
    public $x1;
    public $x2;
    public $x3;
    public $x4;
}



 class test_TestSet {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x0', $_json_)) { throw new \Exception("field:'x0' missing"); }
        $this->x0 = $_json_['x0'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        { $this->x1 = []; foreach ($_json_['x1'] as $_ele0) { $_e0 = $_ele0; array_push($this->x1, $_e0);} };
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        { $this->x2 = []; foreach ($_json_['x2'] as $_ele0) { $_e0 = $_ele0; array_push($this->x2, $_e0);} };
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        { $this->x3 = []; foreach ($_json_['x3'] as $_ele0) { $_e0 = $_ele0; array_push($this->x3, $_e0);} };
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        { $this->x4 = []; foreach ($_json_['x4'] as $_ele0) { $_e0 = $_ele0; array_push($this->x4, $_e0);} };
    }

    public $id;
    public $x0;
    public $x1;
    public $x2;
    public $x3;
    public $x4;
}



 class test_DetectEncoding {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
    }

    public $id;
    public $name;
}



abstract class test_ItemBase {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'Item': return new test_Item($_json_);
            case 'Equipment': return new test_Equipment($_json_);
            case 'Decorator': return new test_Decorator($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('name', $_json_)) { throw new \Exception("field:'name' missing"); }
        $this->name = $_json_['name'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
    }

    public $id;
    public $name;
    public $desc;
}



 class test_Item extends test_ItemBase {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('num', $_json_)) { throw new \Exception("field:'num' missing"); }
        $this->num = $_json_['num'];
        if (!array_key_exists('price', $_json_)) { throw new \Exception("field:'price' missing"); }
        $this->price = $_json_['price'];
    }

    public $num;
    public $price;
}



 class test_Equipment extends test_ItemBase {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('attr', $_json_)) { throw new \Exception("field:'attr' missing"); }
        $this->attr = $_json_['attr'];
        if (!array_key_exists('value', $_json_)) { throw new \Exception("field:'value' missing"); }
        $this->value = $_json_['value'];
    }

    public $attr;
    public $value;
}



 class test_Decorator extends test_ItemBase {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('duration', $_json_)) { throw new \Exception("field:'duration' missing"); }
        $this->duration = $_json_['duration'];
    }

    public $duration;
}



 class test_TestIndex {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('eles', $_json_)) { throw new \Exception("field:'eles' missing"); }
        { $this->eles = []; foreach ($_json_['eles'] as $_ele0) { $_e0 = new test_DemoType1($_ele0); array_push($this->eles, $_e0);} };
    }

    public $id;
    public $eles;
}



 class test_TestMap {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x2', $_json_)) { throw new \Exception("field:'x2' missing"); }
        $this->x2 = $_json_['x2'];
        if (!array_key_exists('x3', $_json_)) { throw new \Exception("field:'x3' missing"); }
        $this->x3 = $_json_['x3'];
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        {$this->x4 = []; foreach ($_json_['x4'] as $e0) { $_k0 = $e0[0]; $_v0 = $e0[1]; $this->x4[$_k0] = $_v0; } };
    }

    public $id;
    public $x1;
    public $x2;
    public $x3;
    public $x4;
}



 class test_ExcelFromJson {

    public function __construct($_json_) {
        if (!array_key_exists('x4', $_json_)) { throw new \Exception("field:'x4' missing"); }
        $this->x4 = $_json_['x4'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = $_json_['x5'];
        if (!array_key_exists('x6', $_json_)) { throw new \Exception("field:'x6' missing"); }
        $this->x6 = $_json_['x6'];
        if (!array_key_exists('s1', $_json_)) { throw new \Exception("field:'s1' missing"); }
        $this->s1 = $_json_['s1'];
        if (!array_key_exists('s2', $_json_)) { throw new \Exception("field:'s2' missing"); }
        $this->s2 = $_json_['s2'];
        if (!array_key_exists('t1', $_json_)) { throw new \Exception("field:'t1' missing"); }
        $this->t1 = $_json_['t1'];
        if (!array_key_exists('x12', $_json_)) { throw new \Exception("field:'x12' missing"); }
        $this->x12 = new test_DemoType1($_json_['x12']);
        if (!array_key_exists('x13', $_json_)) { throw new \Exception("field:'x13' missing"); }
        $this->x13 = $_json_['x13'];
        if (!array_key_exists('x14', $_json_)) { throw new \Exception("field:'x14' missing"); }
        $this->x14 = test_DemoDynamic::constructFrom($_json_['x14']);
        if (!array_key_exists('k1', $_json_)) { throw new \Exception("field:'k1' missing"); }
        { $this->k1 = []; foreach ($_json_['k1'] as $_ele0) { $_e0 = $_ele0; array_push($this->k1, $_e0);} };
        if (!array_key_exists('k8', $_json_)) { throw new \Exception("field:'k8' missing"); }
        $this->k8 = $_json_['k8'];
        if (!array_key_exists('k9', $_json_)) { throw new \Exception("field:'k9' missing"); }
        { $this->k9 = []; foreach ($_json_['k9'] as $_ele0) { $_e0 = new test_DemoE2($_ele0); array_push($this->k9, $_e0);} };
        if (!array_key_exists('k15', $_json_)) { throw new \Exception("field:'k15' missing"); }
        { $this->k15 = []; foreach ($_json_['k15'] as $_ele0) { $_e0 = test_DemoDynamic::constructFrom($_ele0); array_push($this->k15, $_e0);} };
    }

    public $x4;
    public $x1;
    public $x5;
    public $x6;
    public $s1;
    public $s2;
    public $t1;
    public $x12;
    public $x13;
    public $x14;
    public $k1;
    public $k8;
    public $k9;
    public $k15;
}



 class test_CompositeJsonTable1 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
    }

    public $id;
    public $x;
}



 class test_CompositeJsonTable2 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
    }

    public $id;
    public $y;
}



 class test_CompositeJsonTable3 {

    public function __construct($_json_) {
        if (!array_key_exists('a', $_json_)) { throw new \Exception("field:'a' missing"); }
        $this->a = $_json_['a'];
        if (!array_key_exists('b', $_json_)) { throw new \Exception("field:'b' missing"); }
        $this->b = $_json_['b'];
    }

    public $a;
    public $b;
}



 class test_ExcelFromJsonMultiRow {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('items', $_json_)) { throw new \Exception("field:'items' missing"); }
        { $this->items = []; foreach ($_json_['items'] as $_ele0) { $_e0 = new test_TestRow($_ele0); array_push($this->items, $_e0);} };
    }

    public $id;
    public $x;
    public $items;
}



 class test_TestRow {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
        if (!array_key_exists('z', $_json_)) { throw new \Exception("field:'z' missing"); }
        $this->z = $_json_['z'];
        if (!array_key_exists('a', $_json_)) { throw new \Exception("field:'a' missing"); }
        $this->a = new test_Test3($_json_['a']);
        if (!array_key_exists('b', $_json_)) { throw new \Exception("field:'b' missing"); }
        { $this->b = []; foreach ($_json_['b'] as $_ele0) { $_e0 = $_ele0; array_push($this->b, $_e0);} };
    }

    public $x;
    public $y;
    public $z;
    public $a;
    public $b;
}



 class test_Test3 {

    public function __construct($_json_) {
        if (!array_key_exists('x', $_json_)) { throw new \Exception("field:'x' missing"); }
        $this->x = $_json_['x'];
        if (!array_key_exists('y', $_json_)) { throw new \Exception("field:'y' missing"); }
        $this->y = $_json_['y'];
    }

    public $x;
    public $y;
}



 class test_TestScriptableObject {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('desc', $_json_)) { throw new \Exception("field:'desc' missing"); }
        $this->desc = $_json_['desc'];
        if (!array_key_exists('rate', $_json_)) { throw new \Exception("field:'rate' missing"); }
        $this->rate = $_json_['rate'];
        if (!array_key_exists('num', $_json_)) { throw new \Exception("field:'num' missing"); }
        $this->num = $_json_['num'];
        if (!array_key_exists('v2', $_json_)) { throw new \Exception("field:'v2' missing"); }
        $this->v2 = new vec2($_json_['v2']);
        if (!array_key_exists('v3', $_json_)) { throw new \Exception("field:'v3' missing"); }
        $this->v3 = new vec3($_json_['v3']);
        if (!array_key_exists('v4', $_json_)) { throw new \Exception("field:'v4' missing"); }
        $this->v4 = new vec4($_json_['v4']);
    }

    public $id;
    public $desc;
    public $rate;
    public $num;
    public $v2;
    public $v3;
    public $v4;
}



 class test_Path {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('res', $_json_)) { throw new \Exception("field:'res' missing"); }
        $this->res = $_json_['res'];
    }

    public $id;
    public $res;
}



 class test_TestMapper {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('audio_type', $_json_)) { throw new \Exception("field:'audio_type' missing"); }
        $this->audioType = $_json_['audio_type'];
        if (!array_key_exists('v2', $_json_)) { throw new \Exception("field:'v2' missing"); }
        $this->v2 = new vec2($_json_['v2']);
    }

    public $id;
    public $audioType;
    public $v2;
}



 class DefineFromExcel2 {

    public function __construct($_json_) {
        if (!array_key_exists('id', $_json_)) { throw new \Exception("field:'id' missing"); }
        $this->id = $_json_['id'];
        if (!array_key_exists('x1', $_json_)) { throw new \Exception("field:'x1' missing"); }
        $this->x1 = $_json_['x1'];
        if (!array_key_exists('x5', $_json_)) { throw new \Exception("field:'x5' missing"); }
        $this->x5 = $_json_['x5'];
        if (!array_key_exists('x6', $_json_)) { throw new \Exception("field:'x6' missing"); }
        $this->x6 = $_json_['x6'];
        if (!array_key_exists('x8', $_json_)) { throw new \Exception("field:'x8' missing"); }
        $this->x8 = $_json_['x8'];
        if (!array_key_exists('x10', $_json_)) { throw new \Exception("field:'x10' missing"); }
        $this->x10 = $_json_['x10'];
        if (!array_key_exists('x13', $_json_)) { throw new \Exception("field:'x13' missing"); }
        $this->x13 = $_json_['x13'];
        if (!array_key_exists('x13_2', $_json_)) { throw new \Exception("field:'x13_2' missing"); }
        $this->x132 = $_json_['x13_2'];
        if (!array_key_exists('x14', $_json_)) { throw new \Exception("field:'x14' missing"); }
        $this->x14 = test_DemoDynamic::constructFrom($_json_['x14']);
        if (!array_key_exists('x15', $_json_)) { throw new \Exception("field:'x15' missing"); }
        $this->x15 = test_Shape::constructFrom($_json_['x15']);
        if (!array_key_exists('v2', $_json_)) { throw new \Exception("field:'v2' missing"); }
        $this->v2 = new vec2($_json_['v2']);
        if (!array_key_exists('t1', $_json_)) { throw new \Exception("field:'t1' missing"); }
        $this->t1 = $_json_['t1'];
        if (!array_key_exists('k1', $_json_)) { throw new \Exception("field:'k1' missing"); }
        { $this->k1 = []; foreach ($_json_['k1'] as $_ele0) { $_e0 = $_ele0; array_push($this->k1, $_e0);} };
        if (!array_key_exists('k2', $_json_)) { throw new \Exception("field:'k2' missing"); }
        { $this->k2 = []; foreach ($_json_['k2'] as $_ele0) { $_e0 = $_ele0; array_push($this->k2, $_e0);} };
        if (!array_key_exists('k8', $_json_)) { throw new \Exception("field:'k8' missing"); }
        $this->k8 = $_json_['k8'];
        if (!array_key_exists('k9', $_json_)) { throw new \Exception("field:'k9' missing"); }
        { $this->k9 = []; foreach ($_json_['k9'] as $_ele0) { $_e0 = new test_DemoE2($_ele0); array_push($this->k9, $_e0);} };
        if (!array_key_exists('k10', $_json_)) { throw new \Exception("field:'k10' missing"); }
        { $this->k10 = []; foreach ($_json_['k10'] as $_ele0) { $_e0 = new vec3($_ele0); array_push($this->k10, $_e0);} };
        if (!array_key_exists('k11', $_json_)) { throw new \Exception("field:'k11' missing"); }
        { $this->k11 = []; foreach ($_json_['k11'] as $_ele0) { $_e0 = new vec4($_ele0); array_push($this->k11, $_e0);} };
    }

    /**
     * 这是id
     */
    public $id;
    /**
     * 字段x1
     */
    public $x1;
    public $x5;
    public $x6;
    public $x8;
    public $x10;
    public $x13;
    public $x132;
    public $x14;
    public $x15;
    public $v2;
    public $t1;
    public $k1;
    public $k2;
    public $k8;
    public $k9;
    public $k10;
    public $k11;
}



abstract class test_Shape {
    public static function constructFrom($_json_) {
        $type = $_json_['$type'];
        switch ($type) {
            case 'Circle': return new test_Circle($_json_);
            case 'test2.Rectangle': return new test2_Rectangle($_json_);
            default: throw new \Exception("unknown type:$type");
        }
    }

    public function __construct($_json_) {
    }

}



/**
 * 圆
 */
 class test_Circle extends test_Shape {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('radius', $_json_)) { throw new \Exception("field:'radius' missing"); }
        $this->radius = $_json_['radius'];
    }

    /**
     * 半径
     */
    public $radius;
}



/**
 * 矩形
 */
 class test2_Rectangle extends test_Shape {

    public function __construct($_json_) {
        parent::__construct($_json_);
        if (!array_key_exists('width', $_json_)) { throw new \Exception("field:'width' missing"); }
        $this->width = $_json_['width'];
        if (!array_key_exists('height', $_json_)) { throw new \Exception("field:'height' missing"); }
        $this->height = $_json_['height'];
    }

    /**
     * 宽度
     */
    public $width;
    /**
     * 高度
     */
    public $height;
}




class ai_TbBlackboard {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new ai_Blackboard($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->name] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class ai_TbBehaviorTree {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new ai_BehaviorTree($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class common_TbGlobalConfig {

    private $_data;
    public function __construct($_json_) {
        if (count($_json_) != 1) throw new \Exception('table:TbGlobalConfig mode=one, but size != 1');
        $this->_data = new common_GlobalConfig($_json_[0]);
    }

    public function getData() { return $this->_data; }

    /**
     * 背包容量
     */
    public function getx1() { return $this->_data->x1; }
    public function getx2() { return $this->_data->x2; }
    public function getx3() { return $this->_data->x3; }
    public function getx4() { return $this->_data->x4; }
    public function getx5() { return $this->_data->x5; }
    public function getx6() { return $this->_data->x6; }
    public function getx7() { return $this->_data->x7; }

    
}


/**
 * 道具表
 */
class item_TbItem {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new item_Item($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class l10n_TbL10NDemo {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new l10n_L10NDemo($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class l10n_TbPatchDemo {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new l10n_PatchDemo($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class tag_TbTestTag {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new tag_TestTag($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbFullTypes {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoType2($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->x4] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbSingleton {

    private $_data;
    public function __construct($_json_) {
        if (count($_json_) != 1) throw new \Exception('table:TbSingleton mode=one, but size != 1');
        $this->_data = new test_DemoSingletonType($_json_[0]);
    }

    public function getData() { return $this->_data; }

    public function getid() { return $this->_data->id; }
    public function getname() { return $this->_data->name; }
    public function getdate() { return $this->_data->date; }

    
}


class test_TbNotIndexList {
    private $_dataList;
    
    public function __construct($_json_) {
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_NotIndexList($_json2_);
            array_push($this->_dataList, $_v);
        }
    }

    public function getDataList() { return $this->_dataList; }

    public function get($index) { return $this->_dataList[$index]; }
    

}


class test_TbMultiUnionIndexList {
    private $_dataList;
    
    public function __construct($_json_) {
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_MultiUnionIndexList($_json2_);
            array_push($this->_dataList, $_v);
        }
    }

    public function getDataList() { return $this->_dataList; }

    public function get($index) { return $this->_dataList[$index]; }
    

}


class test_TbMultiIndexList {
    private $_dataList;
    
    public function __construct($_json_) {
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_MultiIndexList($_json2_);
            array_push($this->_dataList, $_v);
        }
    }

    public function getDataList() { return $this->_dataList; }

    public function get($index) { return $this->_dataList[$index]; }
    

}


class test_TbDataFromMisc {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoType2($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->x4] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbMultiRowRecord {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_MultiRowRecord($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestMultiColumn {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestMultiColumn($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbMultiRowTitle {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_MultiRowTitle($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestNull {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestNull($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDemoPrimitive {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoPrimitiveTypesTable($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->x4] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestString {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestString($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDemoGroup {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoGroup($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDemoGroup_C {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoGroup($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDemoGroup_S {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoGroup($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDemoGroup_E {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DemoGroup($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestGlobal {

    private $_data;
    public function __construct($_json_) {
        if (count($_json_) != 1) throw new \Exception('table:TbTestGlobal mode=one, but size != 1');
        $this->_data = new test_TestGlobal($_json_[0]);
    }

    public function getData() { return $this->_data; }

    public function getunlockEquip() { return $this->_data->unlockEquip; }
    public function getunlockHero() { return $this->_data->unlockHero; }

    
}


class test_TbTestBeRef {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestBeRef($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestBeRef2 {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestBeRef($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestRef {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestRef($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestSize {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestSize($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestSet {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestSet($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDetectCsvEncoding {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_DetectEncoding($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbItem2 {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = test_ItemBase::constructFrom($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestIndex {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestIndex($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestMap {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestMap($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbExcelFromJson {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_ExcelFromJson($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->x4] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbCompositeJsonTable1 {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_CompositeJsonTable1($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbCompositeJsonTable2 {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_CompositeJsonTable2($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbCompositeJsonTable3 {

    private $_data;
    public function __construct($_json_) {
        if (count($_json_) != 1) throw new \Exception('table:TbCompositeJsonTable3 mode=one, but size != 1');
        $this->_data = new test_CompositeJsonTable3($_json_[0]);
    }

    public function getData() { return $this->_data; }

    public function geta() { return $this->_data->a; }
    public function getb() { return $this->_data->b; }

    
}


class test_TbExcelFromJsonMultiRow {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_ExcelFromJsonMultiRow($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestScriptableObject {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestScriptableObject($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbPath {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_Path($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbTestMapper {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new test_TestMapper($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class test_TbDefineFromExcel2 {
    private $_dataMap;
    private $_dataList;
    public function __construct($_json_) {
        $this->_dataMap = [];
        $this->_dataList = [];
        foreach ($_json_ as $_json2_) {
            $_v = new DefineFromExcel2($_json2_);
            array_push($this->_dataList, $_v);
            $this->_dataMap[$_v->id] = $_v;
        }
    }

    public function getDataMap() { return $this->_dataMap; }
    public function getDataList() { return $this->_dataList; }

    public function get($key) { return $this->_dataMap[$key]; }


}


class Tables {
    private $_TbBlackboard;
    public function getTbBlackboard() { return $this->_TbBlackboard; }
    private $_TbBehaviorTree;
    public function getTbBehaviorTree() { return $this->_TbBehaviorTree; }
    private $_TbGlobalConfig;
    public function getTbGlobalConfig() { return $this->_TbGlobalConfig; }
    private $_TbItem;
    /**
     * 道具表
     */
    public function getTbItem() { return $this->_TbItem; }
    private $_TbL10NDemo;
    public function getTbL10NDemo() { return $this->_TbL10NDemo; }
    private $_TbPatchDemo;
    public function getTbPatchDemo() { return $this->_TbPatchDemo; }
    private $_TbTestTag;
    public function getTbTestTag() { return $this->_TbTestTag; }
    private $_TbFullTypes;
    public function getTbFullTypes() { return $this->_TbFullTypes; }
    private $_TbSingleton;
    public function getTbSingleton() { return $this->_TbSingleton; }
    private $_TbNotIndexList;
    public function getTbNotIndexList() { return $this->_TbNotIndexList; }
    private $_TbMultiUnionIndexList;
    public function getTbMultiUnionIndexList() { return $this->_TbMultiUnionIndexList; }
    private $_TbMultiIndexList;
    public function getTbMultiIndexList() { return $this->_TbMultiIndexList; }
    private $_TbDataFromMisc;
    public function getTbDataFromMisc() { return $this->_TbDataFromMisc; }
    private $_TbMultiRowRecord;
    public function getTbMultiRowRecord() { return $this->_TbMultiRowRecord; }
    private $_TbTestMultiColumn;
    public function getTbTestMultiColumn() { return $this->_TbTestMultiColumn; }
    private $_TbMultiRowTitle;
    public function getTbMultiRowTitle() { return $this->_TbMultiRowTitle; }
    private $_TbTestNull;
    public function getTbTestNull() { return $this->_TbTestNull; }
    private $_TbDemoPrimitive;
    public function getTbDemoPrimitive() { return $this->_TbDemoPrimitive; }
    private $_TbTestString;
    public function getTbTestString() { return $this->_TbTestString; }
    private $_TbDemoGroup;
    public function getTbDemoGroup() { return $this->_TbDemoGroup; }
    private $_TbDemoGroup_C;
    public function getTbDemoGroup_C() { return $this->_TbDemoGroup_C; }
    private $_TbDemoGroup_S;
    public function getTbDemoGroup_S() { return $this->_TbDemoGroup_S; }
    private $_TbDemoGroup_E;
    public function getTbDemoGroup_E() { return $this->_TbDemoGroup_E; }
    private $_TbTestGlobal;
    public function getTbTestGlobal() { return $this->_TbTestGlobal; }
    private $_TbTestBeRef;
    public function getTbTestBeRef() { return $this->_TbTestBeRef; }
    private $_TbTestBeRef2;
    public function getTbTestBeRef2() { return $this->_TbTestBeRef2; }
    private $_TbTestRef;
    public function getTbTestRef() { return $this->_TbTestRef; }
    private $_TbTestSize;
    public function getTbTestSize() { return $this->_TbTestSize; }
    private $_TbTestSet;
    public function getTbTestSet() { return $this->_TbTestSet; }
    private $_TbDetectCsvEncoding;
    public function getTbDetectCsvEncoding() { return $this->_TbDetectCsvEncoding; }
    private $_TbItem2;
    public function getTbItem2() { return $this->_TbItem2; }
    private $_TbTestIndex;
    public function getTbTestIndex() { return $this->_TbTestIndex; }
    private $_TbTestMap;
    public function getTbTestMap() { return $this->_TbTestMap; }
    private $_TbExcelFromJson;
    public function getTbExcelFromJson() { return $this->_TbExcelFromJson; }
    private $_TbCompositeJsonTable1;
    public function getTbCompositeJsonTable1() { return $this->_TbCompositeJsonTable1; }
    private $_TbCompositeJsonTable2;
    public function getTbCompositeJsonTable2() { return $this->_TbCompositeJsonTable2; }
    private $_TbCompositeJsonTable3;
    public function getTbCompositeJsonTable3() { return $this->_TbCompositeJsonTable3; }
    private $_TbExcelFromJsonMultiRow;
    public function getTbExcelFromJsonMultiRow() { return $this->_TbExcelFromJsonMultiRow; }
    private $_TbTestScriptableObject;
    public function getTbTestScriptableObject() { return $this->_TbTestScriptableObject; }
    private $_TbPath;
    public function getTbPath() { return $this->_TbPath; }
    private $_TbTestMapper;
    public function getTbTestMapper() { return $this->_TbTestMapper; }
    private $_TbDefineFromExcel2;
    public function getTbDefineFromExcel2() { return $this->_TbDefineFromExcel2; }

    public function __construct($loader) {
        $this->_TbBlackboard = new ai_TbBlackboard($loader('ai_tbblackboard'));
        $this->_TbBehaviorTree = new ai_TbBehaviorTree($loader('ai_tbbehaviortree'));
        $this->_TbGlobalConfig = new common_TbGlobalConfig($loader('common_tbglobalconfig'));
        $this->_TbItem = new item_TbItem($loader('item_tbitem'));
        $this->_TbL10NDemo = new l10n_TbL10NDemo($loader('l10n_tbl10ndemo'));
        $this->_TbPatchDemo = new l10n_TbPatchDemo($loader('l10n_tbpatchdemo'));
        $this->_TbTestTag = new tag_TbTestTag($loader('tag_tbtesttag'));
        $this->_TbFullTypes = new test_TbFullTypes($loader('test_tbfulltypes'));
        $this->_TbSingleton = new test_TbSingleton($loader('test_tbsingleton'));
        $this->_TbNotIndexList = new test_TbNotIndexList($loader('test_tbnotindexlist'));
        $this->_TbMultiUnionIndexList = new test_TbMultiUnionIndexList($loader('test_tbmultiunionindexlist'));
        $this->_TbMultiIndexList = new test_TbMultiIndexList($loader('test_tbmultiindexlist'));
        $this->_TbDataFromMisc = new test_TbDataFromMisc($loader('test_tbdatafrommisc'));
        $this->_TbMultiRowRecord = new test_TbMultiRowRecord($loader('test_tbmultirowrecord'));
        $this->_TbTestMultiColumn = new test_TbTestMultiColumn($loader('test_tbtestmulticolumn'));
        $this->_TbMultiRowTitle = new test_TbMultiRowTitle($loader('test_tbmultirowtitle'));
        $this->_TbTestNull = new test_TbTestNull($loader('test_tbtestnull'));
        $this->_TbDemoPrimitive = new test_TbDemoPrimitive($loader('test_tbdemoprimitive'));
        $this->_TbTestString = new test_TbTestString($loader('test_tbteststring'));
        $this->_TbDemoGroup = new test_TbDemoGroup($loader('test_tbdemogroup'));
        $this->_TbDemoGroup_C = new test_TbDemoGroup_C($loader('test_tbdemogroup_c'));
        $this->_TbDemoGroup_S = new test_TbDemoGroup_S($loader('test_tbdemogroup_s'));
        $this->_TbDemoGroup_E = new test_TbDemoGroup_E($loader('test_tbdemogroup_e'));
        $this->_TbTestGlobal = new test_TbTestGlobal($loader('test_tbtestglobal'));
        $this->_TbTestBeRef = new test_TbTestBeRef($loader('test_tbtestberef'));
        $this->_TbTestBeRef2 = new test_TbTestBeRef2($loader('test_tbtestberef2'));
        $this->_TbTestRef = new test_TbTestRef($loader('test_tbtestref'));
        $this->_TbTestSize = new test_TbTestSize($loader('test_tbtestsize'));
        $this->_TbTestSet = new test_TbTestSet($loader('test_tbtestset'));
        $this->_TbDetectCsvEncoding = new test_TbDetectCsvEncoding($loader('test_tbdetectcsvencoding'));
        $this->_TbItem2 = new test_TbItem2($loader('test_tbitem2'));
        $this->_TbTestIndex = new test_TbTestIndex($loader('test_tbtestindex'));
        $this->_TbTestMap = new test_TbTestMap($loader('test_tbtestmap'));
        $this->_TbExcelFromJson = new test_TbExcelFromJson($loader('test_tbexcelfromjson'));
        $this->_TbCompositeJsonTable1 = new test_TbCompositeJsonTable1($loader('test_tbcompositejsontable1'));
        $this->_TbCompositeJsonTable2 = new test_TbCompositeJsonTable2($loader('test_tbcompositejsontable2'));
        $this->_TbCompositeJsonTable3 = new test_TbCompositeJsonTable3($loader('test_tbcompositejsontable3'));
        $this->_TbExcelFromJsonMultiRow = new test_TbExcelFromJsonMultiRow($loader('test_tbexcelfromjsonmultirow'));
        $this->_TbTestScriptableObject = new test_TbTestScriptableObject($loader('test_tbtestscriptableobject'));
        $this->_TbPath = new test_TbPath($loader('test_tbpath'));
        $this->_TbTestMapper = new test_TbTestMapper($loader('test_tbtestmapper'));
        $this->_TbDefineFromExcel2 = new test_TbDefineFromExcel2($loader('test_tbdefinefromexcel2'));
    }
}

}
