//
//  Generated code. Do not modify.
//  source: schema.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AiEExecutor extends $pb.ProtobufEnum {
  static const AiEExecutor AiEExecutor_CLIENT = AiEExecutor._(0, _omitEnumNames ? '' : 'AiEExecutor_CLIENT');
  static const AiEExecutor AiEExecutor_SERVER = AiEExecutor._(1, _omitEnumNames ? '' : 'AiEExecutor_SERVER');

  static const $core.List<AiEExecutor> values = <AiEExecutor> [
    AiEExecutor_CLIENT,
    AiEExecutor_SERVER,
  ];

  static final $core.Map<$core.int, AiEExecutor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiEExecutor? valueOf($core.int value) => _byValue[value];

  const AiEExecutor._($core.int v, $core.String n) : super(v, n);
}

class AiEFinishMode extends $pb.ProtobufEnum {
  static const AiEFinishMode AiEFinishMode_IMMEDIATE = AiEFinishMode._(0, _omitEnumNames ? '' : 'AiEFinishMode_IMMEDIATE');
  static const AiEFinishMode AiEFinishMode_DELAYED = AiEFinishMode._(1, _omitEnumNames ? '' : 'AiEFinishMode_DELAYED');

  static const $core.List<AiEFinishMode> values = <AiEFinishMode> [
    AiEFinishMode_IMMEDIATE,
    AiEFinishMode_DELAYED,
  ];

  static final $core.Map<$core.int, AiEFinishMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiEFinishMode? valueOf($core.int value) => _byValue[value];

  const AiEFinishMode._($core.int v, $core.String n) : super(v, n);
}

class AiEFlowAbortMode extends $pb.ProtobufEnum {
  static const AiEFlowAbortMode AiEFlowAbortMode_NONE = AiEFlowAbortMode._(0, _omitEnumNames ? '' : 'AiEFlowAbortMode_NONE');
  static const AiEFlowAbortMode AiEFlowAbortMode_LOWER_PRIORITY = AiEFlowAbortMode._(1, _omitEnumNames ? '' : 'AiEFlowAbortMode_LOWER_PRIORITY');
  static const AiEFlowAbortMode AiEFlowAbortMode_SELF = AiEFlowAbortMode._(2, _omitEnumNames ? '' : 'AiEFlowAbortMode_SELF');
  static const AiEFlowAbortMode AiEFlowAbortMode_BOTH = AiEFlowAbortMode._(3, _omitEnumNames ? '' : 'AiEFlowAbortMode_BOTH');

  static const $core.List<AiEFlowAbortMode> values = <AiEFlowAbortMode> [
    AiEFlowAbortMode_NONE,
    AiEFlowAbortMode_LOWER_PRIORITY,
    AiEFlowAbortMode_SELF,
    AiEFlowAbortMode_BOTH,
  ];

  static final $core.Map<$core.int, AiEFlowAbortMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiEFlowAbortMode? valueOf($core.int value) => _byValue[value];

  const AiEFlowAbortMode._($core.int v, $core.String n) : super(v, n);
}

class AiEKeyType extends $pb.ProtobufEnum {
  static const AiEKeyType AiEKeyType_EMPTY_PLACEHOLDER = AiEKeyType._(0, _omitEnumNames ? '' : 'AiEKeyType_EMPTY_PLACEHOLDER');
  static const AiEKeyType AiEKeyType_BOOL = AiEKeyType._(1, _omitEnumNames ? '' : 'AiEKeyType_BOOL');
  static const AiEKeyType AiEKeyType_INT = AiEKeyType._(2, _omitEnumNames ? '' : 'AiEKeyType_INT');
  static const AiEKeyType AiEKeyType_FLOAT = AiEKeyType._(3, _omitEnumNames ? '' : 'AiEKeyType_FLOAT');
  static const AiEKeyType AiEKeyType_STRING = AiEKeyType._(4, _omitEnumNames ? '' : 'AiEKeyType_STRING');
  static const AiEKeyType AiEKeyType_VECTOR = AiEKeyType._(5, _omitEnumNames ? '' : 'AiEKeyType_VECTOR');
  static const AiEKeyType AiEKeyType_ROTATOR = AiEKeyType._(6, _omitEnumNames ? '' : 'AiEKeyType_ROTATOR');
  static const AiEKeyType AiEKeyType_NAME = AiEKeyType._(7, _omitEnumNames ? '' : 'AiEKeyType_NAME');
  static const AiEKeyType AiEKeyType_CLASS1 = AiEKeyType._(8, _omitEnumNames ? '' : 'AiEKeyType_CLASS1');
  static const AiEKeyType AiEKeyType_ENUM1 = AiEKeyType._(9, _omitEnumNames ? '' : 'AiEKeyType_ENUM1');
  static const AiEKeyType AiEKeyType_OBJECT = AiEKeyType._(10, _omitEnumNames ? '' : 'AiEKeyType_OBJECT');

  static const $core.List<AiEKeyType> values = <AiEKeyType> [
    AiEKeyType_EMPTY_PLACEHOLDER,
    AiEKeyType_BOOL,
    AiEKeyType_INT,
    AiEKeyType_FLOAT,
    AiEKeyType_STRING,
    AiEKeyType_VECTOR,
    AiEKeyType_ROTATOR,
    AiEKeyType_NAME,
    AiEKeyType_CLASS1,
    AiEKeyType_ENUM1,
    AiEKeyType_OBJECT,
  ];

  static final $core.Map<$core.int, AiEKeyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiEKeyType? valueOf($core.int value) => _byValue[value];

  const AiEKeyType._($core.int v, $core.String n) : super(v, n);
}

class AiENotifyObserverMode extends $pb.ProtobufEnum {
  static const AiENotifyObserverMode AiENotifyObserverMode_ON_VALUE_CHANGE = AiENotifyObserverMode._(0, _omitEnumNames ? '' : 'AiENotifyObserverMode_ON_VALUE_CHANGE');
  static const AiENotifyObserverMode AiENotifyObserverMode_ON_RESULT_CHANGE = AiENotifyObserverMode._(1, _omitEnumNames ? '' : 'AiENotifyObserverMode_ON_RESULT_CHANGE');

  static const $core.List<AiENotifyObserverMode> values = <AiENotifyObserverMode> [
    AiENotifyObserverMode_ON_VALUE_CHANGE,
    AiENotifyObserverMode_ON_RESULT_CHANGE,
  ];

  static final $core.Map<$core.int, AiENotifyObserverMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiENotifyObserverMode? valueOf($core.int value) => _byValue[value];

  const AiENotifyObserverMode._($core.int v, $core.String n) : super(v, n);
}

class AiEOperator extends $pb.ProtobufEnum {
  static const AiEOperator AiEOperator_IS_EQUAL_TO = AiEOperator._(0, _omitEnumNames ? '' : 'AiEOperator_IS_EQUAL_TO');
  static const AiEOperator AiEOperator_IS_NOT_EQUAL_TO = AiEOperator._(1, _omitEnumNames ? '' : 'AiEOperator_IS_NOT_EQUAL_TO');
  static const AiEOperator AiEOperator_IS_LESS_THAN = AiEOperator._(2, _omitEnumNames ? '' : 'AiEOperator_IS_LESS_THAN');
  static const AiEOperator AiEOperator_IS_LESS_THAN_OR_EQUAL_TO = AiEOperator._(3, _omitEnumNames ? '' : 'AiEOperator_IS_LESS_THAN_OR_EQUAL_TO');
  static const AiEOperator AiEOperator_IS_GREAT_THAN = AiEOperator._(4, _omitEnumNames ? '' : 'AiEOperator_IS_GREAT_THAN');
  static const AiEOperator AiEOperator_IS_GREAT_THAN_OR_EQUAL_TO = AiEOperator._(5, _omitEnumNames ? '' : 'AiEOperator_IS_GREAT_THAN_OR_EQUAL_TO');
  static const AiEOperator AiEOperator_CONTAINS = AiEOperator._(6, _omitEnumNames ? '' : 'AiEOperator_CONTAINS');
  static const AiEOperator AiEOperator_NOT_CONTAINS = AiEOperator._(7, _omitEnumNames ? '' : 'AiEOperator_NOT_CONTAINS');

  static const $core.List<AiEOperator> values = <AiEOperator> [
    AiEOperator_IS_EQUAL_TO,
    AiEOperator_IS_NOT_EQUAL_TO,
    AiEOperator_IS_LESS_THAN,
    AiEOperator_IS_LESS_THAN_OR_EQUAL_TO,
    AiEOperator_IS_GREAT_THAN,
    AiEOperator_IS_GREAT_THAN_OR_EQUAL_TO,
    AiEOperator_CONTAINS,
    AiEOperator_NOT_CONTAINS,
  ];

  static final $core.Map<$core.int, AiEOperator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AiEOperator? valueOf($core.int value) => _byValue[value];

  const AiEOperator._($core.int v, $core.String n) : super(v, n);
}

class AudioType extends $pb.ProtobufEnum {
  static const AudioType AudioType_UNKNOWN = AudioType._(0, _omitEnumNames ? '' : 'AudioType_UNKNOWN');
  static const AudioType AudioType_ACC = AudioType._(1, _omitEnumNames ? '' : 'AudioType_ACC');
  static const AudioType AudioType_AIFF = AudioType._(2, _omitEnumNames ? '' : 'AudioType_AIFF');

  static const $core.List<AudioType> values = <AudioType> [
    AudioType_UNKNOWN,
    AudioType_ACC,
    AudioType_AIFF,
  ];

  static final $core.Map<$core.int, AudioType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AudioType? valueOf($core.int value) => _byValue[value];

  const AudioType._($core.int v, $core.String n) : super(v, n);
}

class CommonEBoolOperator extends $pb.ProtobufEnum {
  static const CommonEBoolOperator CommonEBoolOperator_AND = CommonEBoolOperator._(0, _omitEnumNames ? '' : 'CommonEBoolOperator_AND');
  static const CommonEBoolOperator CommonEBoolOperator_OR = CommonEBoolOperator._(1, _omitEnumNames ? '' : 'CommonEBoolOperator_OR');

  static const $core.List<CommonEBoolOperator> values = <CommonEBoolOperator> [
    CommonEBoolOperator_AND,
    CommonEBoolOperator_OR,
  ];

  static final $core.Map<$core.int, CommonEBoolOperator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommonEBoolOperator? valueOf($core.int value) => _byValue[value];

  const CommonEBoolOperator._($core.int v, $core.String n) : super(v, n);
}

class ItemEClothersStarQualityType extends $pb.ProtobufEnum {
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_EMPTY_PLACEHOLDER = ItemEClothersStarQualityType._(0, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_EMPTY_PLACEHOLDER');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_ONE = ItemEClothersStarQualityType._(1, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_ONE');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_TWO = ItemEClothersStarQualityType._(2, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_TWO');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_THREE = ItemEClothersStarQualityType._(3, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_THREE');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_FOUR = ItemEClothersStarQualityType._(4, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_FOUR');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_FIVE = ItemEClothersStarQualityType._(5, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_FIVE');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_SIX = ItemEClothersStarQualityType._(6, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_SIX');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_SEVEN = ItemEClothersStarQualityType._(7, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_SEVEN');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_EIGHT = ItemEClothersStarQualityType._(8, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_EIGHT');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_NINE = ItemEClothersStarQualityType._(9, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_NINE');
  static const ItemEClothersStarQualityType ItemEClothersStarQualityType_TEN = ItemEClothersStarQualityType._(10, _omitEnumNames ? '' : 'ItemEClothersStarQualityType_TEN');

  static const $core.List<ItemEClothersStarQualityType> values = <ItemEClothersStarQualityType> [
    ItemEClothersStarQualityType_EMPTY_PLACEHOLDER,
    ItemEClothersStarQualityType_ONE,
    ItemEClothersStarQualityType_TWO,
    ItemEClothersStarQualityType_THREE,
    ItemEClothersStarQualityType_FOUR,
    ItemEClothersStarQualityType_FIVE,
    ItemEClothersStarQualityType_SIX,
    ItemEClothersStarQualityType_SEVEN,
    ItemEClothersStarQualityType_EIGHT,
    ItemEClothersStarQualityType_NINE,
    ItemEClothersStarQualityType_TEN,
  ];

  static final $core.Map<$core.int, ItemEClothersStarQualityType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEClothersStarQualityType? valueOf($core.int value) => _byValue[value];

  const ItemEClothersStarQualityType._($core.int v, $core.String n) : super(v, n);
}

class ItemEClothersTag extends $pb.ProtobufEnum {
  static const ItemEClothersTag ItemEClothersTag_EMPTY_PLACEHOLDER = ItemEClothersTag._(0, _omitEnumNames ? '' : 'ItemEClothersTag_EMPTY_PLACEHOLDER');
  static const ItemEClothersTag ItemEClothersTag_FANG_SHAI = ItemEClothersTag._(1, _omitEnumNames ? '' : 'ItemEClothersTag_FANG_SHAI');
  static const ItemEClothersTag ItemEClothersTag_WU_ZHE = ItemEClothersTag._(2, _omitEnumNames ? '' : 'ItemEClothersTag_WU_ZHE');

  static const $core.List<ItemEClothersTag> values = <ItemEClothersTag> [
    ItemEClothersTag_EMPTY_PLACEHOLDER,
    ItemEClothersTag_FANG_SHAI,
    ItemEClothersTag_WU_ZHE,
  ];

  static final $core.Map<$core.int, ItemEClothersTag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEClothersTag? valueOf($core.int value) => _byValue[value];

  const ItemEClothersTag._($core.int v, $core.String n) : super(v, n);
}

class ItemEClothesHidePartType extends $pb.ProtobufEnum {
  static const ItemEClothesHidePartType ItemEClothesHidePartType_CHEST = ItemEClothesHidePartType._(0, _omitEnumNames ? '' : 'ItemEClothesHidePartType_CHEST');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_HEAD = ItemEClothesHidePartType._(1, _omitEnumNames ? '' : 'ItemEClothesHidePartType_HEAD');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_SPINE_UPPER = ItemEClothesHidePartType._(2, _omitEnumNames ? '' : 'ItemEClothesHidePartType_SPINE_UPPER');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_SPINE_LOWER = ItemEClothesHidePartType._(3, _omitEnumNames ? '' : 'ItemEClothesHidePartType_SPINE_LOWER');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_HIP = ItemEClothesHidePartType._(4, _omitEnumNames ? '' : 'ItemEClothesHidePartType_HIP');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_LEG_UPPER = ItemEClothesHidePartType._(5, _omitEnumNames ? '' : 'ItemEClothesHidePartType_LEG_UPPER');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_LEG_MIDDLE = ItemEClothesHidePartType._(6, _omitEnumNames ? '' : 'ItemEClothesHidePartType_LEG_MIDDLE');
  static const ItemEClothesHidePartType ItemEClothesHidePartType_LEG_LOWER = ItemEClothesHidePartType._(7, _omitEnumNames ? '' : 'ItemEClothesHidePartType_LEG_LOWER');

  static const $core.List<ItemEClothesHidePartType> values = <ItemEClothesHidePartType> [
    ItemEClothesHidePartType_CHEST,
    ItemEClothesHidePartType_HEAD,
    ItemEClothesHidePartType_SPINE_UPPER,
    ItemEClothesHidePartType_SPINE_LOWER,
    ItemEClothesHidePartType_HIP,
    ItemEClothesHidePartType_LEG_UPPER,
    ItemEClothesHidePartType_LEG_MIDDLE,
    ItemEClothesHidePartType_LEG_LOWER,
  ];

  static final $core.Map<$core.int, ItemEClothesHidePartType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEClothesHidePartType? valueOf($core.int value) => _byValue[value];

  const ItemEClothesHidePartType._($core.int v, $core.String n) : super(v, n);
}

class ItemEClothesPropertyType extends $pb.ProtobufEnum {
  static const ItemEClothesPropertyType ItemEClothesPropertyType_EMPTY_PLACEHOLDER = ItemEClothesPropertyType._(0, _omitEnumNames ? '' : 'ItemEClothesPropertyType_EMPTY_PLACEHOLDER');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_JIAN_YUE = ItemEClothesPropertyType._(1, _omitEnumNames ? '' : 'ItemEClothesPropertyType_JIAN_YUE');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_HUA_LI = ItemEClothesPropertyType._(2, _omitEnumNames ? '' : 'ItemEClothesPropertyType_HUA_LI');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_KE_AI = ItemEClothesPropertyType._(3, _omitEnumNames ? '' : 'ItemEClothesPropertyType_KE_AI');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_CHENG_SHU = ItemEClothesPropertyType._(4, _omitEnumNames ? '' : 'ItemEClothesPropertyType_CHENG_SHU');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_HUO_PO = ItemEClothesPropertyType._(5, _omitEnumNames ? '' : 'ItemEClothesPropertyType_HUO_PO');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_YOU_YA = ItemEClothesPropertyType._(6, _omitEnumNames ? '' : 'ItemEClothesPropertyType_YOU_YA');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_QING_CHUN = ItemEClothesPropertyType._(7, _omitEnumNames ? '' : 'ItemEClothesPropertyType_QING_CHUN');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_XING_GAN = ItemEClothesPropertyType._(8, _omitEnumNames ? '' : 'ItemEClothesPropertyType_XING_GAN');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_QING_LIANG = ItemEClothesPropertyType._(9, _omitEnumNames ? '' : 'ItemEClothesPropertyType_QING_LIANG');
  static const ItemEClothesPropertyType ItemEClothesPropertyType_BAO_NUAN = ItemEClothesPropertyType._(10, _omitEnumNames ? '' : 'ItemEClothesPropertyType_BAO_NUAN');

  static const $core.List<ItemEClothesPropertyType> values = <ItemEClothesPropertyType> [
    ItemEClothesPropertyType_EMPTY_PLACEHOLDER,
    ItemEClothesPropertyType_JIAN_YUE,
    ItemEClothesPropertyType_HUA_LI,
    ItemEClothesPropertyType_KE_AI,
    ItemEClothesPropertyType_CHENG_SHU,
    ItemEClothesPropertyType_HUO_PO,
    ItemEClothesPropertyType_YOU_YA,
    ItemEClothesPropertyType_QING_CHUN,
    ItemEClothesPropertyType_XING_GAN,
    ItemEClothesPropertyType_QING_LIANG,
    ItemEClothesPropertyType_BAO_NUAN,
  ];

  static final $core.Map<$core.int, ItemEClothesPropertyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEClothesPropertyType? valueOf($core.int value) => _byValue[value];

  const ItemEClothesPropertyType._($core.int v, $core.String n) : super(v, n);
}

class ItemECurrencyType extends $pb.ProtobufEnum {
  static const ItemECurrencyType ItemECurrencyType_EMPTY_PLACEHOLDER = ItemECurrencyType._(0, _omitEnumNames ? '' : 'ItemECurrencyType_EMPTY_PLACEHOLDER');
  static const ItemECurrencyType ItemECurrencyType_DIAMOND = ItemECurrencyType._(1, _omitEnumNames ? '' : 'ItemECurrencyType_DIAMOND');
  static const ItemECurrencyType ItemECurrencyType_GOLD = ItemECurrencyType._(2, _omitEnumNames ? '' : 'ItemECurrencyType_GOLD');
  static const ItemECurrencyType ItemECurrencyType_SILVER = ItemECurrencyType._(3, _omitEnumNames ? '' : 'ItemECurrencyType_SILVER');
  static const ItemECurrencyType ItemECurrencyType_EXP = ItemECurrencyType._(4, _omitEnumNames ? '' : 'ItemECurrencyType_EXP');
  static const ItemECurrencyType ItemECurrencyType_POWER_POINT = ItemECurrencyType._(5, _omitEnumNames ? '' : 'ItemECurrencyType_POWER_POINT');

  static const $core.List<ItemECurrencyType> values = <ItemECurrencyType> [
    ItemECurrencyType_EMPTY_PLACEHOLDER,
    ItemECurrencyType_DIAMOND,
    ItemECurrencyType_GOLD,
    ItemECurrencyType_SILVER,
    ItemECurrencyType_EXP,
    ItemECurrencyType_POWER_POINT,
  ];

  static final $core.Map<$core.int, ItemECurrencyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemECurrencyType? valueOf($core.int value) => _byValue[value];

  const ItemECurrencyType._($core.int v, $core.String n) : super(v, n);
}

class ItemEItemQuality extends $pb.ProtobufEnum {
  static const ItemEItemQuality ItemEItemQuality_WHITE = ItemEItemQuality._(0, _omitEnumNames ? '' : 'ItemEItemQuality_WHITE');
  static const ItemEItemQuality ItemEItemQuality_GREEN = ItemEItemQuality._(1, _omitEnumNames ? '' : 'ItemEItemQuality_GREEN');
  static const ItemEItemQuality ItemEItemQuality_BLUE = ItemEItemQuality._(2, _omitEnumNames ? '' : 'ItemEItemQuality_BLUE');
  static const ItemEItemQuality ItemEItemQuality_PURPLE = ItemEItemQuality._(3, _omitEnumNames ? '' : 'ItemEItemQuality_PURPLE');
  static const ItemEItemQuality ItemEItemQuality_GOLDEN = ItemEItemQuality._(4, _omitEnumNames ? '' : 'ItemEItemQuality_GOLDEN');

  static const $core.List<ItemEItemQuality> values = <ItemEItemQuality> [
    ItemEItemQuality_WHITE,
    ItemEItemQuality_GREEN,
    ItemEItemQuality_BLUE,
    ItemEItemQuality_PURPLE,
    ItemEItemQuality_GOLDEN,
  ];

  static final $core.Map<$core.int, ItemEItemQuality> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEItemQuality? valueOf($core.int value) => _byValue[value];

  const ItemEItemQuality._($core.int v, $core.String n) : super(v, n);
}

class ItemEMajorType extends $pb.ProtobufEnum {
  static const ItemEMajorType ItemEMajorType_EMPTY_PLACEHOLDER = ItemEMajorType._(0, _omitEnumNames ? '' : 'ItemEMajorType_EMPTY_PLACEHOLDER');
  static const ItemEMajorType ItemEMajorType_CURRENCY = ItemEMajorType._(1, _omitEnumNames ? '' : 'ItemEMajorType_CURRENCY');
  static const ItemEMajorType ItemEMajorType_CLOTH = ItemEMajorType._(2, _omitEnumNames ? '' : 'ItemEMajorType_CLOTH');
  static const ItemEMajorType ItemEMajorType_QUEST = ItemEMajorType._(3, _omitEnumNames ? '' : 'ItemEMajorType_QUEST');
  static const ItemEMajorType ItemEMajorType_CONSUMABLES = ItemEMajorType._(4, _omitEnumNames ? '' : 'ItemEMajorType_CONSUMABLES');
  static const ItemEMajorType ItemEMajorType_TREASURE_BOX = ItemEMajorType._(5, _omitEnumNames ? '' : 'ItemEMajorType_TREASURE_BOX');
  static const ItemEMajorType ItemEMajorType_ACHIEVEMENT_AND_TITLE = ItemEMajorType._(6, _omitEnumNames ? '' : 'ItemEMajorType_ACHIEVEMENT_AND_TITLE');
  static const ItemEMajorType ItemEMajorType_HEAD_FRAME = ItemEMajorType._(7, _omitEnumNames ? '' : 'ItemEMajorType_HEAD_FRAME');
  static const ItemEMajorType ItemEMajorType_VOICE = ItemEMajorType._(8, _omitEnumNames ? '' : 'ItemEMajorType_VOICE');
  static const ItemEMajorType ItemEMajorType_ACTION = ItemEMajorType._(9, _omitEnumNames ? '' : 'ItemEMajorType_ACTION');
  static const ItemEMajorType ItemEMajorType_EXPANSION = ItemEMajorType._(10, _omitEnumNames ? '' : 'ItemEMajorType_EXPANSION');
  static const ItemEMajorType ItemEMajorType_MATERIAL = ItemEMajorType._(11, _omitEnumNames ? '' : 'ItemEMajorType_MATERIAL');

  static const $core.List<ItemEMajorType> values = <ItemEMajorType> [
    ItemEMajorType_EMPTY_PLACEHOLDER,
    ItemEMajorType_CURRENCY,
    ItemEMajorType_CLOTH,
    ItemEMajorType_QUEST,
    ItemEMajorType_CONSUMABLES,
    ItemEMajorType_TREASURE_BOX,
    ItemEMajorType_ACHIEVEMENT_AND_TITLE,
    ItemEMajorType_HEAD_FRAME,
    ItemEMajorType_VOICE,
    ItemEMajorType_ACTION,
    ItemEMajorType_EXPANSION,
    ItemEMajorType_MATERIAL,
  ];

  static final $core.Map<$core.int, ItemEMajorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEMajorType? valueOf($core.int value) => _byValue[value];

  const ItemEMajorType._($core.int v, $core.String n) : super(v, n);
}

class ItemEMinorType extends $pb.ProtobufEnum {
  static const ItemEMinorType ItemEMinorType_EMPTY_PLACEHOLDER = ItemEMinorType._(0, _omitEnumNames ? '' : 'ItemEMinorType_EMPTY_PLACEHOLDER');
  static const ItemEMinorType ItemEMinorType_DIAMOND = ItemEMinorType._(101, _omitEnumNames ? '' : 'ItemEMinorType_DIAMOND');
  static const ItemEMinorType ItemEMinorType_GOLD = ItemEMinorType._(102, _omitEnumNames ? '' : 'ItemEMinorType_GOLD');
  static const ItemEMinorType ItemEMinorType_SILVER = ItemEMinorType._(103, _omitEnumNames ? '' : 'ItemEMinorType_SILVER');
  static const ItemEMinorType ItemEMinorType_EXP = ItemEMinorType._(104, _omitEnumNames ? '' : 'ItemEMinorType_EXP');
  static const ItemEMinorType ItemEMinorType_POWER_POINT = ItemEMinorType._(105, _omitEnumNames ? '' : 'ItemEMinorType_POWER_POINT');
  static const ItemEMinorType ItemEMinorType_HAIR_STYLE = ItemEMinorType._(210, _omitEnumNames ? '' : 'ItemEMinorType_HAIR_STYLE');
  static const ItemEMinorType ItemEMinorType_COAT = ItemEMinorType._(220, _omitEnumNames ? '' : 'ItemEMinorType_COAT');
  static const ItemEMinorType ItemEMinorType_UPPER_JACKET = ItemEMinorType._(230, _omitEnumNames ? '' : 'ItemEMinorType_UPPER_JACKET');
  static const ItemEMinorType ItemEMinorType_TROUSERS = ItemEMinorType._(241, _omitEnumNames ? '' : 'ItemEMinorType_TROUSERS');
  static const ItemEMinorType ItemEMinorType_SKIRT = ItemEMinorType._(242, _omitEnumNames ? '' : 'ItemEMinorType_SKIRT');
  static const ItemEMinorType ItemEMinorType_SOCKS = ItemEMinorType._(250, _omitEnumNames ? '' : 'ItemEMinorType_SOCKS');
  static const ItemEMinorType ItemEMinorType_SHOES = ItemEMinorType._(260, _omitEnumNames ? '' : 'ItemEMinorType_SHOES');
  static const ItemEMinorType ItemEMinorType_HAIR_ACCESSORY = ItemEMinorType._(271, _omitEnumNames ? '' : 'ItemEMinorType_HAIR_ACCESSORY');
  static const ItemEMinorType ItemEMinorType_HAT = ItemEMinorType._(272, _omitEnumNames ? '' : 'ItemEMinorType_HAT');
  static const ItemEMinorType ItemEMinorType_EARRING = ItemEMinorType._(273, _omitEnumNames ? '' : 'ItemEMinorType_EARRING');
  static const ItemEMinorType ItemEMinorType_NECKLACE = ItemEMinorType._(274, _omitEnumNames ? '' : 'ItemEMinorType_NECKLACE');
  static const ItemEMinorType ItemEMinorType_BRACELET = ItemEMinorType._(275, _omitEnumNames ? '' : 'ItemEMinorType_BRACELET');
  static const ItemEMinorType ItemEMinorType_HAIR_CLASP = ItemEMinorType._(276, _omitEnumNames ? '' : 'ItemEMinorType_HAIR_CLASP');
  static const ItemEMinorType ItemEMinorType_GLOVE = ItemEMinorType._(277, _omitEnumNames ? '' : 'ItemEMinorType_GLOVE');
  static const ItemEMinorType ItemEMinorType_HANDHELD_OBJECT = ItemEMinorType._(278, _omitEnumNames ? '' : 'ItemEMinorType_HANDHELD_OBJECT');
  static const ItemEMinorType ItemEMinorType_SPECIAL = ItemEMinorType._(279, _omitEnumNames ? '' : 'ItemEMinorType_SPECIAL');
  static const ItemEMinorType ItemEMinorType_BASE_COSMETIC = ItemEMinorType._(281, _omitEnumNames ? '' : 'ItemEMinorType_BASE_COSMETIC');
  static const ItemEMinorType ItemEMinorType_EYEBROW_COSMETIC = ItemEMinorType._(282, _omitEnumNames ? '' : 'ItemEMinorType_EYEBROW_COSMETIC');
  static const ItemEMinorType ItemEMinorType_EYELASH = ItemEMinorType._(283, _omitEnumNames ? '' : 'ItemEMinorType_EYELASH');
  static const ItemEMinorType ItemEMinorType_COSMETIC_CONTACT_LENSES = ItemEMinorType._(284, _omitEnumNames ? '' : 'ItemEMinorType_COSMETIC_CONTACT_LENSES');
  static const ItemEMinorType ItemEMinorType_LIP_COSMETIC = ItemEMinorType._(285, _omitEnumNames ? '' : 'ItemEMinorType_LIP_COSMETIC');
  static const ItemEMinorType ItemEMinorType_SKIN_COLOR = ItemEMinorType._(286, _omitEnumNames ? '' : 'ItemEMinorType_SKIN_COLOR');
  static const ItemEMinorType ItemEMinorType_ONE_PIECE_DRESS = ItemEMinorType._(290, _omitEnumNames ? '' : 'ItemEMinorType_ONE_PIECE_DRESS');
  static const ItemEMinorType ItemEMinorType_SWITCH_CLOTHES_SCENE = ItemEMinorType._(291, _omitEnumNames ? '' : 'ItemEMinorType_SWITCH_CLOTHES_SCENE');
  static const ItemEMinorType ItemEMinorType_QUEST = ItemEMinorType._(301, _omitEnumNames ? '' : 'ItemEMinorType_QUEST');
  static const ItemEMinorType ItemEMinorType_CAST = ItemEMinorType._(401, _omitEnumNames ? '' : 'ItemEMinorType_CAST');
  static const ItemEMinorType ItemEMinorType_SWORD = ItemEMinorType._(421, _omitEnumNames ? '' : 'ItemEMinorType_SWORD');
  static const ItemEMinorType ItemEMinorType_BOW_ARROW = ItemEMinorType._(422, _omitEnumNames ? '' : 'ItemEMinorType_BOW_ARROW');
  static const ItemEMinorType ItemEMinorType_WANDS = ItemEMinorType._(423, _omitEnumNames ? '' : 'ItemEMinorType_WANDS');
  static const ItemEMinorType ItemEMinorType_SPECIAL_TOOL = ItemEMinorType._(424, _omitEnumNames ? '' : 'ItemEMinorType_SPECIAL_TOOL');
  static const ItemEMinorType ItemEMinorType_FOOD = ItemEMinorType._(403, _omitEnumNames ? '' : 'ItemEMinorType_FOOD');
  static const ItemEMinorType ItemEMinorType_TREASURE_BOX = ItemEMinorType._(501, _omitEnumNames ? '' : 'ItemEMinorType_TREASURE_BOX');
  static const ItemEMinorType ItemEMinorType_KEY = ItemEMinorType._(502, _omitEnumNames ? '' : 'ItemEMinorType_KEY');
  static const ItemEMinorType ItemEMinorType_MULTI_CHOOSE_TREASURE_BOX = ItemEMinorType._(503, _omitEnumNames ? '' : 'ItemEMinorType_MULTI_CHOOSE_TREASURE_BOX');
  static const ItemEMinorType ItemEMinorType_ACHIEVEMENT = ItemEMinorType._(601, _omitEnumNames ? '' : 'ItemEMinorType_ACHIEVEMENT');
  static const ItemEMinorType ItemEMinorType_TITLE = ItemEMinorType._(602, _omitEnumNames ? '' : 'ItemEMinorType_TITLE');
  static const ItemEMinorType ItemEMinorType_AVATAR_FRAME = ItemEMinorType._(701, _omitEnumNames ? '' : 'ItemEMinorType_AVATAR_FRAME');
  static const ItemEMinorType ItemEMinorType_VOICE = ItemEMinorType._(801, _omitEnumNames ? '' : 'ItemEMinorType_VOICE');
  static const ItemEMinorType ItemEMinorType_IDLE_POSE = ItemEMinorType._(901, _omitEnumNames ? '' : 'ItemEMinorType_IDLE_POSE');
  static const ItemEMinorType ItemEMinorType_PHOTO_POSE = ItemEMinorType._(902, _omitEnumNames ? '' : 'ItemEMinorType_PHOTO_POSE');
  static const ItemEMinorType ItemEMinorType_BAG = ItemEMinorType._(1001, _omitEnumNames ? '' : 'ItemEMinorType_BAG');
  static const ItemEMinorType ItemEMinorType_FRIEND_CAPACITY = ItemEMinorType._(1002, _omitEnumNames ? '' : 'ItemEMinorType_FRIEND_CAPACITY');
  static const ItemEMinorType ItemEMinorType_CONSTRUCTION_MATERIAL = ItemEMinorType._(1101, _omitEnumNames ? '' : 'ItemEMinorType_CONSTRUCTION_MATERIAL');
  static const ItemEMinorType ItemEMinorType_DESIGN_DRAWING = ItemEMinorType._(1102, _omitEnumNames ? '' : 'ItemEMinorType_DESIGN_DRAWING');

  static const $core.List<ItemEMinorType> values = <ItemEMinorType> [
    ItemEMinorType_EMPTY_PLACEHOLDER,
    ItemEMinorType_DIAMOND,
    ItemEMinorType_GOLD,
    ItemEMinorType_SILVER,
    ItemEMinorType_EXP,
    ItemEMinorType_POWER_POINT,
    ItemEMinorType_HAIR_STYLE,
    ItemEMinorType_COAT,
    ItemEMinorType_UPPER_JACKET,
    ItemEMinorType_TROUSERS,
    ItemEMinorType_SKIRT,
    ItemEMinorType_SOCKS,
    ItemEMinorType_SHOES,
    ItemEMinorType_HAIR_ACCESSORY,
    ItemEMinorType_HAT,
    ItemEMinorType_EARRING,
    ItemEMinorType_NECKLACE,
    ItemEMinorType_BRACELET,
    ItemEMinorType_HAIR_CLASP,
    ItemEMinorType_GLOVE,
    ItemEMinorType_HANDHELD_OBJECT,
    ItemEMinorType_SPECIAL,
    ItemEMinorType_BASE_COSMETIC,
    ItemEMinorType_EYEBROW_COSMETIC,
    ItemEMinorType_EYELASH,
    ItemEMinorType_COSMETIC_CONTACT_LENSES,
    ItemEMinorType_LIP_COSMETIC,
    ItemEMinorType_SKIN_COLOR,
    ItemEMinorType_ONE_PIECE_DRESS,
    ItemEMinorType_SWITCH_CLOTHES_SCENE,
    ItemEMinorType_QUEST,
    ItemEMinorType_CAST,
    ItemEMinorType_SWORD,
    ItemEMinorType_BOW_ARROW,
    ItemEMinorType_WANDS,
    ItemEMinorType_SPECIAL_TOOL,
    ItemEMinorType_FOOD,
    ItemEMinorType_TREASURE_BOX,
    ItemEMinorType_KEY,
    ItemEMinorType_MULTI_CHOOSE_TREASURE_BOX,
    ItemEMinorType_ACHIEVEMENT,
    ItemEMinorType_TITLE,
    ItemEMinorType_AVATAR_FRAME,
    ItemEMinorType_VOICE,
    ItemEMinorType_IDLE_POSE,
    ItemEMinorType_PHOTO_POSE,
    ItemEMinorType_BAG,
    ItemEMinorType_FRIEND_CAPACITY,
    ItemEMinorType_CONSTRUCTION_MATERIAL,
    ItemEMinorType_DESIGN_DRAWING,
  ];

  static final $core.Map<$core.int, ItemEMinorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEMinorType? valueOf($core.int value) => _byValue[value];

  const ItemEMinorType._($core.int v, $core.String n) : super(v, n);
}

class ItemEUseType extends $pb.ProtobufEnum {
  static const ItemEUseType ItemEUseType_MANUAL = ItemEUseType._(0, _omitEnumNames ? '' : 'ItemEUseType_MANUAL');
  static const ItemEUseType ItemEUseType_AUTO = ItemEUseType._(1, _omitEnumNames ? '' : 'ItemEUseType_AUTO');

  static const $core.List<ItemEUseType> values = <ItemEUseType> [
    ItemEUseType_MANUAL,
    ItemEUseType_AUTO,
  ];

  static final $core.Map<$core.int, ItemEUseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ItemEUseType? valueOf($core.int value) => _byValue[value];

  const ItemEUseType._($core.int v, $core.String n) : super(v, n);
}

class TestAccessFlag extends $pb.ProtobufEnum {
  static const TestAccessFlag TestAccessFlag_EMPTY_PLACEHOLDER = TestAccessFlag._(0, _omitEnumNames ? '' : 'TestAccessFlag_EMPTY_PLACEHOLDER');
  static const TestAccessFlag TestAccessFlag_WRITE = TestAccessFlag._(1, _omitEnumNames ? '' : 'TestAccessFlag_WRITE');
  static const TestAccessFlag TestAccessFlag_READ = TestAccessFlag._(2, _omitEnumNames ? '' : 'TestAccessFlag_READ');
  static const TestAccessFlag TestAccessFlag_TRUNCATE = TestAccessFlag._(4, _omitEnumNames ? '' : 'TestAccessFlag_TRUNCATE');
  static const TestAccessFlag TestAccessFlag_NEW = TestAccessFlag._(8, _omitEnumNames ? '' : 'TestAccessFlag_NEW');
  static const TestAccessFlag TestAccessFlag_READ_WRITE = TestAccessFlag._(3, _omitEnumNames ? '' : 'TestAccessFlag_READ_WRITE');

  static const $core.List<TestAccessFlag> values = <TestAccessFlag> [
    TestAccessFlag_EMPTY_PLACEHOLDER,
    TestAccessFlag_WRITE,
    TestAccessFlag_READ,
    TestAccessFlag_TRUNCATE,
    TestAccessFlag_NEW,
    TestAccessFlag_READ_WRITE,
  ];

  static final $core.Map<$core.int, TestAccessFlag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestAccessFlag? valueOf($core.int value) => _byValue[value];

  const TestAccessFlag._($core.int v, $core.String n) : super(v, n);
}

class TestAudioType2 extends $pb.ProtobufEnum {
  static const TestAudioType2 TestAudioType2_UNKNOWN = TestAudioType2._(0, _omitEnumNames ? '' : 'TestAudioType2_UNKNOWN');
  static const TestAudioType2 TestAudioType2_ACC = TestAudioType2._(1, _omitEnumNames ? '' : 'TestAudioType2_ACC');
  static const TestAudioType2 TestAudioType2_AIFF = TestAudioType2._(2, _omitEnumNames ? '' : 'TestAudioType2_AIFF');

  static const $core.List<TestAudioType2> values = <TestAudioType2> [
    TestAudioType2_UNKNOWN,
    TestAudioType2_ACC,
    TestAudioType2_AIFF,
  ];

  static final $core.Map<$core.int, TestAudioType2> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestAudioType2? valueOf($core.int value) => _byValue[value];

  const TestAudioType2._($core.int v, $core.String n) : super(v, n);
}

class TestDemoEnum extends $pb.ProtobufEnum {
  static const TestDemoEnum TestDemoEnum_NONE = TestDemoEnum._(0, _omitEnumNames ? '' : 'TestDemoEnum_NONE');
  static const TestDemoEnum TestDemoEnum_A = TestDemoEnum._(1, _omitEnumNames ? '' : 'TestDemoEnum_A');
  static const TestDemoEnum TestDemoEnum_B = TestDemoEnum._(2, _omitEnumNames ? '' : 'TestDemoEnum_B');
  static const TestDemoEnum TestDemoEnum_C = TestDemoEnum._(4, _omitEnumNames ? '' : 'TestDemoEnum_C');
  static const TestDemoEnum TestDemoEnum_D = TestDemoEnum._(5, _omitEnumNames ? '' : 'TestDemoEnum_D');
  static const TestDemoEnum TestDemoEnum_Any = TestDemoEnum._(6, _omitEnumNames ? '' : 'TestDemoEnum_Any');

  static const $core.List<TestDemoEnum> values = <TestDemoEnum> [
    TestDemoEnum_NONE,
    TestDemoEnum_A,
    TestDemoEnum_B,
    TestDemoEnum_C,
    TestDemoEnum_D,
    TestDemoEnum_Any,
  ];

  static final $core.Map<$core.int, TestDemoEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestDemoEnum? valueOf($core.int value) => _byValue[value];

  const TestDemoEnum._($core.int v, $core.String n) : super(v, n);
}

class TestDemoFlag extends $pb.ProtobufEnum {
  static const TestDemoFlag TestDemoFlag_EMPTY_PLACEHOLDER = TestDemoFlag._(0, _omitEnumNames ? '' : 'TestDemoFlag_EMPTY_PLACEHOLDER');
  static const TestDemoFlag TestDemoFlag_A = TestDemoFlag._(1, _omitEnumNames ? '' : 'TestDemoFlag_A');
  static const TestDemoFlag TestDemoFlag_B = TestDemoFlag._(2, _omitEnumNames ? '' : 'TestDemoFlag_B');
  static const TestDemoFlag TestDemoFlag_C = TestDemoFlag._(4, _omitEnumNames ? '' : 'TestDemoFlag_C');
  static const TestDemoFlag TestDemoFlag_D = TestDemoFlag._(8, _omitEnumNames ? '' : 'TestDemoFlag_D');

  static const $core.List<TestDemoFlag> values = <TestDemoFlag> [
    TestDemoFlag_EMPTY_PLACEHOLDER,
    TestDemoFlag_A,
    TestDemoFlag_B,
    TestDemoFlag_C,
    TestDemoFlag_D,
  ];

  static final $core.Map<$core.int, TestDemoFlag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestDemoFlag? valueOf($core.int value) => _byValue[value];

  const TestDemoFlag._($core.int v, $core.String n) : super(v, n);
}

class TestETestEmptyEnum extends $pb.ProtobufEnum {
  static const TestETestEmptyEnum TestETestEmptyEnum_EMPTY_PLACEHOLDER = TestETestEmptyEnum._(0, _omitEnumNames ? '' : 'TestETestEmptyEnum_EMPTY_PLACEHOLDER');

  static const $core.List<TestETestEmptyEnum> values = <TestETestEmptyEnum> [
    TestETestEmptyEnum_EMPTY_PLACEHOLDER,
  ];

  static final $core.Map<$core.int, TestETestEmptyEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestETestEmptyEnum? valueOf($core.int value) => _byValue[value];

  const TestETestEmptyEnum._($core.int v, $core.String n) : super(v, n);
}

class TestETestEmptyEnum2 extends $pb.ProtobufEnum {
  static const TestETestEmptyEnum2 TestETestEmptyEnum2_EMPTY_PLACEHOLDER = TestETestEmptyEnum2._(0, _omitEnumNames ? '' : 'TestETestEmptyEnum2_EMPTY_PLACEHOLDER');
  static const TestETestEmptyEnum2 TestETestEmptyEnum2_SMALL_THAN_256 = TestETestEmptyEnum2._(255, _omitEnumNames ? '' : 'TestETestEmptyEnum2_SMALL_THAN_256');
  static const TestETestEmptyEnum2 TestETestEmptyEnum2_X_256 = TestETestEmptyEnum2._(256, _omitEnumNames ? '' : 'TestETestEmptyEnum2_X_256');
  static const TestETestEmptyEnum2 TestETestEmptyEnum2_X_257 = TestETestEmptyEnum2._(257, _omitEnumNames ? '' : 'TestETestEmptyEnum2_X_257');

  static const $core.List<TestETestEmptyEnum2> values = <TestETestEmptyEnum2> [
    TestETestEmptyEnum2_EMPTY_PLACEHOLDER,
    TestETestEmptyEnum2_SMALL_THAN_256,
    TestETestEmptyEnum2_X_256,
    TestETestEmptyEnum2_X_257,
  ];

  static final $core.Map<$core.int, TestETestEmptyEnum2> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestETestEmptyEnum2? valueOf($core.int value) => _byValue[value];

  const TestETestEmptyEnum2._($core.int v, $core.String n) : super(v, n);
}

class TestETestQuality extends $pb.ProtobufEnum {
  static const TestETestQuality TestETestQuality_EMPTY_PLACEHOLDER = TestETestQuality._(0, _omitEnumNames ? '' : 'TestETestQuality_EMPTY_PLACEHOLDER');
  static const TestETestQuality TestETestQuality_A = TestETestQuality._(1, _omitEnumNames ? '' : 'TestETestQuality_A');
  static const TestETestQuality TestETestQuality_B = TestETestQuality._(2, _omitEnumNames ? '' : 'TestETestQuality_B');
  static const TestETestQuality TestETestQuality_C = TestETestQuality._(3, _omitEnumNames ? '' : 'TestETestQuality_C');
  static const TestETestQuality TestETestQuality_D = TestETestQuality._(4, _omitEnumNames ? '' : 'TestETestQuality_D');

  static const $core.List<TestETestQuality> values = <TestETestQuality> [
    TestETestQuality_EMPTY_PLACEHOLDER,
    TestETestQuality_A,
    TestETestQuality_B,
    TestETestQuality_C,
    TestETestQuality_D,
  ];

  static final $core.Map<$core.int, TestETestQuality> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestETestQuality? valueOf($core.int value) => _byValue[value];

  const TestETestQuality._($core.int v, $core.String n) : super(v, n);
}

class TestETestUeType extends $pb.ProtobufEnum {
  static const TestETestUeType TestETestUeType_WHITE = TestETestUeType._(0, _omitEnumNames ? '' : 'TestETestUeType_WHITE');
  static const TestETestUeType TestETestUeType_BLACK = TestETestUeType._(1, _omitEnumNames ? '' : 'TestETestUeType_BLACK');

  static const $core.List<TestETestUeType> values = <TestETestUeType> [
    TestETestUeType_WHITE,
    TestETestUeType_BLACK,
  ];

  static final $core.Map<$core.int, TestETestUeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestETestUeType? valueOf($core.int value) => _byValue[value];

  const TestETestUeType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
