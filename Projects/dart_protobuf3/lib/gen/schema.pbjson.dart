//
//  Generated code. Do not modify.
//  source: schema.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aiEExecutorDescriptor instead')
const AiEExecutor$json = {
  '1': 'AiEExecutor',
  '2': [
    {'1': 'AiEExecutor_CLIENT', '2': 0},
    {'1': 'AiEExecutor_SERVER', '2': 1},
  ],
};

/// Descriptor for `AiEExecutor`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiEExecutorDescriptor = $convert.base64Decode(
    'CgtBaUVFeGVjdXRvchIWChJBaUVFeGVjdXRvcl9DTElFTlQQABIWChJBaUVFeGVjdXRvcl9TRV'
    'JWRVIQAQ==');

@$core.Deprecated('Use aiEFinishModeDescriptor instead')
const AiEFinishMode$json = {
  '1': 'AiEFinishMode',
  '2': [
    {'1': 'AiEFinishMode_IMMEDIATE', '2': 0},
    {'1': 'AiEFinishMode_DELAYED', '2': 1},
  ],
};

/// Descriptor for `AiEFinishMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiEFinishModeDescriptor = $convert.base64Decode(
    'Cg1BaUVGaW5pc2hNb2RlEhsKF0FpRUZpbmlzaE1vZGVfSU1NRURJQVRFEAASGQoVQWlFRmluaX'
    'NoTW9kZV9ERUxBWUVEEAE=');

@$core.Deprecated('Use aiEFlowAbortModeDescriptor instead')
const AiEFlowAbortMode$json = {
  '1': 'AiEFlowAbortMode',
  '2': [
    {'1': 'AiEFlowAbortMode_NONE', '2': 0},
    {'1': 'AiEFlowAbortMode_LOWER_PRIORITY', '2': 1},
    {'1': 'AiEFlowAbortMode_SELF', '2': 2},
    {'1': 'AiEFlowAbortMode_BOTH', '2': 3},
  ],
};

/// Descriptor for `AiEFlowAbortMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiEFlowAbortModeDescriptor = $convert.base64Decode(
    'ChBBaUVGbG93QWJvcnRNb2RlEhkKFUFpRUZsb3dBYm9ydE1vZGVfTk9ORRAAEiMKH0FpRUZsb3'
    'dBYm9ydE1vZGVfTE9XRVJfUFJJT1JJVFkQARIZChVBaUVGbG93QWJvcnRNb2RlX1NFTEYQAhIZ'
    'ChVBaUVGbG93QWJvcnRNb2RlX0JPVEgQAw==');

@$core.Deprecated('Use aiEKeyTypeDescriptor instead')
const AiEKeyType$json = {
  '1': 'AiEKeyType',
  '2': [
    {'1': 'AiEKeyType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'AiEKeyType_BOOL', '2': 1},
    {'1': 'AiEKeyType_INT', '2': 2},
    {'1': 'AiEKeyType_FLOAT', '2': 3},
    {'1': 'AiEKeyType_STRING', '2': 4},
    {'1': 'AiEKeyType_VECTOR', '2': 5},
    {'1': 'AiEKeyType_ROTATOR', '2': 6},
    {'1': 'AiEKeyType_NAME', '2': 7},
    {'1': 'AiEKeyType_CLASS1', '2': 8},
    {'1': 'AiEKeyType_ENUM1', '2': 9},
    {'1': 'AiEKeyType_OBJECT', '2': 10},
  ],
};

/// Descriptor for `AiEKeyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiEKeyTypeDescriptor = $convert.base64Decode(
    'CgpBaUVLZXlUeXBlEiAKHEFpRUtleVR5cGVfRU1QVFlfUExBQ0VIT0xERVIQABITCg9BaUVLZX'
    'lUeXBlX0JPT0wQARISCg5BaUVLZXlUeXBlX0lOVBACEhQKEEFpRUtleVR5cGVfRkxPQVQQAxIV'
    'ChFBaUVLZXlUeXBlX1NUUklORxAEEhUKEUFpRUtleVR5cGVfVkVDVE9SEAUSFgoSQWlFS2V5VH'
    'lwZV9ST1RBVE9SEAYSEwoPQWlFS2V5VHlwZV9OQU1FEAcSFQoRQWlFS2V5VHlwZV9DTEFTUzEQ'
    'CBIUChBBaUVLZXlUeXBlX0VOVU0xEAkSFQoRQWlFS2V5VHlwZV9PQkpFQ1QQCg==');

@$core.Deprecated('Use aiENotifyObserverModeDescriptor instead')
const AiENotifyObserverMode$json = {
  '1': 'AiENotifyObserverMode',
  '2': [
    {'1': 'AiENotifyObserverMode_ON_VALUE_CHANGE', '2': 0},
    {'1': 'AiENotifyObserverMode_ON_RESULT_CHANGE', '2': 1},
  ],
};

/// Descriptor for `AiENotifyObserverMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiENotifyObserverModeDescriptor = $convert.base64Decode(
    'ChVBaUVOb3RpZnlPYnNlcnZlck1vZGUSKQolQWlFTm90aWZ5T2JzZXJ2ZXJNb2RlX09OX1ZBTF'
    'VFX0NIQU5HRRAAEioKJkFpRU5vdGlmeU9ic2VydmVyTW9kZV9PTl9SRVNVTFRfQ0hBTkdFEAE=');

@$core.Deprecated('Use aiEOperatorDescriptor instead')
const AiEOperator$json = {
  '1': 'AiEOperator',
  '2': [
    {'1': 'AiEOperator_IS_EQUAL_TO', '2': 0},
    {'1': 'AiEOperator_IS_NOT_EQUAL_TO', '2': 1},
    {'1': 'AiEOperator_IS_LESS_THAN', '2': 2},
    {'1': 'AiEOperator_IS_LESS_THAN_OR_EQUAL_TO', '2': 3},
    {'1': 'AiEOperator_IS_GREAT_THAN', '2': 4},
    {'1': 'AiEOperator_IS_GREAT_THAN_OR_EQUAL_TO', '2': 5},
    {'1': 'AiEOperator_CONTAINS', '2': 6},
    {'1': 'AiEOperator_NOT_CONTAINS', '2': 7},
  ],
};

/// Descriptor for `AiEOperator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiEOperatorDescriptor = $convert.base64Decode(
    'CgtBaUVPcGVyYXRvchIbChdBaUVPcGVyYXRvcl9JU19FUVVBTF9UTxAAEh8KG0FpRU9wZXJhdG'
    '9yX0lTX05PVF9FUVVBTF9UTxABEhwKGEFpRU9wZXJhdG9yX0lTX0xFU1NfVEhBThACEigKJEFp'
    'RU9wZXJhdG9yX0lTX0xFU1NfVEhBTl9PUl9FUVVBTF9UTxADEh0KGUFpRU9wZXJhdG9yX0lTX0'
    'dSRUFUX1RIQU4QBBIpCiVBaUVPcGVyYXRvcl9JU19HUkVBVF9USEFOX09SX0VRVUFMX1RPEAUS'
    'GAoUQWlFT3BlcmF0b3JfQ09OVEFJTlMQBhIcChhBaUVPcGVyYXRvcl9OT1RfQ09OVEFJTlMQBw'
    '==');

@$core.Deprecated('Use audioTypeDescriptor instead')
const AudioType$json = {
  '1': 'AudioType',
  '2': [
    {'1': 'AudioType_UNKNOWN', '2': 0},
    {'1': 'AudioType_ACC', '2': 1},
    {'1': 'AudioType_AIFF', '2': 2},
  ],
};

/// Descriptor for `AudioType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List audioTypeDescriptor = $convert.base64Decode(
    'CglBdWRpb1R5cGUSFQoRQXVkaW9UeXBlX1VOS05PV04QABIRCg1BdWRpb1R5cGVfQUNDEAESEg'
    'oOQXVkaW9UeXBlX0FJRkYQAg==');

@$core.Deprecated('Use commonEBoolOperatorDescriptor instead')
const CommonEBoolOperator$json = {
  '1': 'CommonEBoolOperator',
  '2': [
    {'1': 'CommonEBoolOperator_AND', '2': 0},
    {'1': 'CommonEBoolOperator_OR', '2': 1},
  ],
};

/// Descriptor for `CommonEBoolOperator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commonEBoolOperatorDescriptor = $convert.base64Decode(
    'ChNDb21tb25FQm9vbE9wZXJhdG9yEhsKF0NvbW1vbkVCb29sT3BlcmF0b3JfQU5EEAASGgoWQ2'
    '9tbW9uRUJvb2xPcGVyYXRvcl9PUhAB');

@$core.Deprecated('Use itemEClothersStarQualityTypeDescriptor instead')
const ItemEClothersStarQualityType$json = {
  '1': 'ItemEClothersStarQualityType',
  '2': [
    {'1': 'ItemEClothersStarQualityType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemEClothersStarQualityType_ONE', '2': 1},
    {'1': 'ItemEClothersStarQualityType_TWO', '2': 2},
    {'1': 'ItemEClothersStarQualityType_THREE', '2': 3},
    {'1': 'ItemEClothersStarQualityType_FOUR', '2': 4},
    {'1': 'ItemEClothersStarQualityType_FIVE', '2': 5},
    {'1': 'ItemEClothersStarQualityType_SIX', '2': 6},
    {'1': 'ItemEClothersStarQualityType_SEVEN', '2': 7},
    {'1': 'ItemEClothersStarQualityType_EIGHT', '2': 8},
    {'1': 'ItemEClothersStarQualityType_NINE', '2': 9},
    {'1': 'ItemEClothersStarQualityType_TEN', '2': 10},
  ],
};

/// Descriptor for `ItemEClothersStarQualityType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEClothersStarQualityTypeDescriptor = $convert.base64Decode(
    'ChxJdGVtRUNsb3RoZXJzU3RhclF1YWxpdHlUeXBlEjIKLkl0ZW1FQ2xvdGhlcnNTdGFyUXVhbG'
    'l0eVR5cGVfRU1QVFlfUExBQ0VIT0xERVIQABIkCiBJdGVtRUNsb3RoZXJzU3RhclF1YWxpdHlU'
    'eXBlX09ORRABEiQKIEl0ZW1FQ2xvdGhlcnNTdGFyUXVhbGl0eVR5cGVfVFdPEAISJgoiSXRlbU'
    'VDbG90aGVyc1N0YXJRdWFsaXR5VHlwZV9USFJFRRADEiUKIUl0ZW1FQ2xvdGhlcnNTdGFyUXVh'
    'bGl0eVR5cGVfRk9VUhAEEiUKIUl0ZW1FQ2xvdGhlcnNTdGFyUXVhbGl0eVR5cGVfRklWRRAFEi'
    'QKIEl0ZW1FQ2xvdGhlcnNTdGFyUXVhbGl0eVR5cGVfU0lYEAYSJgoiSXRlbUVDbG90aGVyc1N0'
    'YXJRdWFsaXR5VHlwZV9TRVZFThAHEiYKIkl0ZW1FQ2xvdGhlcnNTdGFyUXVhbGl0eVR5cGVfRU'
    'lHSFQQCBIlCiFJdGVtRUNsb3RoZXJzU3RhclF1YWxpdHlUeXBlX05JTkUQCRIkCiBJdGVtRUNs'
    'b3RoZXJzU3RhclF1YWxpdHlUeXBlX1RFThAK');

@$core.Deprecated('Use itemEClothersTagDescriptor instead')
const ItemEClothersTag$json = {
  '1': 'ItemEClothersTag',
  '2': [
    {'1': 'ItemEClothersTag_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemEClothersTag_FANG_SHAI', '2': 1},
    {'1': 'ItemEClothersTag_WU_ZHE', '2': 2},
  ],
};

/// Descriptor for `ItemEClothersTag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEClothersTagDescriptor = $convert.base64Decode(
    'ChBJdGVtRUNsb3RoZXJzVGFnEiYKIkl0ZW1FQ2xvdGhlcnNUYWdfRU1QVFlfUExBQ0VIT0xERV'
    'IQABIeChpJdGVtRUNsb3RoZXJzVGFnX0ZBTkdfU0hBSRABEhsKF0l0ZW1FQ2xvdGhlcnNUYWdf'
    'V1VfWkhFEAI=');

@$core.Deprecated('Use itemEClothesHidePartTypeDescriptor instead')
const ItemEClothesHidePartType$json = {
  '1': 'ItemEClothesHidePartType',
  '2': [
    {'1': 'ItemEClothesHidePartType_CHEST', '2': 0},
    {'1': 'ItemEClothesHidePartType_HEAD', '2': 1},
    {'1': 'ItemEClothesHidePartType_SPINE_UPPER', '2': 2},
    {'1': 'ItemEClothesHidePartType_SPINE_LOWER', '2': 3},
    {'1': 'ItemEClothesHidePartType_HIP', '2': 4},
    {'1': 'ItemEClothesHidePartType_LEG_UPPER', '2': 5},
    {'1': 'ItemEClothesHidePartType_LEG_MIDDLE', '2': 6},
    {'1': 'ItemEClothesHidePartType_LEG_LOWER', '2': 7},
  ],
};

/// Descriptor for `ItemEClothesHidePartType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEClothesHidePartTypeDescriptor = $convert.base64Decode(
    'ChhJdGVtRUNsb3RoZXNIaWRlUGFydFR5cGUSIgoeSXRlbUVDbG90aGVzSGlkZVBhcnRUeXBlX0'
    'NIRVNUEAASIQodSXRlbUVDbG90aGVzSGlkZVBhcnRUeXBlX0hFQUQQARIoCiRJdGVtRUNsb3Ro'
    'ZXNIaWRlUGFydFR5cGVfU1BJTkVfVVBQRVIQAhIoCiRJdGVtRUNsb3RoZXNIaWRlUGFydFR5cG'
    'VfU1BJTkVfTE9XRVIQAxIgChxJdGVtRUNsb3RoZXNIaWRlUGFydFR5cGVfSElQEAQSJgoiSXRl'
    'bUVDbG90aGVzSGlkZVBhcnRUeXBlX0xFR19VUFBFUhAFEicKI0l0ZW1FQ2xvdGhlc0hpZGVQYX'
    'J0VHlwZV9MRUdfTUlERExFEAYSJgoiSXRlbUVDbG90aGVzSGlkZVBhcnRUeXBlX0xFR19MT1dF'
    'UhAH');

@$core.Deprecated('Use itemEClothesPropertyTypeDescriptor instead')
const ItemEClothesPropertyType$json = {
  '1': 'ItemEClothesPropertyType',
  '2': [
    {'1': 'ItemEClothesPropertyType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemEClothesPropertyType_JIAN_YUE', '2': 1},
    {'1': 'ItemEClothesPropertyType_HUA_LI', '2': 2},
    {'1': 'ItemEClothesPropertyType_KE_AI', '2': 3},
    {'1': 'ItemEClothesPropertyType_CHENG_SHU', '2': 4},
    {'1': 'ItemEClothesPropertyType_HUO_PO', '2': 5},
    {'1': 'ItemEClothesPropertyType_YOU_YA', '2': 6},
    {'1': 'ItemEClothesPropertyType_QING_CHUN', '2': 7},
    {'1': 'ItemEClothesPropertyType_XING_GAN', '2': 8},
    {'1': 'ItemEClothesPropertyType_QING_LIANG', '2': 9},
    {'1': 'ItemEClothesPropertyType_BAO_NUAN', '2': 10},
  ],
};

/// Descriptor for `ItemEClothesPropertyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEClothesPropertyTypeDescriptor = $convert.base64Decode(
    'ChhJdGVtRUNsb3RoZXNQcm9wZXJ0eVR5cGUSLgoqSXRlbUVDbG90aGVzUHJvcGVydHlUeXBlX0'
    'VNUFRZX1BMQUNFSE9MREVSEAASJQohSXRlbUVDbG90aGVzUHJvcGVydHlUeXBlX0pJQU5fWVVF'
    'EAESIwofSXRlbUVDbG90aGVzUHJvcGVydHlUeXBlX0hVQV9MSRACEiIKHkl0ZW1FQ2xvdGhlc1'
    'Byb3BlcnR5VHlwZV9LRV9BSRADEiYKIkl0ZW1FQ2xvdGhlc1Byb3BlcnR5VHlwZV9DSEVOR19T'
    'SFUQBBIjCh9JdGVtRUNsb3RoZXNQcm9wZXJ0eVR5cGVfSFVPX1BPEAUSIwofSXRlbUVDbG90aG'
    'VzUHJvcGVydHlUeXBlX1lPVV9ZQRAGEiYKIkl0ZW1FQ2xvdGhlc1Byb3BlcnR5VHlwZV9RSU5H'
    'X0NIVU4QBxIlCiFJdGVtRUNsb3RoZXNQcm9wZXJ0eVR5cGVfWElOR19HQU4QCBInCiNJdGVtRU'
    'Nsb3RoZXNQcm9wZXJ0eVR5cGVfUUlOR19MSUFORxAJEiUKIUl0ZW1FQ2xvdGhlc1Byb3BlcnR5'
    'VHlwZV9CQU9fTlVBThAK');

@$core.Deprecated('Use itemECurrencyTypeDescriptor instead')
const ItemECurrencyType$json = {
  '1': 'ItemECurrencyType',
  '2': [
    {'1': 'ItemECurrencyType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemECurrencyType_DIAMOND', '2': 1},
    {'1': 'ItemECurrencyType_GOLD', '2': 2},
    {'1': 'ItemECurrencyType_SILVER', '2': 3},
    {'1': 'ItemECurrencyType_EXP', '2': 4},
    {'1': 'ItemECurrencyType_POWER_POINT', '2': 5},
  ],
};

/// Descriptor for `ItemECurrencyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemECurrencyTypeDescriptor = $convert.base64Decode(
    'ChFJdGVtRUN1cnJlbmN5VHlwZRInCiNJdGVtRUN1cnJlbmN5VHlwZV9FTVBUWV9QTEFDRUhPTE'
    'RFUhAAEh0KGUl0ZW1FQ3VycmVuY3lUeXBlX0RJQU1PTkQQARIaChZJdGVtRUN1cnJlbmN5VHlw'
    'ZV9HT0xEEAISHAoYSXRlbUVDdXJyZW5jeVR5cGVfU0lMVkVSEAMSGQoVSXRlbUVDdXJyZW5jeV'
    'R5cGVfRVhQEAQSIQodSXRlbUVDdXJyZW5jeVR5cGVfUE9XRVJfUE9JTlQQBQ==');

@$core.Deprecated('Use itemEItemQualityDescriptor instead')
const ItemEItemQuality$json = {
  '1': 'ItemEItemQuality',
  '2': [
    {'1': 'ItemEItemQuality_WHITE', '2': 0},
    {'1': 'ItemEItemQuality_GREEN', '2': 1},
    {'1': 'ItemEItemQuality_BLUE', '2': 2},
    {'1': 'ItemEItemQuality_PURPLE', '2': 3},
    {'1': 'ItemEItemQuality_GOLDEN', '2': 4},
  ],
};

/// Descriptor for `ItemEItemQuality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEItemQualityDescriptor = $convert.base64Decode(
    'ChBJdGVtRUl0ZW1RdWFsaXR5EhoKFkl0ZW1FSXRlbVF1YWxpdHlfV0hJVEUQABIaChZJdGVtRU'
    'l0ZW1RdWFsaXR5X0dSRUVOEAESGQoVSXRlbUVJdGVtUXVhbGl0eV9CTFVFEAISGwoXSXRlbUVJ'
    'dGVtUXVhbGl0eV9QVVJQTEUQAxIbChdJdGVtRUl0ZW1RdWFsaXR5X0dPTERFThAE');

@$core.Deprecated('Use itemEMajorTypeDescriptor instead')
const ItemEMajorType$json = {
  '1': 'ItemEMajorType',
  '2': [
    {'1': 'ItemEMajorType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemEMajorType_CURRENCY', '2': 1},
    {'1': 'ItemEMajorType_CLOTH', '2': 2},
    {'1': 'ItemEMajorType_QUEST', '2': 3},
    {'1': 'ItemEMajorType_CONSUMABLES', '2': 4},
    {'1': 'ItemEMajorType_TREASURE_BOX', '2': 5},
    {'1': 'ItemEMajorType_ACHIEVEMENT_AND_TITLE', '2': 6},
    {'1': 'ItemEMajorType_HEAD_FRAME', '2': 7},
    {'1': 'ItemEMajorType_VOICE', '2': 8},
    {'1': 'ItemEMajorType_ACTION', '2': 9},
    {'1': 'ItemEMajorType_EXPANSION', '2': 10},
    {'1': 'ItemEMajorType_MATERIAL', '2': 11},
  ],
};

/// Descriptor for `ItemEMajorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEMajorTypeDescriptor = $convert.base64Decode(
    'Cg5JdGVtRU1ham9yVHlwZRIkCiBJdGVtRU1ham9yVHlwZV9FTVBUWV9QTEFDRUhPTERFUhAAEh'
    'sKF0l0ZW1FTWFqb3JUeXBlX0NVUlJFTkNZEAESGAoUSXRlbUVNYWpvclR5cGVfQ0xPVEgQAhIY'
    'ChRJdGVtRU1ham9yVHlwZV9RVUVTVBADEh4KGkl0ZW1FTWFqb3JUeXBlX0NPTlNVTUFCTEVTEA'
    'QSHwobSXRlbUVNYWpvclR5cGVfVFJFQVNVUkVfQk9YEAUSKAokSXRlbUVNYWpvclR5cGVfQUNI'
    'SUVWRU1FTlRfQU5EX1RJVExFEAYSHQoZSXRlbUVNYWpvclR5cGVfSEVBRF9GUkFNRRAHEhgKFE'
    'l0ZW1FTWFqb3JUeXBlX1ZPSUNFEAgSGQoVSXRlbUVNYWpvclR5cGVfQUNUSU9OEAkSHAoYSXRl'
    'bUVNYWpvclR5cGVfRVhQQU5TSU9OEAoSGwoXSXRlbUVNYWpvclR5cGVfTUFURVJJQUwQCw==');

@$core.Deprecated('Use itemEMinorTypeDescriptor instead')
const ItemEMinorType$json = {
  '1': 'ItemEMinorType',
  '2': [
    {'1': 'ItemEMinorType_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'ItemEMinorType_DIAMOND', '2': 101},
    {'1': 'ItemEMinorType_GOLD', '2': 102},
    {'1': 'ItemEMinorType_SILVER', '2': 103},
    {'1': 'ItemEMinorType_EXP', '2': 104},
    {'1': 'ItemEMinorType_POWER_POINT', '2': 105},
    {'1': 'ItemEMinorType_HAIR_STYLE', '2': 210},
    {'1': 'ItemEMinorType_COAT', '2': 220},
    {'1': 'ItemEMinorType_UPPER_JACKET', '2': 230},
    {'1': 'ItemEMinorType_TROUSERS', '2': 241},
    {'1': 'ItemEMinorType_SKIRT', '2': 242},
    {'1': 'ItemEMinorType_SOCKS', '2': 250},
    {'1': 'ItemEMinorType_SHOES', '2': 260},
    {'1': 'ItemEMinorType_HAIR_ACCESSORY', '2': 271},
    {'1': 'ItemEMinorType_HAT', '2': 272},
    {'1': 'ItemEMinorType_EARRING', '2': 273},
    {'1': 'ItemEMinorType_NECKLACE', '2': 274},
    {'1': 'ItemEMinorType_BRACELET', '2': 275},
    {'1': 'ItemEMinorType_HAIR_CLASP', '2': 276},
    {'1': 'ItemEMinorType_GLOVE', '2': 277},
    {'1': 'ItemEMinorType_HANDHELD_OBJECT', '2': 278},
    {'1': 'ItemEMinorType_SPECIAL', '2': 279},
    {'1': 'ItemEMinorType_BASE_COSMETIC', '2': 281},
    {'1': 'ItemEMinorType_EYEBROW_COSMETIC', '2': 282},
    {'1': 'ItemEMinorType_EYELASH', '2': 283},
    {'1': 'ItemEMinorType_COSMETIC_CONTACT_LENSES', '2': 284},
    {'1': 'ItemEMinorType_LIP_COSMETIC', '2': 285},
    {'1': 'ItemEMinorType_SKIN_COLOR', '2': 286},
    {'1': 'ItemEMinorType_ONE_PIECE_DRESS', '2': 290},
    {'1': 'ItemEMinorType_SWITCH_CLOTHES_SCENE', '2': 291},
    {'1': 'ItemEMinorType_QUEST', '2': 301},
    {'1': 'ItemEMinorType_CAST', '2': 401},
    {'1': 'ItemEMinorType_SWORD', '2': 421},
    {'1': 'ItemEMinorType_BOW_ARROW', '2': 422},
    {'1': 'ItemEMinorType_WANDS', '2': 423},
    {'1': 'ItemEMinorType_SPECIAL_TOOL', '2': 424},
    {'1': 'ItemEMinorType_FOOD', '2': 403},
    {'1': 'ItemEMinorType_TREASURE_BOX', '2': 501},
    {'1': 'ItemEMinorType_KEY', '2': 502},
    {'1': 'ItemEMinorType_MULTI_CHOOSE_TREASURE_BOX', '2': 503},
    {'1': 'ItemEMinorType_ACHIEVEMENT', '2': 601},
    {'1': 'ItemEMinorType_TITLE', '2': 602},
    {'1': 'ItemEMinorType_AVATAR_FRAME', '2': 701},
    {'1': 'ItemEMinorType_VOICE', '2': 801},
    {'1': 'ItemEMinorType_IDLE_POSE', '2': 901},
    {'1': 'ItemEMinorType_PHOTO_POSE', '2': 902},
    {'1': 'ItemEMinorType_BAG', '2': 1001},
    {'1': 'ItemEMinorType_FRIEND_CAPACITY', '2': 1002},
    {'1': 'ItemEMinorType_CONSTRUCTION_MATERIAL', '2': 1101},
    {'1': 'ItemEMinorType_DESIGN_DRAWING', '2': 1102},
  ],
};

/// Descriptor for `ItemEMinorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEMinorTypeDescriptor = $convert.base64Decode(
    'Cg5JdGVtRU1pbm9yVHlwZRIkCiBJdGVtRU1pbm9yVHlwZV9FTVBUWV9QTEFDRUhPTERFUhAAEh'
    'oKFkl0ZW1FTWlub3JUeXBlX0RJQU1PTkQQZRIXChNJdGVtRU1pbm9yVHlwZV9HT0xEEGYSGQoV'
    'SXRlbUVNaW5vclR5cGVfU0lMVkVSEGcSFgoSSXRlbUVNaW5vclR5cGVfRVhQEGgSHgoaSXRlbU'
    'VNaW5vclR5cGVfUE9XRVJfUE9JTlQQaRIeChlJdGVtRU1pbm9yVHlwZV9IQUlSX1NUWUxFENIB'
    'EhgKE0l0ZW1FTWlub3JUeXBlX0NPQVQQ3AESIAobSXRlbUVNaW5vclR5cGVfVVBQRVJfSkFDS0'
    'VUEOYBEhwKF0l0ZW1FTWlub3JUeXBlX1RST1VTRVJTEPEBEhkKFEl0ZW1FTWlub3JUeXBlX1NL'
    'SVJUEPIBEhkKFEl0ZW1FTWlub3JUeXBlX1NPQ0tTEPoBEhkKFEl0ZW1FTWlub3JUeXBlX1NIT0'
    'VTEIQCEiIKHUl0ZW1FTWlub3JUeXBlX0hBSVJfQUNDRVNTT1JZEI8CEhcKEkl0ZW1FTWlub3JU'
    'eXBlX0hBVBCQAhIbChZJdGVtRU1pbm9yVHlwZV9FQVJSSU5HEJECEhwKF0l0ZW1FTWlub3JUeX'
    'BlX05FQ0tMQUNFEJICEhwKF0l0ZW1FTWlub3JUeXBlX0JSQUNFTEVUEJMCEh4KGUl0ZW1FTWlu'
    'b3JUeXBlX0hBSVJfQ0xBU1AQlAISGQoUSXRlbUVNaW5vclR5cGVfR0xPVkUQlQISIwoeSXRlbU'
    'VNaW5vclR5cGVfSEFOREhFTERfT0JKRUNUEJYCEhsKFkl0ZW1FTWlub3JUeXBlX1NQRUNJQUwQ'
    'lwISIQocSXRlbUVNaW5vclR5cGVfQkFTRV9DT1NNRVRJQxCZAhIkCh9JdGVtRU1pbm9yVHlwZV'
    '9FWUVCUk9XX0NPU01FVElDEJoCEhsKFkl0ZW1FTWlub3JUeXBlX0VZRUxBU0gQmwISKwomSXRl'
    'bUVNaW5vclR5cGVfQ09TTUVUSUNfQ09OVEFDVF9MRU5TRVMQnAISIAobSXRlbUVNaW5vclR5cG'
    'VfTElQX0NPU01FVElDEJ0CEh4KGUl0ZW1FTWlub3JUeXBlX1NLSU5fQ09MT1IQngISIwoeSXRl'
    'bUVNaW5vclR5cGVfT05FX1BJRUNFX0RSRVNTEKICEigKI0l0ZW1FTWlub3JUeXBlX1NXSVRDSF'
    '9DTE9USEVTX1NDRU5FEKMCEhkKFEl0ZW1FTWlub3JUeXBlX1FVRVNUEK0CEhgKE0l0ZW1FTWlu'
    'b3JUeXBlX0NBU1QQkQMSGQoUSXRlbUVNaW5vclR5cGVfU1dPUkQQpQMSHQoYSXRlbUVNaW5vcl'
    'R5cGVfQk9XX0FSUk9XEKYDEhkKFEl0ZW1FTWlub3JUeXBlX1dBTkRTEKcDEiAKG0l0ZW1FTWlu'
    'b3JUeXBlX1NQRUNJQUxfVE9PTBCoAxIYChNJdGVtRU1pbm9yVHlwZV9GT09EEJMDEiAKG0l0ZW'
    '1FTWlub3JUeXBlX1RSRUFTVVJFX0JPWBD1AxIXChJJdGVtRU1pbm9yVHlwZV9LRVkQ9gMSLQoo'
    'SXRlbUVNaW5vclR5cGVfTVVMVElfQ0hPT1NFX1RSRUFTVVJFX0JPWBD3AxIfChpJdGVtRU1pbm'
    '9yVHlwZV9BQ0hJRVZFTUVOVBDZBBIZChRJdGVtRU1pbm9yVHlwZV9USVRMRRDaBBIgChtJdGVt'
    'RU1pbm9yVHlwZV9BVkFUQVJfRlJBTUUQvQUSGQoUSXRlbUVNaW5vclR5cGVfVk9JQ0UQoQYSHQ'
    'oYSXRlbUVNaW5vclR5cGVfSURMRV9QT1NFEIUHEh4KGUl0ZW1FTWlub3JUeXBlX1BIT1RPX1BP'
    'U0UQhgcSFwoSSXRlbUVNaW5vclR5cGVfQkFHEOkHEiMKHkl0ZW1FTWlub3JUeXBlX0ZSSUVORF'
    '9DQVBBQ0lUWRDqBxIpCiRJdGVtRU1pbm9yVHlwZV9DT05TVFJVQ1RJT05fTUFURVJJQUwQzQgS'
    'IgodSXRlbUVNaW5vclR5cGVfREVTSUdOX0RSQVdJTkcQzgg=');

@$core.Deprecated('Use itemEUseTypeDescriptor instead')
const ItemEUseType$json = {
  '1': 'ItemEUseType',
  '2': [
    {'1': 'ItemEUseType_MANUAL', '2': 0},
    {'1': 'ItemEUseType_AUTO', '2': 1},
  ],
};

/// Descriptor for `ItemEUseType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List itemEUseTypeDescriptor = $convert.base64Decode(
    'CgxJdGVtRVVzZVR5cGUSFwoTSXRlbUVVc2VUeXBlX01BTlVBTBAAEhUKEUl0ZW1FVXNlVHlwZV'
    '9BVVRPEAE=');

@$core.Deprecated('Use testAccessFlagDescriptor instead')
const TestAccessFlag$json = {
  '1': 'TestAccessFlag',
  '2': [
    {'1': 'TestAccessFlag_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'TestAccessFlag_WRITE', '2': 1},
    {'1': 'TestAccessFlag_READ', '2': 2},
    {'1': 'TestAccessFlag_TRUNCATE', '2': 4},
    {'1': 'TestAccessFlag_NEW', '2': 8},
    {'1': 'TestAccessFlag_READ_WRITE', '2': 3},
  ],
};

/// Descriptor for `TestAccessFlag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testAccessFlagDescriptor = $convert.base64Decode(
    'Cg5UZXN0QWNjZXNzRmxhZxIkCiBUZXN0QWNjZXNzRmxhZ19FTVBUWV9QTEFDRUhPTERFUhAAEh'
    'gKFFRlc3RBY2Nlc3NGbGFnX1dSSVRFEAESFwoTVGVzdEFjY2Vzc0ZsYWdfUkVBRBACEhsKF1Rl'
    'c3RBY2Nlc3NGbGFnX1RSVU5DQVRFEAQSFgoSVGVzdEFjY2Vzc0ZsYWdfTkVXEAgSHQoZVGVzdE'
    'FjY2Vzc0ZsYWdfUkVBRF9XUklURRAD');

@$core.Deprecated('Use testAudioType2Descriptor instead')
const TestAudioType2$json = {
  '1': 'TestAudioType2',
  '2': [
    {'1': 'TestAudioType2_UNKNOWN', '2': 0},
    {'1': 'TestAudioType2_ACC', '2': 1},
    {'1': 'TestAudioType2_AIFF', '2': 2},
  ],
};

/// Descriptor for `TestAudioType2`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testAudioType2Descriptor = $convert.base64Decode(
    'Cg5UZXN0QXVkaW9UeXBlMhIaChZUZXN0QXVkaW9UeXBlMl9VTktOT1dOEAASFgoSVGVzdEF1ZG'
    'lvVHlwZTJfQUNDEAESFwoTVGVzdEF1ZGlvVHlwZTJfQUlGRhAC');

@$core.Deprecated('Use testDemoEnumDescriptor instead')
const TestDemoEnum$json = {
  '1': 'TestDemoEnum',
  '2': [
    {'1': 'TestDemoEnum_NONE', '2': 0},
    {'1': 'TestDemoEnum_A', '2': 1},
    {'1': 'TestDemoEnum_B', '2': 2},
    {'1': 'TestDemoEnum_C', '2': 4},
    {'1': 'TestDemoEnum_D', '2': 5},
    {'1': 'TestDemoEnum_Any', '2': 6},
  ],
};

/// Descriptor for `TestDemoEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testDemoEnumDescriptor = $convert.base64Decode(
    'CgxUZXN0RGVtb0VudW0SFQoRVGVzdERlbW9FbnVtX05PTkUQABISCg5UZXN0RGVtb0VudW1fQR'
    'ABEhIKDlRlc3REZW1vRW51bV9CEAISEgoOVGVzdERlbW9FbnVtX0MQBBISCg5UZXN0RGVtb0Vu'
    'dW1fRBAFEhQKEFRlc3REZW1vRW51bV9BbnkQBg==');

@$core.Deprecated('Use testDemoFlagDescriptor instead')
const TestDemoFlag$json = {
  '1': 'TestDemoFlag',
  '2': [
    {'1': 'TestDemoFlag_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'TestDemoFlag_A', '2': 1},
    {'1': 'TestDemoFlag_B', '2': 2},
    {'1': 'TestDemoFlag_C', '2': 4},
    {'1': 'TestDemoFlag_D', '2': 8},
  ],
};

/// Descriptor for `TestDemoFlag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testDemoFlagDescriptor = $convert.base64Decode(
    'CgxUZXN0RGVtb0ZsYWcSIgoeVGVzdERlbW9GbGFnX0VNUFRZX1BMQUNFSE9MREVSEAASEgoOVG'
    'VzdERlbW9GbGFnX0EQARISCg5UZXN0RGVtb0ZsYWdfQhACEhIKDlRlc3REZW1vRmxhZ19DEAQS'
    'EgoOVGVzdERlbW9GbGFnX0QQCA==');

@$core.Deprecated('Use testETestEmptyEnumDescriptor instead')
const TestETestEmptyEnum$json = {
  '1': 'TestETestEmptyEnum',
  '2': [
    {'1': 'TestETestEmptyEnum_EMPTY_PLACEHOLDER', '2': 0},
  ],
};

/// Descriptor for `TestETestEmptyEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testETestEmptyEnumDescriptor = $convert.base64Decode(
    'ChJUZXN0RVRlc3RFbXB0eUVudW0SKAokVGVzdEVUZXN0RW1wdHlFbnVtX0VNUFRZX1BMQUNFSE'
    '9MREVSEAA=');

@$core.Deprecated('Use testETestEmptyEnum2Descriptor instead')
const TestETestEmptyEnum2$json = {
  '1': 'TestETestEmptyEnum2',
  '2': [
    {'1': 'TestETestEmptyEnum2_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'TestETestEmptyEnum2_SMALL_THAN_256', '2': 255},
    {'1': 'TestETestEmptyEnum2_X_256', '2': 256},
    {'1': 'TestETestEmptyEnum2_X_257', '2': 257},
  ],
};

/// Descriptor for `TestETestEmptyEnum2`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testETestEmptyEnum2Descriptor = $convert.base64Decode(
    'ChNUZXN0RVRlc3RFbXB0eUVudW0yEikKJVRlc3RFVGVzdEVtcHR5RW51bTJfRU1QVFlfUExBQ0'
    'VIT0xERVIQABInCiJUZXN0RVRlc3RFbXB0eUVudW0yX1NNQUxMX1RIQU5fMjU2EP8BEh4KGVRl'
    'c3RFVGVzdEVtcHR5RW51bTJfWF8yNTYQgAISHgoZVGVzdEVUZXN0RW1wdHlFbnVtMl9YXzI1Nx'
    'CBAg==');

@$core.Deprecated('Use testETestQualityDescriptor instead')
const TestETestQuality$json = {
  '1': 'TestETestQuality',
  '2': [
    {'1': 'TestETestQuality_EMPTY_PLACEHOLDER', '2': 0},
    {'1': 'TestETestQuality_A', '2': 1},
    {'1': 'TestETestQuality_B', '2': 2},
    {'1': 'TestETestQuality_C', '2': 3},
    {'1': 'TestETestQuality_D', '2': 4},
  ],
};

/// Descriptor for `TestETestQuality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testETestQualityDescriptor = $convert.base64Decode(
    'ChBUZXN0RVRlc3RRdWFsaXR5EiYKIlRlc3RFVGVzdFF1YWxpdHlfRU1QVFlfUExBQ0VIT0xERV'
    'IQABIWChJUZXN0RVRlc3RRdWFsaXR5X0EQARIWChJUZXN0RVRlc3RRdWFsaXR5X0IQAhIWChJU'
    'ZXN0RVRlc3RRdWFsaXR5X0MQAxIWChJUZXN0RVRlc3RRdWFsaXR5X0QQBA==');

@$core.Deprecated('Use testETestUeTypeDescriptor instead')
const TestETestUeType$json = {
  '1': 'TestETestUeType',
  '2': [
    {'1': 'TestETestUeType_WHITE', '2': 0},
    {'1': 'TestETestUeType_BLACK', '2': 1},
  ],
};

/// Descriptor for `TestETestUeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testETestUeTypeDescriptor = $convert.base64Decode(
    'Cg9UZXN0RVRlc3RVZVR5cGUSGQoVVGVzdEVUZXN0VWVUeXBlX1dISVRFEAASGQoVVGVzdEVUZX'
    'N0VWVUeXBlX0JMQUNLEAE=');

@$core.Deprecated('Use aiBehaviorTreeDescriptor instead')
const AiBehaviorTree$json = {
  '1': 'AiBehaviorTree',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'blackboard_id', '3': 4, '4': 1, '5': 9, '10': 'blackboardId'},
    {'1': 'root', '3': 5, '4': 1, '5': 11, '6': '.cfg.AiComposeNode', '10': 'root'},
  ],
};

/// Descriptor for `AiBehaviorTree`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiBehaviorTreeDescriptor = $convert.base64Decode(
    'Cg5BaUJlaGF2aW9yVHJlZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCg'
    'RkZXNjGAMgASgJUgRkZXNjEiMKDWJsYWNrYm9hcmRfaWQYBCABKAlSDGJsYWNrYm9hcmRJZBIm'
    'CgRyb290GAUgASgLMhIuY2ZnLkFpQ29tcG9zZU5vZGVSBHJvb3Q=');

@$core.Deprecated('Use aiBlackboardDescriptor instead')
const AiBlackboard$json = {
  '1': 'AiBlackboard',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'parent_name', '3': 3, '4': 1, '5': 9, '10': 'parentName'},
    {
      '1': 'keys',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiBlackboardKey',
      '8': {'2': false},
      '10': 'keys',
    },
  ],
};

/// Descriptor for `AiBlackboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiBlackboardDescriptor = $convert.base64Decode(
    'CgxBaUJsYWNrYm9hcmQSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRkZXNjGAIgASgJUgRkZXNjEh'
    '8KC3BhcmVudF9uYW1lGAMgASgJUgpwYXJlbnROYW1lEiwKBGtleXMYBCADKAsyFC5jZmcuQWlC'
    'bGFja2JvYXJkS2V5QgIQAFIEa2V5cw==');

@$core.Deprecated('Use aiBlackboardKeyDescriptor instead')
const AiBlackboardKey$json = {
  '1': 'AiBlackboardKey',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'is_static', '3': 3, '4': 1, '5': 8, '10': 'isStatic'},
    {'1': 'key_type', '3': 4, '4': 1, '5': 14, '6': '.cfg.AiEKeyType', '10': 'keyType'},
    {'1': 'type_class_name', '3': 5, '4': 1, '5': 9, '10': 'typeClassName'},
  ],
};

/// Descriptor for `AiBlackboardKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiBlackboardKeyDescriptor = $convert.base64Decode(
    'Cg9BaUJsYWNrYm9hcmRLZXkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRkZXNjGAIgASgJUgRkZX'
    'NjEhsKCWlzX3N0YXRpYxgDIAEoCFIIaXNTdGF0aWMSKgoIa2V5X3R5cGUYBCABKA4yDy5jZmcu'
    'QWlFS2V5VHlwZVIHa2V5VHlwZRImCg90eXBlX2NsYXNzX25hbWUYBSABKAlSDXR5cGVDbGFzc0'
    '5hbWU=');

@$core.Deprecated('Use aiKeyDataDescriptor instead')
const AiKeyData$json = {
  '1': 'AiKeyData',
  '2': [
    {'1': 'FloatKeyData', '3': 1, '4': 1, '5': 11, '6': '.cfg.AiFloatKeyData', '9': 0, '10': 'FloatKeyData'},
    {'1': 'IntKeyData', '3': 2, '4': 1, '5': 11, '6': '.cfg.AiIntKeyData', '9': 0, '10': 'IntKeyData'},
    {'1': 'StringKeyData', '3': 3, '4': 1, '5': 11, '6': '.cfg.AiStringKeyData', '9': 0, '10': 'StringKeyData'},
    {'1': 'BlackboardKeyData', '3': 4, '4': 1, '5': 11, '6': '.cfg.AiBlackboardKeyData', '9': 0, '10': 'BlackboardKeyData'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiKeyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiKeyDataDescriptor = $convert.base64Decode(
    'CglBaUtleURhdGESOQoMRmxvYXRLZXlEYXRhGAEgASgLMhMuY2ZnLkFpRmxvYXRLZXlEYXRhSA'
    'BSDEZsb2F0S2V5RGF0YRIzCgpJbnRLZXlEYXRhGAIgASgLMhEuY2ZnLkFpSW50S2V5RGF0YUgA'
    'UgpJbnRLZXlEYXRhEjwKDVN0cmluZ0tleURhdGEYAyABKAsyFC5jZmcuQWlTdHJpbmdLZXlEYX'
    'RhSABSDVN0cmluZ0tleURhdGESSAoRQmxhY2tib2FyZEtleURhdGEYBCABKAsyGC5jZmcuQWlC'
    'bGFja2JvYXJkS2V5RGF0YUgAUhFCbGFja2JvYXJkS2V5RGF0YUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use aiBlackboardKeyDataDescriptor instead')
const AiBlackboardKeyData$json = {
  '1': 'AiBlackboardKeyData',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `AiBlackboardKeyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiBlackboardKeyDataDescriptor = $convert.base64Decode(
    'ChNBaUJsYWNrYm9hcmRLZXlEYXRhEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use aiFloatKeyDataDescriptor instead')
const AiFloatKeyData$json = {
  '1': 'AiFloatKeyData',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `AiFloatKeyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiFloatKeyDataDescriptor = $convert.base64Decode(
    'Cg5BaUZsb2F0S2V5RGF0YRIUCgV2YWx1ZRgBIAEoAlIFdmFsdWU=');

@$core.Deprecated('Use aiIntKeyDataDescriptor instead')
const AiIntKeyData$json = {
  '1': 'AiIntKeyData',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `AiIntKeyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiIntKeyDataDescriptor = $convert.base64Decode(
    'CgxBaUludEtleURhdGESFAoFdmFsdWUYASABKAVSBXZhbHVl');

@$core.Deprecated('Use aiStringKeyDataDescriptor instead')
const AiStringKeyData$json = {
  '1': 'AiStringKeyData',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `AiStringKeyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiStringKeyDataDescriptor = $convert.base64Decode(
    'Cg9BaVN0cmluZ0tleURhdGESFAoFdmFsdWUYASABKAlSBXZhbHVl');

@$core.Deprecated('Use aiKeyQueryOperatorDescriptor instead')
const AiKeyQueryOperator$json = {
  '1': 'AiKeyQueryOperator',
  '2': [
    {'1': 'IsSet2', '3': 1, '4': 1, '5': 11, '6': '.cfg.AiIsSet2', '9': 0, '10': 'IsSet2'},
    {'1': 'IsNotSet', '3': 2, '4': 1, '5': 11, '6': '.cfg.AiIsNotSet', '9': 0, '10': 'IsNotSet'},
    {'1': 'BinaryOperator', '3': 3, '4': 1, '5': 11, '6': '.cfg.AiBinaryOperator', '9': 0, '10': 'BinaryOperator'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiKeyQueryOperator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiKeyQueryOperatorDescriptor = $convert.base64Decode(
    'ChJBaUtleVF1ZXJ5T3BlcmF0b3ISJwoGSXNTZXQyGAEgASgLMg0uY2ZnLkFpSXNTZXQySABSBk'
    'lzU2V0MhItCghJc05vdFNldBgCIAEoCzIPLmNmZy5BaUlzTm90U2V0SABSCElzTm90U2V0Ej8K'
    'DkJpbmFyeU9wZXJhdG9yGAMgASgLMhUuY2ZnLkFpQmluYXJ5T3BlcmF0b3JIAFIOQmluYXJ5T3'
    'BlcmF0b3JCBwoFdmFsdWU=');

@$core.Deprecated('Use aiBinaryOperatorDescriptor instead')
const AiBinaryOperator$json = {
  '1': 'AiBinaryOperator',
  '2': [
    {'1': 'oper', '3': 1, '4': 1, '5': 14, '6': '.cfg.AiEOperator', '10': 'oper'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.cfg.AiKeyData', '10': 'data'},
  ],
};

/// Descriptor for `AiBinaryOperator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiBinaryOperatorDescriptor = $convert.base64Decode(
    'ChBBaUJpbmFyeU9wZXJhdG9yEiQKBG9wZXIYASABKA4yEC5jZmcuQWlFT3BlcmF0b3JSBG9wZX'
    'ISIgoEZGF0YRgCIAEoCzIOLmNmZy5BaUtleURhdGFSBGRhdGE=');

@$core.Deprecated('Use aiIsNotSetDescriptor instead')
const AiIsNotSet$json = {
  '1': 'AiIsNotSet',
};

/// Descriptor for `AiIsNotSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiIsNotSetDescriptor = $convert.base64Decode(
    'CgpBaUlzTm90U2V0');

@$core.Deprecated('Use aiIsSet2Descriptor instead')
const AiIsSet2$json = {
  '1': 'AiIsSet2',
};

/// Descriptor for `AiIsSet2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiIsSet2Descriptor = $convert.base64Decode(
    'CghBaUlzU2V0Mg==');

@$core.Deprecated('Use aiNodeDescriptor instead')
const AiNode$json = {
  '1': 'AiNode',
  '2': [
    {'1': 'UeSetDefaultFocus', '3': 1, '4': 1, '5': 11, '6': '.cfg.AiUeSetDefaultFocus', '9': 0, '10': 'UeSetDefaultFocus'},
    {'1': 'ExecuteTimeStatistic', '3': 2, '4': 1, '5': 11, '6': '.cfg.AiExecuteTimeStatistic', '9': 0, '10': 'ExecuteTimeStatistic'},
    {'1': 'ChooseTarget', '3': 3, '4': 1, '5': 11, '6': '.cfg.AiChooseTarget', '9': 0, '10': 'ChooseTarget'},
    {'1': 'KeepFaceTarget', '3': 4, '4': 1, '5': 11, '6': '.cfg.AiKeepFaceTarget', '9': 0, '10': 'KeepFaceTarget'},
    {'1': 'GetOwnerPlayer', '3': 5, '4': 1, '5': 11, '6': '.cfg.AiGetOwnerPlayer', '9': 0, '10': 'GetOwnerPlayer'},
    {'1': 'UpdateDailyBehaviorProps', '3': 6, '4': 1, '5': 11, '6': '.cfg.AiUpdateDailyBehaviorProps', '9': 0, '10': 'UpdateDailyBehaviorProps'},
    {'1': 'UeLoop', '3': 7, '4': 1, '5': 11, '6': '.cfg.AiUeLoop', '9': 0, '10': 'UeLoop'},
    {'1': 'UeCooldown', '3': 8, '4': 1, '5': 11, '6': '.cfg.AiUeCooldown', '9': 0, '10': 'UeCooldown'},
    {'1': 'UeTimeLimit', '3': 9, '4': 1, '5': 11, '6': '.cfg.AiUeTimeLimit', '9': 0, '10': 'UeTimeLimit'},
    {'1': 'UeBlackboard', '3': 10, '4': 1, '5': 11, '6': '.cfg.AiUeBlackboard', '9': 0, '10': 'UeBlackboard'},
    {'1': 'UeForceSuccess', '3': 11, '4': 1, '5': 11, '6': '.cfg.AiUeForceSuccess', '9': 0, '10': 'UeForceSuccess'},
    {'1': 'IsAtLocation', '3': 12, '4': 1, '5': 11, '6': '.cfg.AiIsAtLocation', '9': 0, '10': 'IsAtLocation'},
    {'1': 'DistanceLessThan', '3': 13, '4': 1, '5': 11, '6': '.cfg.AiDistanceLessThan', '9': 0, '10': 'DistanceLessThan'},
    {'1': 'Sequence', '3': 14, '4': 1, '5': 11, '6': '.cfg.AiSequence', '9': 0, '10': 'Sequence'},
    {'1': 'Selector', '3': 15, '4': 1, '5': 11, '6': '.cfg.AiSelector', '9': 0, '10': 'Selector'},
    {'1': 'SimpleParallel', '3': 16, '4': 1, '5': 11, '6': '.cfg.AiSimpleParallel', '9': 0, '10': 'SimpleParallel'},
    {'1': 'UeWait', '3': 17, '4': 1, '5': 11, '6': '.cfg.AiUeWait', '9': 0, '10': 'UeWait'},
    {'1': 'UeWaitBlackboardTime', '3': 18, '4': 1, '5': 11, '6': '.cfg.AiUeWaitBlackboardTime', '9': 0, '10': 'UeWaitBlackboardTime'},
    {'1': 'MoveToTarget', '3': 19, '4': 1, '5': 11, '6': '.cfg.AiMoveToTarget', '9': 0, '10': 'MoveToTarget'},
    {'1': 'ChooseSkill', '3': 20, '4': 1, '5': 11, '6': '.cfg.AiChooseSkill', '9': 0, '10': 'ChooseSkill'},
    {'1': 'MoveToRandomLocation', '3': 21, '4': 1, '5': 11, '6': '.cfg.AiMoveToRandomLocation', '9': 0, '10': 'MoveToRandomLocation'},
    {'1': 'MoveToLocation', '3': 22, '4': 1, '5': 11, '6': '.cfg.AiMoveToLocation', '9': 0, '10': 'MoveToLocation'},
    {'1': 'DebugPrint', '3': 23, '4': 1, '5': 11, '6': '.cfg.AiDebugPrint', '9': 0, '10': 'DebugPrint'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiNodeDescriptor = $convert.base64Decode(
    'CgZBaU5vZGUSSAoRVWVTZXREZWZhdWx0Rm9jdXMYASABKAsyGC5jZmcuQWlVZVNldERlZmF1bH'
    'RGb2N1c0gAUhFVZVNldERlZmF1bHRGb2N1cxJRChRFeGVjdXRlVGltZVN0YXRpc3RpYxgCIAEo'
    'CzIbLmNmZy5BaUV4ZWN1dGVUaW1lU3RhdGlzdGljSABSFEV4ZWN1dGVUaW1lU3RhdGlzdGljEj'
    'kKDENob29zZVRhcmdldBgDIAEoCzITLmNmZy5BaUNob29zZVRhcmdldEgAUgxDaG9vc2VUYXJn'
    'ZXQSPwoOS2VlcEZhY2VUYXJnZXQYBCABKAsyFS5jZmcuQWlLZWVwRmFjZVRhcmdldEgAUg5LZW'
    'VwRmFjZVRhcmdldBI/Cg5HZXRPd25lclBsYXllchgFIAEoCzIVLmNmZy5BaUdldE93bmVyUGxh'
    'eWVySABSDkdldE93bmVyUGxheWVyEl0KGFVwZGF0ZURhaWx5QmVoYXZpb3JQcm9wcxgGIAEoCz'
    'IfLmNmZy5BaVVwZGF0ZURhaWx5QmVoYXZpb3JQcm9wc0gAUhhVcGRhdGVEYWlseUJlaGF2aW9y'
    'UHJvcHMSJwoGVWVMb29wGAcgASgLMg0uY2ZnLkFpVWVMb29wSABSBlVlTG9vcBIzCgpVZUNvb2'
    'xkb3duGAggASgLMhEuY2ZnLkFpVWVDb29sZG93bkgAUgpVZUNvb2xkb3duEjYKC1VlVGltZUxp'
    'bWl0GAkgASgLMhIuY2ZnLkFpVWVUaW1lTGltaXRIAFILVWVUaW1lTGltaXQSOQoMVWVCbGFja2'
    'JvYXJkGAogASgLMhMuY2ZnLkFpVWVCbGFja2JvYXJkSABSDFVlQmxhY2tib2FyZBI/Cg5VZUZv'
    'cmNlU3VjY2VzcxgLIAEoCzIVLmNmZy5BaVVlRm9yY2VTdWNjZXNzSABSDlVlRm9yY2VTdWNjZX'
    'NzEjkKDElzQXRMb2NhdGlvbhgMIAEoCzITLmNmZy5BaUlzQXRMb2NhdGlvbkgAUgxJc0F0TG9j'
    'YXRpb24SRQoQRGlzdGFuY2VMZXNzVGhhbhgNIAEoCzIXLmNmZy5BaURpc3RhbmNlTGVzc1RoYW'
    '5IAFIQRGlzdGFuY2VMZXNzVGhhbhItCghTZXF1ZW5jZRgOIAEoCzIPLmNmZy5BaVNlcXVlbmNl'
    'SABSCFNlcXVlbmNlEi0KCFNlbGVjdG9yGA8gASgLMg8uY2ZnLkFpU2VsZWN0b3JIAFIIU2VsZW'
    'N0b3ISPwoOU2ltcGxlUGFyYWxsZWwYECABKAsyFS5jZmcuQWlTaW1wbGVQYXJhbGxlbEgAUg5T'
    'aW1wbGVQYXJhbGxlbBInCgZVZVdhaXQYESABKAsyDS5jZmcuQWlVZVdhaXRIAFIGVWVXYWl0El'
    'EKFFVlV2FpdEJsYWNrYm9hcmRUaW1lGBIgASgLMhsuY2ZnLkFpVWVXYWl0QmxhY2tib2FyZFRp'
    'bWVIAFIUVWVXYWl0QmxhY2tib2FyZFRpbWUSOQoMTW92ZVRvVGFyZ2V0GBMgASgLMhMuY2ZnLk'
    'FpTW92ZVRvVGFyZ2V0SABSDE1vdmVUb1RhcmdldBI2CgtDaG9vc2VTa2lsbBgUIAEoCzISLmNm'
    'Zy5BaUNob29zZVNraWxsSABSC0Nob29zZVNraWxsElEKFE1vdmVUb1JhbmRvbUxvY2F0aW9uGB'
    'UgASgLMhsuY2ZnLkFpTW92ZVRvUmFuZG9tTG9jYXRpb25IAFIUTW92ZVRvUmFuZG9tTG9jYXRp'
    'b24SPwoOTW92ZVRvTG9jYXRpb24YFiABKAsyFS5jZmcuQWlNb3ZlVG9Mb2NhdGlvbkgAUg5Nb3'
    'ZlVG9Mb2NhdGlvbhIzCgpEZWJ1Z1ByaW50GBcgASgLMhEuY2ZnLkFpRGVidWdQcmludEgAUgpE'
    'ZWJ1Z1ByaW50QgcKBXZhbHVl');

@$core.Deprecated('Use aiDecoratorDescriptor instead')
const AiDecorator$json = {
  '1': 'AiDecorator',
  '2': [
    {'1': 'UeLoop', '3': 7, '4': 1, '5': 11, '6': '.cfg.AiUeLoop', '9': 0, '10': 'UeLoop'},
    {'1': 'UeCooldown', '3': 8, '4': 1, '5': 11, '6': '.cfg.AiUeCooldown', '9': 0, '10': 'UeCooldown'},
    {'1': 'UeTimeLimit', '3': 9, '4': 1, '5': 11, '6': '.cfg.AiUeTimeLimit', '9': 0, '10': 'UeTimeLimit'},
    {'1': 'UeBlackboard', '3': 10, '4': 1, '5': 11, '6': '.cfg.AiUeBlackboard', '9': 0, '10': 'UeBlackboard'},
    {'1': 'UeForceSuccess', '3': 11, '4': 1, '5': 11, '6': '.cfg.AiUeForceSuccess', '9': 0, '10': 'UeForceSuccess'},
    {'1': 'IsAtLocation', '3': 12, '4': 1, '5': 11, '6': '.cfg.AiIsAtLocation', '9': 0, '10': 'IsAtLocation'},
    {'1': 'DistanceLessThan', '3': 13, '4': 1, '5': 11, '6': '.cfg.AiDistanceLessThan', '9': 0, '10': 'DistanceLessThan'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiDecorator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiDecoratorDescriptor = $convert.base64Decode(
    'CgtBaURlY29yYXRvchInCgZVZUxvb3AYByABKAsyDS5jZmcuQWlVZUxvb3BIAFIGVWVMb29wEj'
    'MKClVlQ29vbGRvd24YCCABKAsyES5jZmcuQWlVZUNvb2xkb3duSABSClVlQ29vbGRvd24SNgoL'
    'VWVUaW1lTGltaXQYCSABKAsyEi5jZmcuQWlVZVRpbWVMaW1pdEgAUgtVZVRpbWVMaW1pdBI5Cg'
    'xVZUJsYWNrYm9hcmQYCiABKAsyEy5jZmcuQWlVZUJsYWNrYm9hcmRIAFIMVWVCbGFja2JvYXJk'
    'Ej8KDlVlRm9yY2VTdWNjZXNzGAsgASgLMhUuY2ZnLkFpVWVGb3JjZVN1Y2Nlc3NIAFIOVWVGb3'
    'JjZVN1Y2Nlc3MSOQoMSXNBdExvY2F0aW9uGAwgASgLMhMuY2ZnLkFpSXNBdExvY2F0aW9uSABS'
    'DElzQXRMb2NhdGlvbhJFChBEaXN0YW5jZUxlc3NUaGFuGA0gASgLMhcuY2ZnLkFpRGlzdGFuY2'
    'VMZXNzVGhhbkgAUhBEaXN0YW5jZUxlc3NUaGFuQgcKBXZhbHVl');

@$core.Deprecated('Use aiDistanceLessThanDescriptor instead')
const AiDistanceLessThan$json = {
  '1': 'AiDistanceLessThan',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'actor1_key', '3': 4, '4': 1, '5': 9, '10': 'actor1Key'},
    {'1': 'actor2_key', '3': 5, '4': 1, '5': 9, '10': 'actor2Key'},
    {'1': 'distance', '3': 6, '4': 1, '5': 2, '10': 'distance'},
    {'1': 'reverse_result', '3': 7, '4': 1, '5': 8, '10': 'reverseResult'},
  ],
};

/// Descriptor for `AiDistanceLessThan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiDistanceLessThanDescriptor = $convert.base64Decode(
    'ChJBaURpc3RhbmNlTGVzc1RoYW4SDgoCaWQYASABKAVSAmlkEhsKCW5vZGVfbmFtZRgCIAEoCV'
    'IIbm9kZU5hbWUSPQoPZmxvd19hYm9ydF9tb2RlGAMgASgOMhUuY2ZnLkFpRUZsb3dBYm9ydE1v'
    'ZGVSDWZsb3dBYm9ydE1vZGUSHQoKYWN0b3IxX2tleRgEIAEoCVIJYWN0b3IxS2V5Eh0KCmFjdG'
    '9yMl9rZXkYBSABKAlSCWFjdG9yMktleRIaCghkaXN0YW5jZRgGIAEoAlIIZGlzdGFuY2USJQoO'
    'cmV2ZXJzZV9yZXN1bHQYByABKAhSDXJldmVyc2VSZXN1bHQ=');

@$core.Deprecated('Use aiIsAtLocationDescriptor instead')
const AiIsAtLocation$json = {
  '1': 'AiIsAtLocation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'acceptable_radius', '3': 4, '4': 1, '5': 2, '10': 'acceptableRadius'},
    {'1': 'keyboard_key', '3': 5, '4': 1, '5': 9, '10': 'keyboardKey'},
    {'1': 'inverse_condition', '3': 6, '4': 1, '5': 8, '10': 'inverseCondition'},
  ],
};

/// Descriptor for `AiIsAtLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiIsAtLocationDescriptor = $convert.base64Decode(
    'Cg5BaUlzQXRMb2NhdGlvbhIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2'
    'RlTmFtZRI9Cg9mbG93X2Fib3J0X21vZGUYAyABKA4yFS5jZmcuQWlFRmxvd0Fib3J0TW9kZVIN'
    'Zmxvd0Fib3J0TW9kZRIrChFhY2NlcHRhYmxlX3JhZGl1cxgEIAEoAlIQYWNjZXB0YWJsZVJhZG'
    'l1cxIhCgxrZXlib2FyZF9rZXkYBSABKAlSC2tleWJvYXJkS2V5EisKEWludmVyc2VfY29uZGl0'
    'aW9uGAYgASgIUhBpbnZlcnNlQ29uZGl0aW9u');

@$core.Deprecated('Use aiUeBlackboardDescriptor instead')
const AiUeBlackboard$json = {
  '1': 'AiUeBlackboard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'notify_observer', '3': 4, '4': 1, '5': 14, '6': '.cfg.AiENotifyObserverMode', '10': 'notifyObserver'},
    {'1': 'blackboard_key', '3': 5, '4': 1, '5': 9, '10': 'blackboardKey'},
    {'1': 'key_query', '3': 6, '4': 1, '5': 11, '6': '.cfg.AiKeyQueryOperator', '10': 'keyQuery'},
  ],
};

/// Descriptor for `AiUeBlackboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeBlackboardDescriptor = $convert.base64Decode(
    'Cg5BaVVlQmxhY2tib2FyZBIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2'
    'RlTmFtZRI9Cg9mbG93X2Fib3J0X21vZGUYAyABKA4yFS5jZmcuQWlFRmxvd0Fib3J0TW9kZVIN'
    'Zmxvd0Fib3J0TW9kZRJDCg9ub3RpZnlfb2JzZXJ2ZXIYBCABKA4yGi5jZmcuQWlFTm90aWZ5T2'
    'JzZXJ2ZXJNb2RlUg5ub3RpZnlPYnNlcnZlchIlCg5ibGFja2JvYXJkX2tleRgFIAEoCVINYmxh'
    'Y2tib2FyZEtleRI0CglrZXlfcXVlcnkYBiABKAsyFy5jZmcuQWlLZXlRdWVyeU9wZXJhdG9yUg'
    'hrZXlRdWVyeQ==');

@$core.Deprecated('Use aiUeCooldownDescriptor instead')
const AiUeCooldown$json = {
  '1': 'AiUeCooldown',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'cooldown_time', '3': 4, '4': 1, '5': 2, '10': 'cooldownTime'},
  ],
};

/// Descriptor for `AiUeCooldown`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeCooldownDescriptor = $convert.base64Decode(
    'CgxBaVVlQ29vbGRvd24SDgoCaWQYASABKAVSAmlkEhsKCW5vZGVfbmFtZRgCIAEoCVIIbm9kZU'
    '5hbWUSPQoPZmxvd19hYm9ydF9tb2RlGAMgASgOMhUuY2ZnLkFpRUZsb3dBYm9ydE1vZGVSDWZs'
    'b3dBYm9ydE1vZGUSIwoNY29vbGRvd25fdGltZRgEIAEoAlIMY29vbGRvd25UaW1l');

@$core.Deprecated('Use aiUeForceSuccessDescriptor instead')
const AiUeForceSuccess$json = {
  '1': 'AiUeForceSuccess',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
  ],
};

/// Descriptor for `AiUeForceSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeForceSuccessDescriptor = $convert.base64Decode(
    'ChBBaVVlRm9yY2VTdWNjZXNzEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG'
    '5vZGVOYW1lEj0KD2Zsb3dfYWJvcnRfbW9kZRgDIAEoDjIVLmNmZy5BaUVGbG93QWJvcnRNb2Rl'
    'Ug1mbG93QWJvcnRNb2Rl');

@$core.Deprecated('Use aiUeLoopDescriptor instead')
const AiUeLoop$json = {
  '1': 'AiUeLoop',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'num_loops', '3': 4, '4': 1, '5': 5, '10': 'numLoops'},
    {'1': 'infinite_loop', '3': 5, '4': 1, '5': 8, '10': 'infiniteLoop'},
    {'1': 'infinite_loop_timeout_time', '3': 6, '4': 1, '5': 2, '10': 'infiniteLoopTimeoutTime'},
  ],
};

/// Descriptor for `AiUeLoop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeLoopDescriptor = $convert.base64Decode(
    'CghBaVVlTG9vcBIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2RlTmFtZR'
    'I9Cg9mbG93X2Fib3J0X21vZGUYAyABKA4yFS5jZmcuQWlFRmxvd0Fib3J0TW9kZVINZmxvd0Fi'
    'b3J0TW9kZRIbCgludW1fbG9vcHMYBCABKAVSCG51bUxvb3BzEiMKDWluZmluaXRlX2xvb3AYBS'
    'ABKAhSDGluZmluaXRlTG9vcBI7ChppbmZpbml0ZV9sb29wX3RpbWVvdXRfdGltZRgGIAEoAlIX'
    'aW5maW5pdGVMb29wVGltZW91dFRpbWU=');

@$core.Deprecated('Use aiUeTimeLimitDescriptor instead')
const AiUeTimeLimit$json = {
  '1': 'AiUeTimeLimit',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'flow_abort_mode', '3': 3, '4': 1, '5': 14, '6': '.cfg.AiEFlowAbortMode', '10': 'flowAbortMode'},
    {'1': 'limit_time', '3': 4, '4': 1, '5': 2, '10': 'limitTime'},
  ],
};

/// Descriptor for `AiUeTimeLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeTimeLimitDescriptor = $convert.base64Decode(
    'Cg1BaVVlVGltZUxpbWl0Eg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG5vZG'
    'VOYW1lEj0KD2Zsb3dfYWJvcnRfbW9kZRgDIAEoDjIVLmNmZy5BaUVGbG93QWJvcnRNb2RlUg1m'
    'bG93QWJvcnRNb2RlEh0KCmxpbWl0X3RpbWUYBCABKAJSCWxpbWl0VGltZQ==');

@$core.Deprecated('Use aiFlowNodeDescriptor instead')
const AiFlowNode$json = {
  '1': 'AiFlowNode',
  '2': [
    {'1': 'Sequence', '3': 14, '4': 1, '5': 11, '6': '.cfg.AiSequence', '9': 0, '10': 'Sequence'},
    {'1': 'Selector', '3': 15, '4': 1, '5': 11, '6': '.cfg.AiSelector', '9': 0, '10': 'Selector'},
    {'1': 'SimpleParallel', '3': 16, '4': 1, '5': 11, '6': '.cfg.AiSimpleParallel', '9': 0, '10': 'SimpleParallel'},
    {'1': 'UeWait', '3': 17, '4': 1, '5': 11, '6': '.cfg.AiUeWait', '9': 0, '10': 'UeWait'},
    {'1': 'UeWaitBlackboardTime', '3': 18, '4': 1, '5': 11, '6': '.cfg.AiUeWaitBlackboardTime', '9': 0, '10': 'UeWaitBlackboardTime'},
    {'1': 'MoveToTarget', '3': 19, '4': 1, '5': 11, '6': '.cfg.AiMoveToTarget', '9': 0, '10': 'MoveToTarget'},
    {'1': 'ChooseSkill', '3': 20, '4': 1, '5': 11, '6': '.cfg.AiChooseSkill', '9': 0, '10': 'ChooseSkill'},
    {'1': 'MoveToRandomLocation', '3': 21, '4': 1, '5': 11, '6': '.cfg.AiMoveToRandomLocation', '9': 0, '10': 'MoveToRandomLocation'},
    {'1': 'MoveToLocation', '3': 22, '4': 1, '5': 11, '6': '.cfg.AiMoveToLocation', '9': 0, '10': 'MoveToLocation'},
    {'1': 'DebugPrint', '3': 23, '4': 1, '5': 11, '6': '.cfg.AiDebugPrint', '9': 0, '10': 'DebugPrint'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiFlowNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiFlowNodeDescriptor = $convert.base64Decode(
    'CgpBaUZsb3dOb2RlEi0KCFNlcXVlbmNlGA4gASgLMg8uY2ZnLkFpU2VxdWVuY2VIAFIIU2VxdW'
    'VuY2USLQoIU2VsZWN0b3IYDyABKAsyDy5jZmcuQWlTZWxlY3RvckgAUghTZWxlY3RvchI/Cg5T'
    'aW1wbGVQYXJhbGxlbBgQIAEoCzIVLmNmZy5BaVNpbXBsZVBhcmFsbGVsSABSDlNpbXBsZVBhcm'
    'FsbGVsEicKBlVlV2FpdBgRIAEoCzINLmNmZy5BaVVlV2FpdEgAUgZVZVdhaXQSUQoUVWVXYWl0'
    'QmxhY2tib2FyZFRpbWUYEiABKAsyGy5jZmcuQWlVZVdhaXRCbGFja2JvYXJkVGltZUgAUhRVZV'
    'dhaXRCbGFja2JvYXJkVGltZRI5CgxNb3ZlVG9UYXJnZXQYEyABKAsyEy5jZmcuQWlNb3ZlVG9U'
    'YXJnZXRIAFIMTW92ZVRvVGFyZ2V0EjYKC0Nob29zZVNraWxsGBQgASgLMhIuY2ZnLkFpQ2hvb3'
    'NlU2tpbGxIAFILQ2hvb3NlU2tpbGwSUQoUTW92ZVRvUmFuZG9tTG9jYXRpb24YFSABKAsyGy5j'
    'ZmcuQWlNb3ZlVG9SYW5kb21Mb2NhdGlvbkgAUhRNb3ZlVG9SYW5kb21Mb2NhdGlvbhI/Cg5Nb3'
    'ZlVG9Mb2NhdGlvbhgWIAEoCzIVLmNmZy5BaU1vdmVUb0xvY2F0aW9uSABSDk1vdmVUb0xvY2F0'
    'aW9uEjMKCkRlYnVnUHJpbnQYFyABKAsyES5jZmcuQWlEZWJ1Z1ByaW50SABSCkRlYnVnUHJpbn'
    'RCBwoFdmFsdWU=');

@$core.Deprecated('Use aiComposeNodeDescriptor instead')
const AiComposeNode$json = {
  '1': 'AiComposeNode',
  '2': [
    {'1': 'Sequence', '3': 14, '4': 1, '5': 11, '6': '.cfg.AiSequence', '9': 0, '10': 'Sequence'},
    {'1': 'Selector', '3': 15, '4': 1, '5': 11, '6': '.cfg.AiSelector', '9': 0, '10': 'Selector'},
    {'1': 'SimpleParallel', '3': 16, '4': 1, '5': 11, '6': '.cfg.AiSimpleParallel', '9': 0, '10': 'SimpleParallel'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiComposeNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiComposeNodeDescriptor = $convert.base64Decode(
    'Cg1BaUNvbXBvc2VOb2RlEi0KCFNlcXVlbmNlGA4gASgLMg8uY2ZnLkFpU2VxdWVuY2VIAFIIU2'
    'VxdWVuY2USLQoIU2VsZWN0b3IYDyABKAsyDy5jZmcuQWlTZWxlY3RvckgAUghTZWxlY3RvchI/'
    'Cg5TaW1wbGVQYXJhbGxlbBgQIAEoCzIVLmNmZy5BaVNpbXBsZVBhcmFsbGVsSABSDlNpbXBsZV'
    'BhcmFsbGVsQgcKBXZhbHVl');

@$core.Deprecated('Use aiSelectorDescriptor instead')
const AiSelector$json = {
  '1': 'AiSelector',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {
      '1': 'children',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiFlowNode',
      '8': {'2': false},
      '10': 'children',
    },
  ],
};

/// Descriptor for `AiSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiSelectorDescriptor = $convert.base64Decode(
    'CgpBaVNlbGVjdG9yEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG5vZGVOYW'
    '1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAAUgpkZWNvcmF0b3Jz'
    'Ei4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcnZpY2VzEi8KCGNoaW'
    'xkcmVuGAUgAygLMg8uY2ZnLkFpRmxvd05vZGVCAhAAUghjaGlsZHJlbg==');

@$core.Deprecated('Use aiSequenceDescriptor instead')
const AiSequence$json = {
  '1': 'AiSequence',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {
      '1': 'children',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiFlowNode',
      '8': {'2': false},
      '10': 'children',
    },
  ],
};

/// Descriptor for `AiSequence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiSequenceDescriptor = $convert.base64Decode(
    'CgpBaVNlcXVlbmNlEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG5vZGVOYW'
    '1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAAUgpkZWNvcmF0b3Jz'
    'Ei4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcnZpY2VzEi8KCGNoaW'
    'xkcmVuGAUgAygLMg8uY2ZnLkFpRmxvd05vZGVCAhAAUghjaGlsZHJlbg==');

@$core.Deprecated('Use aiSimpleParallelDescriptor instead')
const AiSimpleParallel$json = {
  '1': 'AiSimpleParallel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'finish_mode', '3': 5, '4': 1, '5': 14, '6': '.cfg.AiEFinishMode', '10': 'finishMode'},
    {'1': 'main_task', '3': 6, '4': 1, '5': 11, '6': '.cfg.AiTask', '10': 'mainTask'},
    {'1': 'background_node', '3': 7, '4': 1, '5': 11, '6': '.cfg.AiFlowNode', '10': 'backgroundNode'},
  ],
};

/// Descriptor for `AiSimpleParallel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiSimpleParallelDescriptor = $convert.base64Decode(
    'ChBBaVNpbXBsZVBhcmFsbGVsEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG'
    '5vZGVOYW1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAAUgpkZWNv'
    'cmF0b3JzEi4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcnZpY2VzEj'
    'MKC2ZpbmlzaF9tb2RlGAUgASgOMhIuY2ZnLkFpRUZpbmlzaE1vZGVSCmZpbmlzaE1vZGUSKAoJ'
    'bWFpbl90YXNrGAYgASgLMgsuY2ZnLkFpVGFza1IIbWFpblRhc2sSOAoPYmFja2dyb3VuZF9ub2'
    'RlGAcgASgLMg8uY2ZnLkFpRmxvd05vZGVSDmJhY2tncm91bmROb2Rl');

@$core.Deprecated('Use aiTaskDescriptor instead')
const AiTask$json = {
  '1': 'AiTask',
  '2': [
    {'1': 'UeWait', '3': 17, '4': 1, '5': 11, '6': '.cfg.AiUeWait', '9': 0, '10': 'UeWait'},
    {'1': 'UeWaitBlackboardTime', '3': 18, '4': 1, '5': 11, '6': '.cfg.AiUeWaitBlackboardTime', '9': 0, '10': 'UeWaitBlackboardTime'},
    {'1': 'MoveToTarget', '3': 19, '4': 1, '5': 11, '6': '.cfg.AiMoveToTarget', '9': 0, '10': 'MoveToTarget'},
    {'1': 'ChooseSkill', '3': 20, '4': 1, '5': 11, '6': '.cfg.AiChooseSkill', '9': 0, '10': 'ChooseSkill'},
    {'1': 'MoveToRandomLocation', '3': 21, '4': 1, '5': 11, '6': '.cfg.AiMoveToRandomLocation', '9': 0, '10': 'MoveToRandomLocation'},
    {'1': 'MoveToLocation', '3': 22, '4': 1, '5': 11, '6': '.cfg.AiMoveToLocation', '9': 0, '10': 'MoveToLocation'},
    {'1': 'DebugPrint', '3': 23, '4': 1, '5': 11, '6': '.cfg.AiDebugPrint', '9': 0, '10': 'DebugPrint'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiTaskDescriptor = $convert.base64Decode(
    'CgZBaVRhc2sSJwoGVWVXYWl0GBEgASgLMg0uY2ZnLkFpVWVXYWl0SABSBlVlV2FpdBJRChRVZV'
    'dhaXRCbGFja2JvYXJkVGltZRgSIAEoCzIbLmNmZy5BaVVlV2FpdEJsYWNrYm9hcmRUaW1lSABS'
    'FFVlV2FpdEJsYWNrYm9hcmRUaW1lEjkKDE1vdmVUb1RhcmdldBgTIAEoCzITLmNmZy5BaU1vdm'
    'VUb1RhcmdldEgAUgxNb3ZlVG9UYXJnZXQSNgoLQ2hvb3NlU2tpbGwYFCABKAsyEi5jZmcuQWlD'
    'aG9vc2VTa2lsbEgAUgtDaG9vc2VTa2lsbBJRChRNb3ZlVG9SYW5kb21Mb2NhdGlvbhgVIAEoCz'
    'IbLmNmZy5BaU1vdmVUb1JhbmRvbUxvY2F0aW9uSABSFE1vdmVUb1JhbmRvbUxvY2F0aW9uEj8K'
    'Dk1vdmVUb0xvY2F0aW9uGBYgASgLMhUuY2ZnLkFpTW92ZVRvTG9jYXRpb25IAFIOTW92ZVRvTG'
    '9jYXRpb24SMwoKRGVidWdQcmludBgXIAEoCzIRLmNmZy5BaURlYnVnUHJpbnRIAFIKRGVidWdQ'
    'cmludEIHCgV2YWx1ZQ==');

@$core.Deprecated('Use aiChooseSkillDescriptor instead')
const AiChooseSkill$json = {
  '1': 'AiChooseSkill',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'target_actor_key', '3': 6, '4': 1, '5': 9, '10': 'targetActorKey'},
    {'1': 'result_skill_id_key', '3': 7, '4': 1, '5': 9, '10': 'resultSkillIdKey'},
  ],
};

/// Descriptor for `AiChooseSkill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChooseSkillDescriptor = $convert.base64Decode(
    'Cg1BaUNob29zZVNraWxsEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG5vZG'
    'VOYW1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAAUgpkZWNvcmF0'
    'b3JzEi4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcnZpY2VzEi4KE2'
    'lnbm9yZV9yZXN0YXJ0X3NlbGYYBSABKAhSEWlnbm9yZVJlc3RhcnRTZWxmEigKEHRhcmdldF9h'
    'Y3Rvcl9rZXkYBiABKAlSDnRhcmdldEFjdG9yS2V5Ei0KE3Jlc3VsdF9za2lsbF9pZF9rZXkYBy'
    'ABKAlSEHJlc3VsdFNraWxsSWRLZXk=');

@$core.Deprecated('Use aiDebugPrintDescriptor instead')
const AiDebugPrint$json = {
  '1': 'AiDebugPrint',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'text', '3': 6, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `AiDebugPrint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiDebugPrintDescriptor = $convert.base64Decode(
    'CgxBaURlYnVnUHJpbnQSDgoCaWQYASABKAVSAmlkEhsKCW5vZGVfbmFtZRgCIAEoCVIIbm9kZU'
    '5hbWUSNAoKZGVjb3JhdG9ycxgDIAMoCzIQLmNmZy5BaURlY29yYXRvckICEABSCmRlY29yYXRv'
    'cnMSLgoIc2VydmljZXMYBCADKAsyDi5jZmcuQWlTZXJ2aWNlQgIQAFIIc2VydmljZXMSLgoTaW'
    'dub3JlX3Jlc3RhcnRfc2VsZhgFIAEoCFIRaWdub3JlUmVzdGFydFNlbGYSEgoEdGV4dBgGIAEo'
    'CVIEdGV4dA==');

@$core.Deprecated('Use aiMoveToLocationDescriptor instead')
const AiMoveToLocation$json = {
  '1': 'AiMoveToLocation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'acceptable_radius', '3': 6, '4': 1, '5': 2, '10': 'acceptableRadius'},
  ],
};

/// Descriptor for `AiMoveToLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiMoveToLocationDescriptor = $convert.base64Decode(
    'ChBBaU1vdmVUb0xvY2F0aW9uEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG'
    '5vZGVOYW1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAAUgpkZWNv'
    'cmF0b3JzEi4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcnZpY2VzEi'
    '4KE2lnbm9yZV9yZXN0YXJ0X3NlbGYYBSABKAhSEWlnbm9yZVJlc3RhcnRTZWxmEisKEWFjY2Vw'
    'dGFibGVfcmFkaXVzGAYgASgCUhBhY2NlcHRhYmxlUmFkaXVz');

@$core.Deprecated('Use aiMoveToRandomLocationDescriptor instead')
const AiMoveToRandomLocation$json = {
  '1': 'AiMoveToRandomLocation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'origin_position_key', '3': 6, '4': 1, '5': 9, '10': 'originPositionKey'},
    {'1': 'radius', '3': 7, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `AiMoveToRandomLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiMoveToRandomLocationDescriptor = $convert.base64Decode(
    'ChZBaU1vdmVUb1JhbmRvbUxvY2F0aW9uEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAi'
    'ABKAlSCG5vZGVOYW1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAA'
    'UgpkZWNvcmF0b3JzEi4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcn'
    'ZpY2VzEi4KE2lnbm9yZV9yZXN0YXJ0X3NlbGYYBSABKAhSEWlnbm9yZVJlc3RhcnRTZWxmEi4K'
    'E29yaWdpbl9wb3NpdGlvbl9rZXkYBiABKAlSEW9yaWdpblBvc2l0aW9uS2V5EhYKBnJhZGl1cx'
    'gHIAEoAlIGcmFkaXVz');

@$core.Deprecated('Use aiMoveToTargetDescriptor instead')
const AiMoveToTarget$json = {
  '1': 'AiMoveToTarget',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'target_actor_key', '3': 6, '4': 1, '5': 9, '10': 'targetActorKey'},
    {'1': 'acceptable_radius', '3': 7, '4': 1, '5': 2, '10': 'acceptableRadius'},
  ],
};

/// Descriptor for `AiMoveToTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiMoveToTargetDescriptor = $convert.base64Decode(
    'Cg5BaU1vdmVUb1RhcmdldBIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2'
    'RlTmFtZRI0CgpkZWNvcmF0b3JzGAMgAygLMhAuY2ZnLkFpRGVjb3JhdG9yQgIQAFIKZGVjb3Jh'
    'dG9ycxIuCghzZXJ2aWNlcxgEIAMoCzIOLmNmZy5BaVNlcnZpY2VCAhAAUghzZXJ2aWNlcxIuCh'
    'NpZ25vcmVfcmVzdGFydF9zZWxmGAUgASgIUhFpZ25vcmVSZXN0YXJ0U2VsZhIoChB0YXJnZXRf'
    'YWN0b3Jfa2V5GAYgASgJUg50YXJnZXRBY3RvcktleRIrChFhY2NlcHRhYmxlX3JhZGl1cxgHIA'
    'EoAlIQYWNjZXB0YWJsZVJhZGl1cw==');

@$core.Deprecated('Use aiUeWaitDescriptor instead')
const AiUeWait$json = {
  '1': 'AiUeWait',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'wait_time', '3': 6, '4': 1, '5': 2, '10': 'waitTime'},
    {'1': 'random_deviation', '3': 7, '4': 1, '5': 2, '10': 'randomDeviation'},
  ],
};

/// Descriptor for `AiUeWait`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeWaitDescriptor = $convert.base64Decode(
    'CghBaVVlV2FpdBIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2RlTmFtZR'
    'I0CgpkZWNvcmF0b3JzGAMgAygLMhAuY2ZnLkFpRGVjb3JhdG9yQgIQAFIKZGVjb3JhdG9ycxIu'
    'CghzZXJ2aWNlcxgEIAMoCzIOLmNmZy5BaVNlcnZpY2VCAhAAUghzZXJ2aWNlcxIuChNpZ25vcm'
    'VfcmVzdGFydF9zZWxmGAUgASgIUhFpZ25vcmVSZXN0YXJ0U2VsZhIbCgl3YWl0X3RpbWUYBiAB'
    'KAJSCHdhaXRUaW1lEikKEHJhbmRvbV9kZXZpYXRpb24YByABKAJSD3JhbmRvbURldmlhdGlvbg'
    '==');

@$core.Deprecated('Use aiUeWaitBlackboardTimeDescriptor instead')
const AiUeWaitBlackboardTime$json = {
  '1': 'AiUeWaitBlackboardTime',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {
      '1': 'decorators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiDecorator',
      '8': {'2': false},
      '10': 'decorators',
    },
    {
      '1': 'services',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiService',
      '8': {'2': false},
      '10': 'services',
    },
    {'1': 'ignore_restart_self', '3': 5, '4': 1, '5': 8, '10': 'ignoreRestartSelf'},
    {'1': 'blackboard_key', '3': 6, '4': 1, '5': 9, '10': 'blackboardKey'},
  ],
};

/// Descriptor for `AiUeWaitBlackboardTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeWaitBlackboardTimeDescriptor = $convert.base64Decode(
    'ChZBaVVlV2FpdEJsYWNrYm9hcmRUaW1lEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAi'
    'ABKAlSCG5vZGVOYW1lEjQKCmRlY29yYXRvcnMYAyADKAsyEC5jZmcuQWlEZWNvcmF0b3JCAhAA'
    'UgpkZWNvcmF0b3JzEi4KCHNlcnZpY2VzGAQgAygLMg4uY2ZnLkFpU2VydmljZUICEABSCHNlcn'
    'ZpY2VzEi4KE2lnbm9yZV9yZXN0YXJ0X3NlbGYYBSABKAhSEWlnbm9yZVJlc3RhcnRTZWxmEiUK'
    'DmJsYWNrYm9hcmRfa2V5GAYgASgJUg1ibGFja2JvYXJkS2V5');

@$core.Deprecated('Use aiServiceDescriptor instead')
const AiService$json = {
  '1': 'AiService',
  '2': [
    {'1': 'UeSetDefaultFocus', '3': 1, '4': 1, '5': 11, '6': '.cfg.AiUeSetDefaultFocus', '9': 0, '10': 'UeSetDefaultFocus'},
    {'1': 'ExecuteTimeStatistic', '3': 2, '4': 1, '5': 11, '6': '.cfg.AiExecuteTimeStatistic', '9': 0, '10': 'ExecuteTimeStatistic'},
    {'1': 'ChooseTarget', '3': 3, '4': 1, '5': 11, '6': '.cfg.AiChooseTarget', '9': 0, '10': 'ChooseTarget'},
    {'1': 'KeepFaceTarget', '3': 4, '4': 1, '5': 11, '6': '.cfg.AiKeepFaceTarget', '9': 0, '10': 'KeepFaceTarget'},
    {'1': 'GetOwnerPlayer', '3': 5, '4': 1, '5': 11, '6': '.cfg.AiGetOwnerPlayer', '9': 0, '10': 'GetOwnerPlayer'},
    {'1': 'UpdateDailyBehaviorProps', '3': 6, '4': 1, '5': 11, '6': '.cfg.AiUpdateDailyBehaviorProps', '9': 0, '10': 'UpdateDailyBehaviorProps'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AiService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiServiceDescriptor = $convert.base64Decode(
    'CglBaVNlcnZpY2USSAoRVWVTZXREZWZhdWx0Rm9jdXMYASABKAsyGC5jZmcuQWlVZVNldERlZm'
    'F1bHRGb2N1c0gAUhFVZVNldERlZmF1bHRGb2N1cxJRChRFeGVjdXRlVGltZVN0YXRpc3RpYxgC'
    'IAEoCzIbLmNmZy5BaUV4ZWN1dGVUaW1lU3RhdGlzdGljSABSFEV4ZWN1dGVUaW1lU3RhdGlzdG'
    'ljEjkKDENob29zZVRhcmdldBgDIAEoCzITLmNmZy5BaUNob29zZVRhcmdldEgAUgxDaG9vc2VU'
    'YXJnZXQSPwoOS2VlcEZhY2VUYXJnZXQYBCABKAsyFS5jZmcuQWlLZWVwRmFjZVRhcmdldEgAUg'
    '5LZWVwRmFjZVRhcmdldBI/Cg5HZXRPd25lclBsYXllchgFIAEoCzIVLmNmZy5BaUdldE93bmVy'
    'UGxheWVySABSDkdldE93bmVyUGxheWVyEl0KGFVwZGF0ZURhaWx5QmVoYXZpb3JQcm9wcxgGIA'
    'EoCzIfLmNmZy5BaVVwZGF0ZURhaWx5QmVoYXZpb3JQcm9wc0gAUhhVcGRhdGVEYWlseUJlaGF2'
    'aW9yUHJvcHNCBwoFdmFsdWU=');

@$core.Deprecated('Use aiChooseTargetDescriptor instead')
const AiChooseTarget$json = {
  '1': 'AiChooseTarget',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'result_target_key', '3': 3, '4': 1, '5': 9, '10': 'resultTargetKey'},
  ],
};

/// Descriptor for `AiChooseTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChooseTargetDescriptor = $convert.base64Decode(
    'Cg5BaUNob29zZVRhcmdldBIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW1lGAIgASgJUghub2'
    'RlTmFtZRIqChFyZXN1bHRfdGFyZ2V0X2tleRgDIAEoCVIPcmVzdWx0VGFyZ2V0S2V5');

@$core.Deprecated('Use aiExecuteTimeStatisticDescriptor instead')
const AiExecuteTimeStatistic$json = {
  '1': 'AiExecuteTimeStatistic',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
  ],
};

/// Descriptor for `AiExecuteTimeStatistic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiExecuteTimeStatisticDescriptor = $convert.base64Decode(
    'ChZBaUV4ZWN1dGVUaW1lU3RhdGlzdGljEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAi'
    'ABKAlSCG5vZGVOYW1l');

@$core.Deprecated('Use aiGetOwnerPlayerDescriptor instead')
const AiGetOwnerPlayer$json = {
  '1': 'AiGetOwnerPlayer',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'player_actor_key', '3': 3, '4': 1, '5': 9, '10': 'playerActorKey'},
  ],
};

/// Descriptor for `AiGetOwnerPlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiGetOwnerPlayerDescriptor = $convert.base64Decode(
    'ChBBaUdldE93bmVyUGxheWVyEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG'
    '5vZGVOYW1lEigKEHBsYXllcl9hY3Rvcl9rZXkYAyABKAlSDnBsYXllckFjdG9yS2V5');

@$core.Deprecated('Use aiKeepFaceTargetDescriptor instead')
const AiKeepFaceTarget$json = {
  '1': 'AiKeepFaceTarget',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'target_actor_key', '3': 3, '4': 1, '5': 9, '10': 'targetActorKey'},
  ],
};

/// Descriptor for `AiKeepFaceTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiKeepFaceTargetDescriptor = $convert.base64Decode(
    'ChBBaUtlZXBGYWNlVGFyZ2V0Eg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKAlSCG'
    '5vZGVOYW1lEigKEHRhcmdldF9hY3Rvcl9rZXkYAyABKAlSDnRhcmdldEFjdG9yS2V5');

@$core.Deprecated('Use aiUeSetDefaultFocusDescriptor instead')
const AiUeSetDefaultFocus$json = {
  '1': 'AiUeSetDefaultFocus',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'keyboard_key', '3': 3, '4': 1, '5': 9, '10': 'keyboardKey'},
  ],
};

/// Descriptor for `AiUeSetDefaultFocus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUeSetDefaultFocusDescriptor = $convert.base64Decode(
    'ChNBaVVlU2V0RGVmYXVsdEZvY3VzEg4KAmlkGAEgASgFUgJpZBIbCglub2RlX25hbWUYAiABKA'
    'lSCG5vZGVOYW1lEiEKDGtleWJvYXJkX2tleRgDIAEoCVILa2V5Ym9hcmRLZXk=');

@$core.Deprecated('Use aiUpdateDailyBehaviorPropsDescriptor instead')
const AiUpdateDailyBehaviorProps$json = {
  '1': 'AiUpdateDailyBehaviorProps',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'node_name', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'satiety_key', '3': 3, '4': 1, '5': 9, '10': 'satietyKey'},
    {'1': 'energy_key', '3': 4, '4': 1, '5': 9, '10': 'energyKey'},
    {'1': 'mood_key', '3': 5, '4': 1, '5': 9, '10': 'moodKey'},
    {'1': 'satiety_lower_threshold_key', '3': 6, '4': 1, '5': 9, '10': 'satietyLowerThresholdKey'},
    {'1': 'satiety_upper_threshold_key', '3': 7, '4': 1, '5': 9, '10': 'satietyUpperThresholdKey'},
    {'1': 'energy_lower_threshold_key', '3': 8, '4': 1, '5': 9, '10': 'energyLowerThresholdKey'},
    {'1': 'energy_upper_threshold_key', '3': 9, '4': 1, '5': 9, '10': 'energyUpperThresholdKey'},
    {'1': 'mood_lower_threshold_key', '3': 10, '4': 1, '5': 9, '10': 'moodLowerThresholdKey'},
    {'1': 'mood_upper_threshold_key', '3': 11, '4': 1, '5': 9, '10': 'moodUpperThresholdKey'},
  ],
};

/// Descriptor for `AiUpdateDailyBehaviorProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiUpdateDailyBehaviorPropsDescriptor = $convert.base64Decode(
    'ChpBaVVwZGF0ZURhaWx5QmVoYXZpb3JQcm9wcxIOCgJpZBgBIAEoBVICaWQSGwoJbm9kZV9uYW'
    '1lGAIgASgJUghub2RlTmFtZRIfCgtzYXRpZXR5X2tleRgDIAEoCVIKc2F0aWV0eUtleRIdCgpl'
    'bmVyZ3lfa2V5GAQgASgJUgllbmVyZ3lLZXkSGQoIbW9vZF9rZXkYBSABKAlSB21vb2RLZXkSPQ'
    'obc2F0aWV0eV9sb3dlcl90aHJlc2hvbGRfa2V5GAYgASgJUhhzYXRpZXR5TG93ZXJUaHJlc2hv'
    'bGRLZXkSPQobc2F0aWV0eV91cHBlcl90aHJlc2hvbGRfa2V5GAcgASgJUhhzYXRpZXR5VXBwZX'
    'JUaHJlc2hvbGRLZXkSOwoaZW5lcmd5X2xvd2VyX3RocmVzaG9sZF9rZXkYCCABKAlSF2VuZXJn'
    'eUxvd2VyVGhyZXNob2xkS2V5EjsKGmVuZXJneV91cHBlcl90aHJlc2hvbGRfa2V5GAkgASgJUh'
    'dlbmVyZ3lVcHBlclRocmVzaG9sZEtleRI3Chhtb29kX2xvd2VyX3RocmVzaG9sZF9rZXkYCiAB'
    'KAlSFW1vb2RMb3dlclRocmVzaG9sZEtleRI3Chhtb29kX3VwcGVyX3RocmVzaG9sZF9rZXkYCy'
    'ABKAlSFW1vb2RVcHBlclRocmVzaG9sZEtleQ==');

@$core.Deprecated('Use autoImport1Descriptor instead')
const AutoImport1$json = {
  '1': 'AutoImport1',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x5', '3': 3, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 4, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x8', '3': 5, '4': 1, '5': 5, '10': 'x8'},
    {'1': 'x10', '3': 6, '4': 1, '5': 9, '10': 'x10'},
    {'1': 'x13', '3': 7, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'x13'},
    {'1': 'x13_2', '3': 8, '4': 1, '5': 14, '6': '.cfg.TestDemoFlag', '10': 'x132'},
    {'1': 'x14', '3': 9, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'x14'},
    {'1': 'x15', '3': 10, '4': 1, '5': 11, '6': '.cfg.TestShape', '10': 'x15'},
    {'1': 'v2', '3': 11, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
    {'1': 't1', '3': 12, '4': 1, '5': 3, '10': 't1'},
    {
      '1': 'k1',
      '3': 13,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {
      '1': 'k2',
      '3': 14,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k2',
    },
    {'1': 'k8', '3': 15, '4': 3, '5': 11, '6': '.cfg.AutoImport1.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
    {
      '1': 'k10',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec3',
      '8': {'2': false},
      '10': 'k10',
    },
    {
      '1': 'k11',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec4',
      '8': {'2': false},
      '10': 'k11',
    },
    {'1': 'v11', '3': 19, '4': 1, '5': 11, '6': '.cfg.vec3', '9': 0, '10': 'v11', '17': true},
  ],
  '3': [AutoImport1_K8Entry$json],
  '8': [
    {'1': '_v11'},
  ],
};

@$core.Deprecated('Use autoImport1Descriptor instead')
const AutoImport1_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AutoImport1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoImport1Descriptor = $convert.base64Decode(
    'CgtBdXRvSW1wb3J0MRIOCgJpZBgBIAEoBVICaWQSDgoCeDEYAiABKAhSAngxEg4KAng1GAMgAS'
    'gDUgJ4NRIOCgJ4NhgEIAEoAlICeDYSDgoCeDgYBSABKAVSAng4EhAKA3gxMBgGIAEoCVIDeDEw'
    'EiMKA3gxMxgHIAEoDjIRLmNmZy5UZXN0RGVtb0VudW1SA3gxMxImCgV4MTNfMhgIIAEoDjIRLm'
    'NmZy5UZXN0RGVtb0ZsYWdSBHgxMzISJgoDeDE0GAkgASgLMhQuY2ZnLlRlc3REZW1vRHluYW1p'
    'Y1IDeDE0EiAKA3gxNRgKIAEoCzIOLmNmZy5UZXN0U2hhcGVSA3gxNRIZCgJ2MhgLIAEoCzIJLm'
    'NmZy52ZWMyUgJ2MhIOCgJ0MRgMIAEoA1ICdDESEgoCazEYDSADKAVCAhABUgJrMRISCgJrMhgO'
    'IAMoBUICEAFSAmsyEigKAms4GA8gAygLMhguY2ZnLkF1dG9JbXBvcnQxLks4RW50cnlSAms4Ei'
    'MKAms5GBAgAygLMg8uY2ZnLlRlc3REZW1vRTJCAhAAUgJrORIfCgNrMTAYESADKAsyCS5jZmcu'
    'dmVjM0ICEABSA2sxMBIfCgNrMTEYEiADKAsyCS5jZmcudmVjNEICEABSA2sxMRIgCgN2MTEYEy'
    'ABKAsyCS5jZmcudmVjM0gAUgN2MTGIAQEaNQoHSzhFbnRyeRIQCgNrZXkYASABKAVSA2tleRIU'
    'CgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBQgYKBF92MTE=');

@$core.Deprecated('Use commonDateTimeRangeDescriptor instead')
const CommonDateTimeRange$json = {
  '1': 'CommonDateTimeRange',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 2, '4': 1, '5': 3, '9': 1, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `CommonDateTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonDateTimeRangeDescriptor = $convert.base64Decode(
    'ChNDb21tb25EYXRlVGltZVJhbmdlEiIKCnN0YXJ0X3RpbWUYASABKANIAFIJc3RhcnRUaW1liA'
    'EBEh4KCGVuZF90aW1lGAIgASgDSAFSB2VuZFRpbWWIAQFCDQoLX3N0YXJ0X3RpbWVCCwoJX2Vu'
    'ZF90aW1l');

@$core.Deprecated('Use commonFloatRangeDescriptor instead')
const CommonFloatRange$json = {
  '1': 'CommonFloatRange',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 2, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 2, '10': 'max'},
  ],
};

/// Descriptor for `CommonFloatRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonFloatRangeDescriptor = $convert.base64Decode(
    'ChBDb21tb25GbG9hdFJhbmdlEhAKA21pbhgBIAEoAlIDbWluEhAKA21heBgCIAEoAlIDbWF4');

@$core.Deprecated('Use commonGlobalConfigDescriptor instead')
const CommonGlobalConfig$json = {
  '1': 'CommonGlobalConfig',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 3, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 4, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x5', '3': 5, '4': 1, '5': 5, '10': 'x5'},
    {'1': 'x6', '3': 6, '4': 1, '5': 5, '10': 'x6'},
    {
      '1': 'x7',
      '3': 7,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'x7',
    },
  ],
};

/// Descriptor for `CommonGlobalConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonGlobalConfigDescriptor = $convert.base64Decode(
    'ChJDb21tb25HbG9iYWxDb25maWcSDgoCeDEYASABKAVSAngxEg4KAngyGAIgASgFUgJ4MhIOCg'
    'J4MxgDIAEoBVICeDMSDgoCeDQYBCABKAVSAng0Eg4KAng1GAUgASgFUgJ4NRIOCgJ4NhgGIAEo'
    'BVICeDYSEgoCeDcYByADKAVCAhABUgJ4Nw==');

@$core.Deprecated('Use commonIntRangeDescriptor instead')
const CommonIntRange$json = {
  '1': 'CommonIntRange',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 5, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 5, '10': 'max'},
  ],
};

/// Descriptor for `CommonIntRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonIntRangeDescriptor = $convert.base64Decode(
    'Cg5Db21tb25JbnRSYW5nZRIQCgNtaW4YASABKAVSA21pbhIQCgNtYXgYAiABKAVSA21heA==');

@$core.Deprecated('Use commonOneDayTimeRangeDescriptor instead')
const CommonOneDayTimeRange$json = {
  '1': 'CommonOneDayTimeRange',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 11, '6': '.cfg.CommonTimeOfDay', '10': 'startTime'},
    {'1': 'end_time', '3': 2, '4': 1, '5': 11, '6': '.cfg.CommonTimeOfDay', '10': 'endTime'},
  ],
};

/// Descriptor for `CommonOneDayTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonOneDayTimeRangeDescriptor = $convert.base64Decode(
    'ChVDb21tb25PbmVEYXlUaW1lUmFuZ2USMwoKc3RhcnRfdGltZRgBIAEoCzIULmNmZy5Db21tb2'
    '5UaW1lT2ZEYXlSCXN0YXJ0VGltZRIvCghlbmRfdGltZRgCIAEoCzIULmNmZy5Db21tb25UaW1l'
    'T2ZEYXlSB2VuZFRpbWU=');

@$core.Deprecated('Use commonTimeOfDayDescriptor instead')
const CommonTimeOfDay$json = {
  '1': 'CommonTimeOfDay',
  '2': [
    {'1': 'hour', '3': 1, '4': 1, '5': 5, '10': 'hour'},
    {'1': 'minute', '3': 2, '4': 1, '5': 5, '10': 'minute'},
    {'1': 'second', '3': 3, '4': 1, '5': 5, '10': 'second'},
  ],
};

/// Descriptor for `CommonTimeOfDay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonTimeOfDayDescriptor = $convert.base64Decode(
    'Cg9Db21tb25UaW1lT2ZEYXkSEgoEaG91chgBIAEoBVIEaG91chIWCgZtaW51dGUYAiABKAVSBm'
    '1pbnV0ZRIWCgZzZWNvbmQYAyABKAVSBnNlY29uZA==');

@$core.Deprecated('Use itemItemDescriptor instead')
const ItemItem$json = {
  '1': 'ItemItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'major_type', '3': 3, '4': 1, '5': 14, '6': '.cfg.ItemEMajorType', '10': 'majorType'},
    {'1': 'minor_type', '3': 4, '4': 1, '5': 14, '6': '.cfg.ItemEMinorType', '10': 'minorType'},
    {'1': 'max_pile_num', '3': 5, '4': 1, '5': 5, '10': 'maxPileNum'},
    {'1': 'quality', '3': 6, '4': 1, '5': 14, '6': '.cfg.ItemEItemQuality', '10': 'quality'},
    {'1': 'icon', '3': 7, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'icon_backgroud', '3': 8, '4': 1, '5': 9, '10': 'iconBackgroud'},
    {'1': 'icon_mask', '3': 9, '4': 1, '5': 9, '10': 'iconMask'},
    {'1': 'desc', '3': 10, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'show_order', '3': 11, '4': 1, '5': 5, '10': 'showOrder'},
  ],
};

/// Descriptor for `ItemItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemItemDescriptor = $convert.base64Decode(
    'CghJdGVtSXRlbRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIyCgptYWpvcl'
    '90eXBlGAMgASgOMhMuY2ZnLkl0ZW1FTWFqb3JUeXBlUgltYWpvclR5cGUSMgoKbWlub3JfdHlw'
    'ZRgEIAEoDjITLmNmZy5JdGVtRU1pbm9yVHlwZVIJbWlub3JUeXBlEiAKDG1heF9waWxlX251bR'
    'gFIAEoBVIKbWF4UGlsZU51bRIvCgdxdWFsaXR5GAYgASgOMhUuY2ZnLkl0ZW1FSXRlbVF1YWxp'
    'dHlSB3F1YWxpdHkSEgoEaWNvbhgHIAEoCVIEaWNvbhIlCg5pY29uX2JhY2tncm91ZBgIIAEoCV'
    'INaWNvbkJhY2tncm91ZBIbCglpY29uX21hc2sYCSABKAlSCGljb25NYXNrEhIKBGRlc2MYCiAB'
    'KAlSBGRlc2MSHQoKc2hvd19vcmRlchgLIAEoBVIJc2hvd09yZGVy');

@$core.Deprecated('Use l10nL10NDemoDescriptor instead')
const L10nL10NDemo$json = {
  '1': 'L10nL10NDemo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `L10nL10NDemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List l10nL10NDemoDescriptor = $convert.base64Decode(
    'CgxMMTBuTDEwTkRlbW8SDgoCaWQYASABKAVSAmlkEhIKBHRleHQYAiABKAlSBHRleHQ=');

@$core.Deprecated('Use l10nPatchDemoDescriptor instead')
const L10nPatchDemo$json = {
  '1': 'L10nPatchDemo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `L10nPatchDemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List l10nPatchDemoDescriptor = $convert.base64Decode(
    'Cg1MMTBuUGF0Y2hEZW1vEg4KAmlkGAEgASgFUgJpZBIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU=');

@$core.Deprecated('Use tagTestTagDescriptor instead')
const TagTestTag$json = {
  '1': 'TagTestTag',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `TagTestTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagTestTagDescriptor = $convert.base64Decode(
    'CgpUYWdUZXN0VGFnEg4KAmlkGAEgASgFUgJpZBIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use testAutoImport2Descriptor instead')
const TestAutoImport2$json = {
  '1': 'TestAutoImport2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x5', '3': 3, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 4, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x8', '3': 5, '4': 1, '5': 5, '10': 'x8'},
    {'1': 'x10', '3': 6, '4': 1, '5': 9, '10': 'x10'},
    {'1': 'x13', '3': 7, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'x13'},
    {'1': 'x13_2', '3': 8, '4': 1, '5': 14, '6': '.cfg.TestDemoFlag', '10': 'x132'},
    {'1': 'x14', '3': 9, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'x14'},
    {'1': 'x15', '3': 10, '4': 1, '5': 11, '6': '.cfg.TestShape', '10': 'x15'},
    {'1': 'v2', '3': 11, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
    {'1': 't1', '3': 12, '4': 1, '5': 3, '10': 't1'},
    {
      '1': 'k1',
      '3': 13,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {
      '1': 'k2',
      '3': 14,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k2',
    },
    {'1': 'k8', '3': 15, '4': 3, '5': 11, '6': '.cfg.TestAutoImport2.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
    {
      '1': 'k10',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec3',
      '8': {'2': false},
      '10': 'k10',
    },
    {
      '1': 'k11',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec4',
      '8': {'2': false},
      '10': 'k11',
    },
    {'1': 'v11', '3': 19, '4': 1, '5': 11, '6': '.cfg.vec3', '9': 0, '10': 'v11', '17': true},
  ],
  '3': [TestAutoImport2_K8Entry$json],
  '8': [
    {'1': '_v11'},
  ],
};

@$core.Deprecated('Use testAutoImport2Descriptor instead')
const TestAutoImport2_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestAutoImport2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testAutoImport2Descriptor = $convert.base64Decode(
    'Cg9UZXN0QXV0b0ltcG9ydDISDgoCaWQYASABKAVSAmlkEg4KAngxGAIgASgIUgJ4MRIOCgJ4NR'
    'gDIAEoA1ICeDUSDgoCeDYYBCABKAJSAng2Eg4KAng4GAUgASgFUgJ4OBIQCgN4MTAYBiABKAlS'
    'A3gxMBIjCgN4MTMYByABKA4yES5jZmcuVGVzdERlbW9FbnVtUgN4MTMSJgoFeDEzXzIYCCABKA'
    '4yES5jZmcuVGVzdERlbW9GbGFnUgR4MTMyEiYKA3gxNBgJIAEoCzIULmNmZy5UZXN0RGVtb0R5'
    'bmFtaWNSA3gxNBIgCgN4MTUYCiABKAsyDi5jZmcuVGVzdFNoYXBlUgN4MTUSGQoCdjIYCyABKA'
    'syCS5jZmcudmVjMlICdjISDgoCdDEYDCABKANSAnQxEhIKAmsxGA0gAygFQgIQAVICazESEgoC'
    'azIYDiADKAVCAhABUgJrMhIsCgJrOBgPIAMoCzIcLmNmZy5UZXN0QXV0b0ltcG9ydDIuSzhFbn'
    'RyeVICazgSIwoCazkYECADKAsyDy5jZmcuVGVzdERlbW9FMkICEABSAms5Eh8KA2sxMBgRIAMo'
    'CzIJLmNmZy52ZWMzQgIQAFIDazEwEh8KA2sxMRgSIAMoCzIJLmNmZy52ZWM0QgIQAFIDazExEi'
    'AKA3YxMRgTIAEoCzIJLmNmZy52ZWMzSABSA3YxMYgBARo1CgdLOEVudHJ5EhAKA2tleRgBIAEo'
    'BVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAFCBgoEX3YxMQ==');

@$core.Deprecated('Use testCompactStringDescriptor instead')
const TestCompactString$json = {
  '1': 'TestCompactString',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 's2', '3': 2, '4': 1, '5': 9, '10': 's2'},
    {'1': 's3', '3': 3, '4': 1, '5': 9, '10': 's3'},
  ],
};

/// Descriptor for `TestCompactString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testCompactStringDescriptor = $convert.base64Decode(
    'ChFUZXN0Q29tcGFjdFN0cmluZxIOCgJpZBgBIAEoBVICaWQSDgoCczIYAiABKAlSAnMyEg4KAn'
    'MzGAMgASgJUgJzMw==');

@$core.Deprecated('Use testCompositeJsonTable1Descriptor instead')
const TestCompositeJsonTable1$json = {
  '1': 'TestCompositeJsonTable1',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x', '3': 2, '4': 1, '5': 9, '10': 'x'},
  ],
};

/// Descriptor for `TestCompositeJsonTable1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testCompositeJsonTable1Descriptor = $convert.base64Decode(
    'ChdUZXN0Q29tcG9zaXRlSnNvblRhYmxlMRIOCgJpZBgBIAEoBVICaWQSDAoBeBgCIAEoCVIBeA'
    '==');

@$core.Deprecated('Use testCompositeJsonTable2Descriptor instead')
const TestCompositeJsonTable2$json = {
  '1': 'TestCompositeJsonTable2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
  ],
};

/// Descriptor for `TestCompositeJsonTable2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testCompositeJsonTable2Descriptor = $convert.base64Decode(
    'ChdUZXN0Q29tcG9zaXRlSnNvblRhYmxlMhIOCgJpZBgBIAEoBVICaWQSDAoBeRgCIAEoBVIBeQ'
    '==');

@$core.Deprecated('Use testCompositeJsonTable3Descriptor instead')
const TestCompositeJsonTable3$json = {
  '1': 'TestCompositeJsonTable3',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 5, '10': 'b'},
  ],
};

/// Descriptor for `TestCompositeJsonTable3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testCompositeJsonTable3Descriptor = $convert.base64Decode(
    'ChdUZXN0Q29tcG9zaXRlSnNvblRhYmxlMxIMCgFhGAEgASgFUgFhEgwKAWIYAiABKAVSAWI=');

@$core.Deprecated('Use testDateTimeRangeDescriptor instead')
const TestDateTimeRange$json = {
  '1': 'TestDateTimeRange',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 3, '10': 'startTime'},
    {'1': 'end_time', '3': 2, '4': 1, '5': 3, '10': 'endTime'},
  ],
};

/// Descriptor for `TestDateTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDateTimeRangeDescriptor = $convert.base64Decode(
    'ChFUZXN0RGF0ZVRpbWVSYW5nZRIdCgpzdGFydF90aW1lGAEgASgDUglzdGFydFRpbWUSGQoIZW'
    '5kX3RpbWUYAiABKANSB2VuZFRpbWU=');

@$core.Deprecated('Use testDefineFromExcel2Descriptor instead')
const TestDefineFromExcel2$json = {
  '1': 'TestDefineFromExcel2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x5', '3': 3, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 4, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x8', '3': 5, '4': 1, '5': 5, '10': 'x8'},
    {'1': 'x10', '3': 6, '4': 1, '5': 9, '10': 'x10'},
    {'1': 'x13', '3': 7, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'x13'},
    {'1': 'x13_2', '3': 8, '4': 1, '5': 14, '6': '.cfg.TestDemoFlag', '10': 'x132'},
    {'1': 'x14', '3': 9, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'x14'},
    {'1': 'x15', '3': 10, '4': 1, '5': 11, '6': '.cfg.TestShape', '10': 'x15'},
    {'1': 'v2', '3': 11, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
    {'1': 't1', '3': 12, '4': 1, '5': 3, '10': 't1'},
    {
      '1': 'k1',
      '3': 13,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {
      '1': 'k2',
      '3': 14,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k2',
    },
    {'1': 'k8', '3': 15, '4': 3, '5': 11, '6': '.cfg.TestDefineFromExcel2.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
    {
      '1': 'k10',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec3',
      '8': {'2': false},
      '10': 'k10',
    },
    {
      '1': 'k11',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.cfg.vec4',
      '8': {'2': false},
      '10': 'k11',
    },
    {'1': 'v11', '3': 19, '4': 1, '5': 11, '6': '.cfg.vec3', '9': 0, '10': 'v11', '17': true},
  ],
  '3': [TestDefineFromExcel2_K8Entry$json],
  '8': [
    {'1': '_v11'},
  ],
};

@$core.Deprecated('Use testDefineFromExcel2Descriptor instead')
const TestDefineFromExcel2_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestDefineFromExcel2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDefineFromExcel2Descriptor = $convert.base64Decode(
    'ChRUZXN0RGVmaW5lRnJvbUV4Y2VsMhIOCgJpZBgBIAEoBVICaWQSDgoCeDEYAiABKAhSAngxEg'
    '4KAng1GAMgASgDUgJ4NRIOCgJ4NhgEIAEoAlICeDYSDgoCeDgYBSABKAVSAng4EhAKA3gxMBgG'
    'IAEoCVIDeDEwEiMKA3gxMxgHIAEoDjIRLmNmZy5UZXN0RGVtb0VudW1SA3gxMxImCgV4MTNfMh'
    'gIIAEoDjIRLmNmZy5UZXN0RGVtb0ZsYWdSBHgxMzISJgoDeDE0GAkgASgLMhQuY2ZnLlRlc3RE'
    'ZW1vRHluYW1pY1IDeDE0EiAKA3gxNRgKIAEoCzIOLmNmZy5UZXN0U2hhcGVSA3gxNRIZCgJ2Mh'
    'gLIAEoCzIJLmNmZy52ZWMyUgJ2MhIOCgJ0MRgMIAEoA1ICdDESEgoCazEYDSADKAVCAhABUgJr'
    'MRISCgJrMhgOIAMoBUICEAFSAmsyEjEKAms4GA8gAygLMiEuY2ZnLlRlc3REZWZpbmVGcm9tRX'
    'hjZWwyLks4RW50cnlSAms4EiMKAms5GBAgAygLMg8uY2ZnLlRlc3REZW1vRTJCAhAAUgJrORIf'
    'CgNrMTAYESADKAsyCS5jZmcudmVjM0ICEABSA2sxMBIfCgNrMTEYEiADKAsyCS5jZmcudmVjNE'
    'ICEABSA2sxMRIgCgN2MTEYEyABKAsyCS5jZmcudmVjM0gAUgN2MTGIAQEaNQoHSzhFbnRyeRIQ'
    'CgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBQgYKBF92MTE=');

@$core.Deprecated('Use testDemoDynamicDescriptor instead')
const TestDemoDynamic$json = {
  '1': 'TestDemoDynamic',
  '2': [
    {'1': 'DemoD2', '3': 1, '4': 1, '5': 11, '6': '.cfg.TestDemoD2', '9': 0, '10': 'DemoD2'},
    {'1': 'DemoE1', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestDemoE1', '9': 0, '10': 'DemoE1'},
    {'1': 'RoleInfo', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestLoginRoleInfo', '9': 0, '10': 'RoleInfo'},
    {'1': 'DemoD5', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestDemoD5', '9': 0, '10': 'DemoD5'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `TestDemoDynamic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoDynamicDescriptor = $convert.base64Decode(
    'Cg9UZXN0RGVtb0R5bmFtaWMSKQoGRGVtb0QyGAEgASgLMg8uY2ZnLlRlc3REZW1vRDJIAFIGRG'
    'Vtb0QyEikKBkRlbW9FMRgCIAEoCzIPLmNmZy5UZXN0RGVtb0UxSABSBkRlbW9FMRI0CghSb2xl'
    'SW5mbxgDIAEoCzIWLmNmZy5UZXN0TG9naW5Sb2xlSW5mb0gAUghSb2xlSW5mbxIpCgZEZW1vRD'
    'UYBCABKAsyDy5jZmcuVGVzdERlbW9ENUgAUgZEZW1vRDVCBwoFdmFsdWU=');

@$core.Deprecated('Use testDemoD2Descriptor instead')
const TestDemoD2$json = {
  '1': 'TestDemoD2',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 5, '10': 'x2'},
  ],
};

/// Descriptor for `TestDemoD2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoD2Descriptor = $convert.base64Decode(
    'CgpUZXN0RGVtb0QyEg4KAngxGAEgASgFUgJ4MRIOCgJ4MhgCIAEoBVICeDI=');

@$core.Deprecated('Use testDemoD3Descriptor instead')
const TestDemoD3$json = {
  '1': 'TestDemoD3',
  '2': [
    {'1': 'DemoE1', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestDemoE1', '9': 0, '10': 'DemoE1'},
    {'1': 'RoleInfo', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestLoginRoleInfo', '9': 0, '10': 'RoleInfo'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `TestDemoD3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoD3Descriptor = $convert.base64Decode(
    'CgpUZXN0RGVtb0QzEikKBkRlbW9FMRgCIAEoCzIPLmNmZy5UZXN0RGVtb0UxSABSBkRlbW9FMR'
    'I0CghSb2xlSW5mbxgDIAEoCzIWLmNmZy5UZXN0TG9naW5Sb2xlSW5mb0gAUghSb2xlSW5mb0IH'
    'CgV2YWx1ZQ==');

@$core.Deprecated('Use testDemoE1Descriptor instead')
const TestDemoE1$json = {
  '1': 'TestDemoE1',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x3', '3': 2, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 3, '4': 1, '5': 5, '10': 'x4'},
  ],
};

/// Descriptor for `TestDemoE1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoE1Descriptor = $convert.base64Decode(
    'CgpUZXN0RGVtb0UxEg4KAngxGAEgASgFUgJ4MRIOCgJ4MxgCIAEoBVICeDMSDgoCeDQYAyABKA'
    'VSAng0');

@$core.Deprecated('Use testLoginRoleInfoDescriptor instead')
const TestLoginRoleInfo$json = {
  '1': 'TestLoginRoleInfo',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x3', '3': 2, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'role_id', '3': 3, '4': 1, '5': 3, '10': 'roleId'},
  ],
};

/// Descriptor for `TestLoginRoleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testLoginRoleInfoDescriptor = $convert.base64Decode(
    'ChFUZXN0TG9naW5Sb2xlSW5mbxIOCgJ4MRgBIAEoBVICeDESDgoCeDMYAiABKAVSAngzEhcKB3'
    'JvbGVfaWQYAyABKANSBnJvbGVJZA==');

@$core.Deprecated('Use testDemoD5Descriptor instead')
const TestDemoD5$json = {
  '1': 'TestDemoD5',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'time', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestDateTimeRange', '10': 'time'},
  ],
};

/// Descriptor for `TestDemoD5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoD5Descriptor = $convert.base64Decode(
    'CgpUZXN0RGVtb0Q1Eg4KAngxGAEgASgFUgJ4MRIqCgR0aW1lGAIgASgLMhYuY2ZnLlRlc3REYX'
    'RlVGltZVJhbmdlUgR0aW1l');

@$core.Deprecated('Use testDemoE2Descriptor instead')
const TestDemoE2$json = {
  '1': 'TestDemoE2',
  '2': [
    {'1': 'y1', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'y1', '17': true},
    {'1': 'y2', '3': 2, '4': 1, '5': 8, '10': 'y2'},
  ],
  '8': [
    {'1': '_y1'},
  ],
};

/// Descriptor for `TestDemoE2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoE2Descriptor = $convert.base64Decode(
    'CgpUZXN0RGVtb0UyEhMKAnkxGAEgASgFSABSAnkxiAEBEg4KAnkyGAIgASgIUgJ5MkIFCgNfeT'
    'E=');

@$core.Deprecated('Use testDemoExplicitTypeDescriptor instead')
const TestDemoExplicitType$json = {
  '1': 'TestDemoExplicitType',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 3, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 4, '4': 1, '5': 3, '10': 'x4'},
    {'1': 'x5', '3': 5, '4': 1, '5': 2, '10': 'x5'},
    {'1': 'x6', '3': 6, '4': 1, '5': 1, '10': 'x6'},
    {'1': 'x7', '3': 7, '4': 1, '5': 3, '10': 'x7'},
  ],
};

/// Descriptor for `TestDemoExplicitType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoExplicitTypeDescriptor = $convert.base64Decode(
    'ChRUZXN0RGVtb0V4cGxpY2l0VHlwZRIOCgJ4MRgBIAEoBVICeDESDgoCeDIYAiABKAVSAngyEg'
    '4KAngzGAMgASgFUgJ4MxIOCgJ4NBgEIAEoA1ICeDQSDgoCeDUYBSABKAJSAng1Eg4KAng2GAYg'
    'ASgBUgJ4NhIOCgJ4NxgHIAEoA1ICeDc=');

@$core.Deprecated('Use testDemoGroupDescriptor instead')
const TestDemoGroup$json = {
  '1': 'TestDemoGroup',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x2', '3': 3, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 4, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 5, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x5', '3': 6, '4': 1, '5': 11, '6': '.cfg.TestInnerGroup', '10': 'x5'},
  ],
};

/// Descriptor for `TestDemoGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoGroupDescriptor = $convert.base64Decode(
    'Cg1UZXN0RGVtb0dyb3VwEg4KAmlkGAEgASgFUgJpZBIOCgJ4MRgCIAEoBVICeDESDgoCeDIYAy'
    'ABKAVSAngyEg4KAngzGAQgASgFUgJ4MxIOCgJ4NBgFIAEoBVICeDQSIwoCeDUYBiABKAsyEy5j'
    'ZmcuVGVzdElubmVyR3JvdXBSAng1');

@$core.Deprecated('Use testDemoPrimitiveTypesTableDescriptor instead')
const TestDemoPrimitiveTypesTable$json = {
  '1': 'TestDemoPrimitiveTypesTable',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 3, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 4, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x5', '3': 5, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 6, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x7', '3': 7, '4': 1, '5': 1, '10': 'x7'},
    {'1': 's1', '3': 8, '4': 1, '5': 9, '10': 's1'},
    {'1': 's2', '3': 9, '4': 1, '5': 9, '10': 's2'},
    {'1': 'v2', '3': 10, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
    {'1': 'v3', '3': 11, '4': 1, '5': 11, '6': '.cfg.vec3', '10': 'v3'},
    {'1': 'v4', '3': 12, '4': 1, '5': 11, '6': '.cfg.vec4', '10': 'v4'},
    {'1': 't1', '3': 13, '4': 1, '5': 3, '10': 't1'},
  ],
};

/// Descriptor for `TestDemoPrimitiveTypesTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoPrimitiveTypesTableDescriptor = $convert.base64Decode(
    'ChtUZXN0RGVtb1ByaW1pdGl2ZVR5cGVzVGFibGUSDgoCeDEYASABKAhSAngxEg4KAngyGAIgAS'
    'gFUgJ4MhIOCgJ4MxgDIAEoBVICeDMSDgoCeDQYBCABKAVSAng0Eg4KAng1GAUgASgDUgJ4NRIO'
    'CgJ4NhgGIAEoAlICeDYSDgoCeDcYByABKAFSAng3Eg4KAnMxGAggASgJUgJzMRIOCgJzMhgJIA'
    'EoCVICczISGQoCdjIYCiABKAsyCS5jZmcudmVjMlICdjISGQoCdjMYCyABKAsyCS5jZmcudmVj'
    'M1ICdjMSGQoCdjQYDCABKAsyCS5jZmcudmVjNFICdjQSDgoCdDEYDSABKANSAnQx');

@$core.Deprecated('Use testDemoSingletonTypeDescriptor instead')
const TestDemoSingletonType$json = {
  '1': 'TestDemoSingletonType',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'date'},
  ],
};

/// Descriptor for `TestDemoSingletonType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoSingletonTypeDescriptor = $convert.base64Decode(
    'ChVUZXN0RGVtb1NpbmdsZXRvblR5cGUSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSKAoEZGF0ZRgDIAEoCzIULmNmZy5UZXN0RGVtb0R5bmFtaWNSBGRhdGU=');

@$core.Deprecated('Use testDemoType1Descriptor instead')
const TestDemoType1$json = {
  '1': 'TestDemoType1',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
  ],
};

/// Descriptor for `TestDemoType1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoType1Descriptor = $convert.base64Decode(
    'Cg1UZXN0RGVtb1R5cGUxEg4KAngxGAEgASgFUgJ4MQ==');

@$core.Deprecated('Use testDemoType2Descriptor instead')
const TestDemoType2$json = {
  '1': 'TestDemoType2',
  '2': [
    {'1': 'x4', '3': 1, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x1', '3': 2, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x2', '3': 3, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 4, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x5', '3': 5, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 6, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x7', '3': 7, '4': 1, '5': 1, '10': 'x7'},
    {'1': 'x8_0', '3': 8, '4': 1, '5': 5, '10': 'x80'},
    {'1': 'x8', '3': 9, '4': 1, '5': 5, '10': 'x8'},
    {'1': 'x9', '3': 10, '4': 1, '5': 3, '10': 'x9'},
    {'1': 'x10', '3': 11, '4': 1, '5': 9, '10': 'x10'},
    {'1': 'x12', '3': 12, '4': 1, '5': 11, '6': '.cfg.TestDemoType1', '10': 'x12'},
    {'1': 'x13', '3': 13, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'x13'},
    {'1': 'x14', '3': 14, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'x14'},
    {'1': 's1', '3': 15, '4': 1, '5': 9, '10': 's1'},
    {'1': 't1', '3': 16, '4': 1, '5': 3, '10': 't1'},
    {
      '1': 'k1',
      '3': 17,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {
      '1': 'k2',
      '3': 18,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k2',
    },
    {
      '1': 'k5',
      '3': 19,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k5',
    },
    {'1': 'k8', '3': 20, '4': 3, '5': 11, '6': '.cfg.TestDemoType2.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
    {
      '1': 'k15',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoDynamic',
      '8': {'2': false},
      '10': 'k15',
    },
  ],
  '3': [TestDemoType2_K8Entry$json],
};

@$core.Deprecated('Use testDemoType2Descriptor instead')
const TestDemoType2_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestDemoType2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDemoType2Descriptor = $convert.base64Decode(
    'Cg1UZXN0RGVtb1R5cGUyEg4KAng0GAEgASgFUgJ4NBIOCgJ4MRgCIAEoCFICeDESDgoCeDIYAy'
    'ABKAVSAngyEg4KAngzGAQgASgFUgJ4MxIOCgJ4NRgFIAEoA1ICeDUSDgoCeDYYBiABKAJSAng2'
    'Eg4KAng3GAcgASgBUgJ4NxIRCgR4OF8wGAggASgFUgN4ODASDgoCeDgYCSABKAVSAng4Eg4KAn'
    'g5GAogASgDUgJ4ORIQCgN4MTAYCyABKAlSA3gxMBIkCgN4MTIYDCABKAsyEi5jZmcuVGVzdERl'
    'bW9UeXBlMVIDeDEyEiMKA3gxMxgNIAEoDjIRLmNmZy5UZXN0RGVtb0VudW1SA3gxMxImCgN4MT'
    'QYDiABKAsyFC5jZmcuVGVzdERlbW9EeW5hbWljUgN4MTQSDgoCczEYDyABKAlSAnMxEg4KAnQx'
    'GBAgASgDUgJ0MRISCgJrMRgRIAMoBUICEAFSAmsxEhIKAmsyGBIgAygFQgIQAVICazISEgoCaz'
    'UYEyADKAVCAhABUgJrNRIqCgJrOBgUIAMoCzIaLmNmZy5UZXN0RGVtb1R5cGUyLks4RW50cnlS'
    'Ams4EiMKAms5GBUgAygLMg8uY2ZnLlRlc3REZW1vRTJCAhAAUgJrORIqCgNrMTUYFiADKAsyFC'
    '5jZmcuVGVzdERlbW9EeW5hbWljQgIQAFIDazE1GjUKB0s4RW50cnkSEAoDa2V5GAEgASgFUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use testDetectEncodingDescriptor instead')
const TestDetectEncoding$json = {
  '1': 'TestDetectEncoding',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TestDetectEncoding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDetectEncodingDescriptor = $convert.base64Decode(
    'ChJUZXN0RGV0ZWN0RW5jb2RpbmcSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'U=');

@$core.Deprecated('Use testExcelFromJsonDescriptor instead')
const TestExcelFromJson$json = {
  '1': 'TestExcelFromJson',
  '2': [
    {'1': 'x4', '3': 1, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x1', '3': 2, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x5', '3': 3, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 4, '4': 1, '5': 2, '10': 'x6'},
    {'1': 's1', '3': 5, '4': 1, '5': 9, '10': 's1'},
    {'1': 's2', '3': 6, '4': 1, '5': 9, '10': 's2'},
    {'1': 't1', '3': 7, '4': 1, '5': 3, '10': 't1'},
    {'1': 'x12', '3': 8, '4': 1, '5': 11, '6': '.cfg.TestDemoType1', '10': 'x12'},
    {'1': 'x13', '3': 9, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'x13'},
    {'1': 'x14', '3': 10, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '10': 'x14'},
    {
      '1': 'k1',
      '3': 11,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {'1': 'k8', '3': 12, '4': 3, '5': 11, '6': '.cfg.TestExcelFromJson.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
    {
      '1': 'k15',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoDynamic',
      '8': {'2': false},
      '10': 'k15',
    },
  ],
  '3': [TestExcelFromJson_K8Entry$json],
};

@$core.Deprecated('Use testExcelFromJsonDescriptor instead')
const TestExcelFromJson_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestExcelFromJson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testExcelFromJsonDescriptor = $convert.base64Decode(
    'ChFUZXN0RXhjZWxGcm9tSnNvbhIOCgJ4NBgBIAEoBVICeDQSDgoCeDEYAiABKAhSAngxEg4KAn'
    'g1GAMgASgDUgJ4NRIOCgJ4NhgEIAEoAlICeDYSDgoCczEYBSABKAlSAnMxEg4KAnMyGAYgASgJ'
    'UgJzMhIOCgJ0MRgHIAEoA1ICdDESJAoDeDEyGAggASgLMhIuY2ZnLlRlc3REZW1vVHlwZTFSA3'
    'gxMhIjCgN4MTMYCSABKA4yES5jZmcuVGVzdERlbW9FbnVtUgN4MTMSJgoDeDE0GAogASgLMhQu'
    'Y2ZnLlRlc3REZW1vRHluYW1pY1IDeDE0EhIKAmsxGAsgAygFQgIQAVICazESLgoCazgYDCADKA'
    'syHi5jZmcuVGVzdEV4Y2VsRnJvbUpzb24uSzhFbnRyeVICazgSIwoCazkYDSADKAsyDy5jZmcu'
    'VGVzdERlbW9FMkICEABSAms5EioKA2sxNRgOIAMoCzIULmNmZy5UZXN0RGVtb0R5bmFtaWNCAh'
    'AAUgNrMTUaNQoHSzhFbnRyeRIQCgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFs'
    'dWU6AjgB');

@$core.Deprecated('Use testExcelFromJsonMultiRowDescriptor instead')
const TestExcelFromJsonMultiRow$json = {
  '1': 'TestExcelFromJsonMultiRow',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x', '3': 2, '4': 1, '5': 5, '10': 'x'},
    {
      '1': 'items',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestRow',
      '8': {'2': false},
      '10': 'items',
    },
  ],
};

/// Descriptor for `TestExcelFromJsonMultiRow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testExcelFromJsonMultiRowDescriptor = $convert.base64Decode(
    'ChlUZXN0RXhjZWxGcm9tSnNvbk11bHRpUm93Eg4KAmlkGAEgASgFUgJpZBIMCgF4GAIgASgFUg'
    'F4EioKBWl0ZW1zGAMgAygLMhAuY2ZnLlRlc3RUZXN0Um93QgIQAFIFaXRlbXM=');

@$core.Deprecated('Use testFooDescriptor instead')
const TestFoo$json = {
  '1': 'TestFoo',
  '2': [
    {'1': 'y1', '3': 1, '4': 1, '5': 5, '10': 'y1'},
    {'1': 'y2', '3': 2, '4': 1, '5': 5, '10': 'y2'},
    {'1': 'y3', '3': 3, '4': 1, '5': 5, '10': 'y3'},
  ],
};

/// Descriptor for `TestFoo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testFooDescriptor = $convert.base64Decode(
    'CgdUZXN0Rm9vEg4KAnkxGAEgASgFUgJ5MRIOCgJ5MhgCIAEoBVICeTISDgoCeTMYAyABKAVSAn'
    'kz');

@$core.Deprecated('Use testH1Descriptor instead')
const TestH1$json = {
  '1': 'TestH1',
  '2': [
    {'1': 'y2', '3': 1, '4': 1, '5': 11, '6': '.cfg.TestH2', '10': 'y2'},
    {'1': 'y3', '3': 2, '4': 1, '5': 5, '10': 'y3'},
  ],
};

/// Descriptor for `TestH1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testH1Descriptor = $convert.base64Decode(
    'CgZUZXN0SDESGwoCeTIYASABKAsyCy5jZmcuVGVzdEgyUgJ5MhIOCgJ5MxgCIAEoBVICeTM=');

@$core.Deprecated('Use testH2Descriptor instead')
const TestH2$json = {
  '1': 'TestH2',
  '2': [
    {'1': 'z2', '3': 1, '4': 1, '5': 5, '10': 'z2'},
    {'1': 'z3', '3': 2, '4': 1, '5': 5, '10': 'z3'},
  ],
};

/// Descriptor for `TestH2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testH2Descriptor = $convert.base64Decode(
    'CgZUZXN0SDISDgoCejIYASABKAVSAnoyEg4KAnozGAIgASgFUgJ6Mw==');

@$core.Deprecated('Use testInnerGroupDescriptor instead')
const TestInnerGroup$json = {
  '1': 'TestInnerGroup',
  '2': [
    {'1': 'y1', '3': 1, '4': 1, '5': 5, '10': 'y1'},
    {'1': 'y2', '3': 2, '4': 1, '5': 5, '10': 'y2'},
    {'1': 'y3', '3': 3, '4': 1, '5': 5, '10': 'y3'},
    {'1': 'y4', '3': 4, '4': 1, '5': 5, '10': 'y4'},
  ],
};

/// Descriptor for `TestInnerGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testInnerGroupDescriptor = $convert.base64Decode(
    'Cg5UZXN0SW5uZXJHcm91cBIOCgJ5MRgBIAEoBVICeTESDgoCeTIYAiABKAVSAnkyEg4KAnkzGA'
    'MgASgFUgJ5MxIOCgJ5NBgEIAEoBVICeTQ=');

@$core.Deprecated('Use testItemBaseDescriptor instead')
const TestItemBase$json = {
  '1': 'TestItemBase',
  '2': [
    {'1': 'Item', '3': 1, '4': 1, '5': 11, '6': '.cfg.TestItem', '9': 0, '10': 'Item'},
    {'1': 'Equipment', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestEquipment', '9': 0, '10': 'Equipment'},
    {'1': 'Decorator', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestDecorator', '9': 0, '10': 'Decorator'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `TestItemBase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testItemBaseDescriptor = $convert.base64Decode(
    'CgxUZXN0SXRlbUJhc2USIwoESXRlbRgBIAEoCzINLmNmZy5UZXN0SXRlbUgAUgRJdGVtEjIKCU'
    'VxdWlwbWVudBgCIAEoCzISLmNmZy5UZXN0RXF1aXBtZW50SABSCUVxdWlwbWVudBIyCglEZWNv'
    'cmF0b3IYAyABKAsyEi5jZmcuVGVzdERlY29yYXRvckgAUglEZWNvcmF0b3JCBwoFdmFsdWU=');

@$core.Deprecated('Use testDecoratorDescriptor instead')
const TestDecorator$json = {
  '1': 'TestDecorator',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'duration', '3': 4, '4': 1, '5': 5, '10': 'duration'},
  ],
};

/// Descriptor for `TestDecorator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testDecoratorDescriptor = $convert.base64Decode(
    'Cg1UZXN0RGVjb3JhdG9yEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBG'
    'Rlc2MYAyABKAlSBGRlc2MSGgoIZHVyYXRpb24YBCABKAVSCGR1cmF0aW9u');

@$core.Deprecated('Use testEquipmentDescriptor instead')
const TestEquipment$json = {
  '1': 'TestEquipment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'attr', '3': 4, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '10': 'attr'},
    {'1': 'value', '3': 5, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `TestEquipment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testEquipmentDescriptor = $convert.base64Decode(
    'Cg1UZXN0RXF1aXBtZW50Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBG'
    'Rlc2MYAyABKAlSBGRlc2MSJQoEYXR0chgEIAEoDjIRLmNmZy5UZXN0RGVtb0VudW1SBGF0dHIS'
    'FAoFdmFsdWUYBSABKAVSBXZhbHVl');

@$core.Deprecated('Use testItemDescriptor instead')
const TestItem$json = {
  '1': 'TestItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'num', '3': 4, '4': 1, '5': 5, '10': 'num'},
    {'1': 'price', '3': 5, '4': 1, '5': 5, '10': 'price'},
  ],
};

/// Descriptor for `TestItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testItemDescriptor = $convert.base64Decode(
    'CghUZXN0SXRlbRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkZXNjGA'
    'MgASgJUgRkZXNjEhAKA251bRgEIAEoBVIDbnVtEhQKBXByaWNlGAUgASgFUgVwcmljZQ==');

@$core.Deprecated('Use testMultiIndexListDescriptor instead')
const TestMultiIndexList$json = {
  '1': 'TestMultiIndexList',
  '2': [
    {'1': 'id1', '3': 1, '4': 1, '5': 5, '10': 'id1'},
    {'1': 'id2', '3': 2, '4': 1, '5': 3, '10': 'id2'},
    {'1': 'id3', '3': 3, '4': 1, '5': 9, '10': 'id3'},
    {'1': 'num', '3': 4, '4': 1, '5': 5, '10': 'num'},
    {'1': 'desc', '3': 5, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `TestMultiIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiIndexListDescriptor = $convert.base64Decode(
    'ChJUZXN0TXVsdGlJbmRleExpc3QSEAoDaWQxGAEgASgFUgNpZDESEAoDaWQyGAIgASgDUgNpZD'
    'ISEAoDaWQzGAMgASgJUgNpZDMSEAoDbnVtGAQgASgFUgNudW0SEgoEZGVzYxgFIAEoCVIEZGVz'
    'Yw==');

@$core.Deprecated('Use testMultiRowRecordDescriptor instead')
const TestMultiRowRecord$json = {
  '1': 'TestMultiRowRecord',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'one_rows',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowType1',
      '8': {'2': false},
      '10': 'oneRows',
    },
    {
      '1': 'multi_rows1',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowType1',
      '8': {'2': false},
      '10': 'multiRows1',
    },
    {
      '1': 'multi_rows2',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowType1',
      '8': {'2': false},
      '10': 'multiRows2',
    },
    {'1': 'multi_rows4', '3': 6, '4': 3, '5': 11, '6': '.cfg.TestMultiRowRecord.MultiRows4Entry', '10': 'multiRows4'},
    {
      '1': 'multi_rows5',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowType3',
      '8': {'2': false},
      '10': 'multiRows5',
    },
    {'1': 'multi_rows6', '3': 8, '4': 3, '5': 11, '6': '.cfg.TestMultiRowRecord.MultiRows6Entry', '10': 'multiRows6'},
    {'1': 'multi_rows7', '3': 9, '4': 3, '5': 11, '6': '.cfg.TestMultiRowRecord.MultiRows7Entry', '10': 'multiRows7'},
  ],
  '3': [TestMultiRowRecord_MultiRows4Entry$json, TestMultiRowRecord_MultiRows6Entry$json, TestMultiRowRecord_MultiRows7Entry$json],
};

@$core.Deprecated('Use testMultiRowRecordDescriptor instead')
const TestMultiRowRecord_MultiRows4Entry$json = {
  '1': 'MultiRows4Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestMultiRowType2', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testMultiRowRecordDescriptor instead')
const TestMultiRowRecord_MultiRows6Entry$json = {
  '1': 'MultiRows6Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestMultiRowType2', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testMultiRowRecordDescriptor instead')
const TestMultiRowRecord_MultiRows7Entry$json = {
  '1': 'MultiRows7Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestMultiRowRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiRowRecordDescriptor = $convert.base64Decode(
    'ChJUZXN0TXVsdGlSb3dSZWNvcmQSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USNQoIb25lX3Jvd3MYAyADKAsyFi5jZmcuVGVzdE11bHRpUm93VHlwZTFCAhAAUgdvbmVSb3dz'
    'EjsKC211bHRpX3Jvd3MxGAQgAygLMhYuY2ZnLlRlc3RNdWx0aVJvd1R5cGUxQgIQAFIKbXVsdG'
    'lSb3dzMRI7CgttdWx0aV9yb3dzMhgFIAMoCzIWLmNmZy5UZXN0TXVsdGlSb3dUeXBlMUICEABS'
    'Cm11bHRpUm93czISSAoLbXVsdGlfcm93czQYBiADKAsyJy5jZmcuVGVzdE11bHRpUm93UmVjb3'
    'JkLk11bHRpUm93czRFbnRyeVIKbXVsdGlSb3dzNBI7CgttdWx0aV9yb3dzNRgHIAMoCzIWLmNm'
    'Zy5UZXN0TXVsdGlSb3dUeXBlM0ICEABSCm11bHRpUm93czUSSAoLbXVsdGlfcm93czYYCCADKA'
    'syJy5jZmcuVGVzdE11bHRpUm93UmVjb3JkLk11bHRpUm93czZFbnRyeVIKbXVsdGlSb3dzNhJI'
    'CgttdWx0aV9yb3dzNxgJIAMoCzInLmNmZy5UZXN0TXVsdGlSb3dSZWNvcmQuTXVsdGlSb3dzN0'
    'VudHJ5UgptdWx0aVJvd3M3GlUKD011bHRpUm93czRFbnRyeRIQCgNrZXkYASABKAVSA2tleRIs'
    'CgV2YWx1ZRgCIAEoCzIWLmNmZy5UZXN0TXVsdGlSb3dUeXBlMlIFdmFsdWU6AjgBGlUKD011bH'
    'RpUm93czZFbnRyeRIQCgNrZXkYASABKAVSA2tleRIsCgV2YWx1ZRgCIAEoCzIWLmNmZy5UZXN0'
    'TXVsdGlSb3dUeXBlMlIFdmFsdWU6AjgBGj0KD011bHRpUm93czdFbnRyeRIQCgNrZXkYASABKA'
    'VSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgB');

@$core.Deprecated('Use testMultiRowTitleDescriptor instead')
const TestMultiRowTitle$json = {
  '1': 'TestMultiRowTitle',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'x1', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestH1', '10': 'x1'},
    {'1': 'x2_0', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestH2', '9': 0, '10': 'x20', '17': true},
    {
      '1': 'x2',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestH2',
      '8': {'2': false},
      '10': 'x2',
    },
    {
      '1': 'x3',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestH2',
      '8': {'2': false},
      '10': 'x3',
    },
    {
      '1': 'x4',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestH2',
      '8': {'2': false},
      '10': 'x4',
    },
  ],
  '8': [
    {'1': '_x2_0'},
  ],
};

/// Descriptor for `TestMultiRowTitle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiRowTitleDescriptor = $convert.base64Decode(
    'ChFUZXN0TXVsdGlSb3dUaXRsZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IbCgJ4MRgDIAEoCzILLmNmZy5UZXN0SDFSAngxEiMKBHgyXzAYBCABKAsyCy5jZmcuVGVzdEgy'
    'SABSA3gyMIgBARIfCgJ4MhgFIAMoCzILLmNmZy5UZXN0SDJCAhAAUgJ4MhIfCgJ4MxgGIAMoCz'
    'ILLmNmZy5UZXN0SDJCAhAAUgJ4MxIfCgJ4NBgHIAMoCzILLmNmZy5UZXN0SDJCAhAAUgJ4NEIH'
    'CgVfeDJfMA==');

@$core.Deprecated('Use testMultiRowType1Descriptor instead')
const TestMultiRowType1$json = {
  '1': 'TestMultiRowType1',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x', '3': 2, '4': 1, '5': 5, '10': 'x'},
  ],
};

/// Descriptor for `TestMultiRowType1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiRowType1Descriptor = $convert.base64Decode(
    'ChFUZXN0TXVsdGlSb3dUeXBlMRIOCgJpZBgBIAEoBVICaWQSDAoBeBgCIAEoBVIBeA==');

@$core.Deprecated('Use testMultiRowType2Descriptor instead')
const TestMultiRowType2$json = {
  '1': 'TestMultiRowType2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x', '3': 2, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 3, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `TestMultiRowType2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiRowType2Descriptor = $convert.base64Decode(
    'ChFUZXN0TXVsdGlSb3dUeXBlMhIOCgJpZBgBIAEoBVICaWQSDAoBeBgCIAEoBVIBeBIMCgF5GA'
    'MgASgCUgF5');

@$core.Deprecated('Use testMultiRowType3Descriptor instead')
const TestMultiRowType3$json = {
  '1': 'TestMultiRowType3',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowType1',
      '8': {'2': false},
      '10': 'items',
    },
  ],
};

/// Descriptor for `TestMultiRowType3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiRowType3Descriptor = $convert.base64Decode(
    'ChFUZXN0TXVsdGlSb3dUeXBlMxIOCgJpZBgBIAEoBVICaWQSMAoFaXRlbXMYAiADKAsyFi5jZm'
    'cuVGVzdE11bHRpUm93VHlwZTFCAhAAUgVpdGVtcw==');

@$core.Deprecated('Use testMultiUnionIndexListDescriptor instead')
const TestMultiUnionIndexList$json = {
  '1': 'TestMultiUnionIndexList',
  '2': [
    {'1': 'id1', '3': 1, '4': 1, '5': 5, '10': 'id1'},
    {'1': 'id2', '3': 2, '4': 1, '5': 3, '10': 'id2'},
    {'1': 'id3', '3': 3, '4': 1, '5': 9, '10': 'id3'},
    {'1': 'num', '3': 4, '4': 1, '5': 5, '10': 'num'},
    {'1': 'desc', '3': 5, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `TestMultiUnionIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMultiUnionIndexListDescriptor = $convert.base64Decode(
    'ChdUZXN0TXVsdGlVbmlvbkluZGV4TGlzdBIQCgNpZDEYASABKAVSA2lkMRIQCgNpZDIYAiABKA'
    'NSA2lkMhIQCgNpZDMYAyABKAlSA2lkMxIQCgNudW0YBCABKAVSA251bRISCgRkZXNjGAUgASgJ'
    'UgRkZXNj');

@$core.Deprecated('Use testNotIndexListDescriptor instead')
const TestNotIndexList$json = {
  '1': 'TestNotIndexList',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
  ],
};

/// Descriptor for `TestNotIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testNotIndexListDescriptor = $convert.base64Decode(
    'ChBUZXN0Tm90SW5kZXhMaXN0EgwKAXgYASABKAVSAXgSDAoBeRgCIAEoBVIBeQ==');

@$core.Deprecated('Use testPathDescriptor instead')
const TestPath$json = {
  '1': 'TestPath',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'res', '3': 2, '4': 1, '5': 9, '10': 'res'},
  ],
};

/// Descriptor for `TestPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testPathDescriptor = $convert.base64Decode(
    'CghUZXN0UGF0aBIOCgJpZBgBIAEoBVICaWQSEAoDcmVzGAIgASgJUgNyZXM=');

@$core.Deprecated('Use testRefDynamicBaseDescriptor instead')
const TestRefDynamicBase$json = {
  '1': 'TestRefDynamicBase',
  '2': [
    {'1': 'RefBean', '3': 1, '4': 1, '5': 11, '6': '.cfg.TestRefBean', '9': 0, '10': 'RefBean'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `TestRefDynamicBase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testRefDynamicBaseDescriptor = $convert.base64Decode(
    'ChJUZXN0UmVmRHluYW1pY0Jhc2USLAoHUmVmQmVhbhgBIAEoCzIQLmNmZy5UZXN0UmVmQmVhbk'
    'gAUgdSZWZCZWFuQgcKBXZhbHVl');

@$core.Deprecated('Use testRefBeanDescriptor instead')
const TestRefBean$json = {
  '1': 'TestRefBean',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {
      '1': 'arr',
      '3': 2,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'arr',
    },
  ],
};

/// Descriptor for `TestRefBean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testRefBeanDescriptor = $convert.base64Decode(
    'CgtUZXN0UmVmQmVhbhIMCgF4GAEgASgFUgF4EhQKA2FychgCIAMoBUICEAFSA2Fycg==');

@$core.Deprecated('Use testSepBean1Descriptor instead')
const TestSepBean1$json = {
  '1': 'TestSepBean1',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 5, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 5, '10': 'b'},
    {'1': 'c', '3': 3, '4': 1, '5': 9, '10': 'c'},
  ],
};

/// Descriptor for `TestSepBean1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testSepBean1Descriptor = $convert.base64Decode(
    'CgxUZXN0U2VwQmVhbjESDAoBYRgBIAEoBVIBYRIMCgFiGAIgASgFUgFiEgwKAWMYAyABKAlSAW'
    'M=');

@$core.Deprecated('Use testSepVectorDescriptor instead')
const TestSepVector$json = {
  '1': 'TestSepVector',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 5, '10': 'z'},
  ],
};

/// Descriptor for `TestSepVector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testSepVectorDescriptor = $convert.base64Decode(
    'Cg1UZXN0U2VwVmVjdG9yEgwKAXgYASABKAVSAXgSDAoBeRgCIAEoBVIBeRIMCgF6GAMgASgFUg'
    'F6');

@$core.Deprecated('Use testShapeDescriptor instead')
const TestShape$json = {
  '1': 'TestShape',
  '2': [
    {'1': 'Circle', '3': 1, '4': 1, '5': 11, '6': '.cfg.TestCircle', '9': 0, '10': 'Circle'},
    {'1': 'Rectangle', '3': 2, '4': 1, '5': 11, '6': '.cfg.Test2Rectangle', '9': 0, '10': 'Rectangle'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `TestShape`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testShapeDescriptor = $convert.base64Decode(
    'CglUZXN0U2hhcGUSKQoGQ2lyY2xlGAEgASgLMg8uY2ZnLlRlc3RDaXJjbGVIAFIGQ2lyY2xlEj'
    'MKCVJlY3RhbmdsZRgCIAEoCzITLmNmZy5UZXN0MlJlY3RhbmdsZUgAUglSZWN0YW5nbGVCBwoF'
    'dmFsdWU=');

@$core.Deprecated('Use testCircleDescriptor instead')
const TestCircle$json = {
  '1': 'TestCircle',
  '2': [
    {'1': 'radius', '3': 1, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `TestCircle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testCircleDescriptor = $convert.base64Decode(
    'CgpUZXN0Q2lyY2xlEhYKBnJhZGl1cxgBIAEoAlIGcmFkaXVz');

@$core.Deprecated('Use test2RectangleDescriptor instead')
const Test2Rectangle$json = {
  '1': 'Test2Rectangle',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 2, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 2, '10': 'height'},
  ],
};

/// Descriptor for `Test2Rectangle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List test2RectangleDescriptor = $convert.base64Decode(
    'Cg5UZXN0MlJlY3RhbmdsZRIUCgV3aWR0aBgBIAEoAlIFd2lkdGgSFgoGaGVpZ2h0GAIgASgCUg'
    'ZoZWlnaHQ=');

@$core.Deprecated('Use testTest3Descriptor instead')
const TestTest3$json = {
  '1': 'TestTest3',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
  ],
};

/// Descriptor for `TestTest3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTest3Descriptor = $convert.base64Decode(
    'CglUZXN0VGVzdDMSDAoBeBgBIAEoBVIBeBIMCgF5GAIgASgFUgF5');

@$core.Deprecated('Use testTestBeRefDescriptor instead')
const TestTestBeRef$json = {
  '1': 'TestTestBeRef',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `TestTestBeRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestBeRefDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGVzdEJlUmVmEg4KAmlkGAEgASgFUgJpZBIUCgVjb3VudBgCIAEoBVIFY291bnQ=');

@$core.Deprecated('Use testTestExcelBean1Descriptor instead')
const TestTestExcelBean1$json = {
  '1': 'TestTestExcelBean1',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 9, '10': 'x2'},
    {'1': 'x3', '3': 3, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 4, '4': 1, '5': 2, '10': 'x4'},
  ],
};

/// Descriptor for `TestTestExcelBean1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestExcelBean1Descriptor = $convert.base64Decode(
    'ChJUZXN0VGVzdEV4Y2VsQmVhbjESDgoCeDEYASABKAVSAngxEg4KAngyGAIgASgJUgJ4MhIOCg'
    'J4MxgDIAEoBVICeDMSDgoCeDQYBCABKAJSAng0');

@$core.Deprecated('Use testTestExcelBean2Descriptor instead')
const TestTestExcelBean2$json = {
  '1': 'TestTestExcelBean2',
  '2': [
    {'1': 'y1', '3': 1, '4': 1, '5': 5, '10': 'y1'},
    {'1': 'y2', '3': 2, '4': 1, '5': 9, '10': 'y2'},
    {'1': 'y3', '3': 3, '4': 1, '5': 2, '10': 'y3'},
  ],
};

/// Descriptor for `TestTestExcelBean2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestExcelBean2Descriptor = $convert.base64Decode(
    'ChJUZXN0VGVzdEV4Y2VsQmVhbjISDgoCeTEYASABKAVSAnkxEg4KAnkyGAIgASgJUgJ5MhIOCg'
    'J5MxgDIAEoAlICeTM=');

@$core.Deprecated('Use testTestFieldAliasDescriptor instead')
const TestTestFieldAlias$json = {
  '1': 'TestTestFieldAlias',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TestTestFieldAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestFieldAliasDescriptor = $convert.base64Decode(
    'ChJUZXN0VGVzdEZpZWxkQWxpYXMSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'U=');

@$core.Deprecated('Use testTestFieldVariantDescriptor instead')
const TestTestFieldVariant$json = {
  '1': 'TestTestFieldVariant',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TestTestFieldVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestFieldVariantDescriptor = $convert.base64Decode(
    'ChRUZXN0VGVzdEZpZWxkVmFyaWFudBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZQ==');

@$core.Deprecated('Use testTestFieldVariant2Descriptor instead')
const TestTestFieldVariant2$json = {
  '1': 'TestTestFieldVariant2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TestTestFieldVariant2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestFieldVariant2Descriptor = $convert.base64Decode(
    'ChVUZXN0VGVzdEZpZWxkVmFyaWFudDISDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG'
    '5hbWU=');

@$core.Deprecated('Use testTestGlobalDescriptor instead')
const TestTestGlobal$json = {
  '1': 'TestTestGlobal',
  '2': [
    {'1': 'unlock_equip', '3': 1, '4': 1, '5': 5, '10': 'unlockEquip'},
    {'1': 'unlock_hero', '3': 2, '4': 1, '5': 5, '10': 'unlockHero'},
  ],
};

/// Descriptor for `TestTestGlobal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestGlobalDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGVzdEdsb2JhbBIhCgx1bmxvY2tfZXF1aXAYASABKAVSC3VubG9ja0VxdWlwEh8KC3'
    'VubG9ja19oZXJvGAIgASgFUgp1bmxvY2tIZXJv');

@$core.Deprecated('Use testTestIndexDescriptor instead')
const TestTestIndex$json = {
  '1': 'TestTestIndex',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'eles',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoType1',
      '8': {'2': false},
      '10': 'eles',
    },
  ],
};

/// Descriptor for `TestTestIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestIndexDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGVzdEluZGV4Eg4KAmlkGAEgASgFUgJpZBIqCgRlbGVzGAIgAygLMhIuY2ZnLlRlc3'
    'REZW1vVHlwZTFCAhAAUgRlbGVz');

@$core.Deprecated('Use testTestMapDescriptor instead')
const TestTestMap$json = {
  '1': 'TestTestMap',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 3, '5': 11, '6': '.cfg.TestTestMap.X1Entry', '10': 'x1'},
    {'1': 'x2', '3': 3, '4': 3, '5': 11, '6': '.cfg.TestTestMap.X2Entry', '10': 'x2'},
    {'1': 'x3', '3': 4, '4': 3, '5': 11, '6': '.cfg.TestTestMap.X3Entry', '10': 'x3'},
    {'1': 'x4', '3': 5, '4': 3, '5': 11, '6': '.cfg.TestTestMap.X4Entry', '10': 'x4'},
  ],
  '3': [TestTestMap_X1Entry$json, TestTestMap_X2Entry$json, TestTestMap_X3Entry$json, TestTestMap_X4Entry$json],
};

@$core.Deprecated('Use testTestMapDescriptor instead')
const TestTestMap_X1Entry$json = {
  '1': 'X1Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testTestMapDescriptor instead')
const TestTestMap_X2Entry$json = {
  '1': 'X2Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testTestMapDescriptor instead')
const TestTestMap_X3Entry$json = {
  '1': 'X3Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testTestMapDescriptor instead')
const TestTestMap_X4Entry$json = {
  '1': 'X4Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestTestMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestMapDescriptor = $convert.base64Decode(
    'CgtUZXN0VGVzdE1hcBIOCgJpZBgBIAEoBVICaWQSKAoCeDEYAiADKAsyGC5jZmcuVGVzdFRlc3'
    'RNYXAuWDFFbnRyeVICeDESKAoCeDIYAyADKAsyGC5jZmcuVGVzdFRlc3RNYXAuWDJFbnRyeVIC'
    'eDISKAoCeDMYBCADKAsyGC5jZmcuVGVzdFRlc3RNYXAuWDNFbnRyeVICeDMSKAoCeDQYBSADKA'
    'syGC5jZmcuVGVzdFRlc3RNYXAuWDRFbnRyeVICeDQaNQoHWDFFbnRyeRIQCgNrZXkYASABKAVS'
    'A2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBGjUKB1gyRW50cnkSEAoDa2V5GAEgASgDUg'
    'NrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ARo1CgdYM0VudHJ5EhAKA2tleRgBIAEoCVID'
    'a2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAEaNQoHWDRFbnRyeRIQCgNrZXkYASABKAVSA2'
    'tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgB');

@$core.Deprecated('Use testTestMapperDescriptor instead')
const TestTestMapper$json = {
  '1': 'TestTestMapper',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'audio_type', '3': 2, '4': 1, '5': 14, '6': '.cfg.AudioType', '10': 'audioType'},
    {'1': 'v2', '3': 3, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
  ],
};

/// Descriptor for `TestTestMapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestMapperDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGVzdE1hcHBlchIOCgJpZBgBIAEoBVICaWQSLQoKYXVkaW9fdHlwZRgCIAEoDjIOLm'
    'NmZy5BdWRpb1R5cGVSCWF1ZGlvVHlwZRIZCgJ2MhgDIAEoCzIJLmNmZy52ZWMyUgJ2Mg==');

@$core.Deprecated('Use testTestMultiColumnDescriptor instead')
const TestTestMultiColumn$json = {
  '1': 'TestTestMultiColumn',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'a', '3': 2, '4': 1, '5': 11, '6': '.cfg.TestFoo', '10': 'a'},
    {'1': 'b', '3': 3, '4': 1, '5': 11, '6': '.cfg.TestFoo', '10': 'b'},
    {'1': 'c', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestFoo', '10': 'c'},
  ],
};

/// Descriptor for `TestTestMultiColumn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestMultiColumnDescriptor = $convert.base64Decode(
    'ChNUZXN0VGVzdE11bHRpQ29sdW1uEg4KAmlkGAEgASgFUgJpZBIaCgFhGAIgASgLMgwuY2ZnLl'
    'Rlc3RGb29SAWESGgoBYhgDIAEoCzIMLmNmZy5UZXN0Rm9vUgFiEhoKAWMYBCABKAsyDC5jZmcu'
    'VGVzdEZvb1IBYw==');

@$core.Deprecated('Use testTestNullDescriptor instead')
const TestTestNull$json = {
  '1': 'TestTestNull',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'x1', '17': true},
    {'1': 'x2', '3': 3, '4': 1, '5': 14, '6': '.cfg.TestDemoEnum', '9': 1, '10': 'x2', '17': true},
    {'1': 'x3', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestDemoType1', '9': 2, '10': 'x3', '17': true},
    {'1': 'x4', '3': 5, '4': 1, '5': 11, '6': '.cfg.TestDemoDynamic', '9': 3, '10': 'x4', '17': true},
    {'1': 's1', '3': 6, '4': 1, '5': 9, '9': 4, '10': 's1', '17': true},
    {'1': 's2', '3': 7, '4': 1, '5': 9, '9': 5, '10': 's2', '17': true},
  ],
  '8': [
    {'1': '_x1'},
    {'1': '_x2'},
    {'1': '_x3'},
    {'1': '_x4'},
    {'1': '_s1'},
    {'1': '_s2'},
  ],
};

/// Descriptor for `TestTestNull`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestNullDescriptor = $convert.base64Decode(
    'CgxUZXN0VGVzdE51bGwSDgoCaWQYASABKAVSAmlkEhMKAngxGAIgASgFSABSAngxiAEBEiYKAn'
    'gyGAMgASgOMhEuY2ZnLlRlc3REZW1vRW51bUgBUgJ4MogBARInCgJ4MxgEIAEoCzISLmNmZy5U'
    'ZXN0RGVtb1R5cGUxSAJSAngziAEBEikKAng0GAUgASgLMhQuY2ZnLlRlc3REZW1vRHluYW1pY0'
    'gDUgJ4NIgBARITCgJzMRgGIAEoCUgEUgJzMYgBARITCgJzMhgHIAEoCUgFUgJzMogBAUIFCgNf'
    'eDFCBQoDX3gyQgUKA194M0IFCgNfeDRCBQoDX3MxQgUKA19zMg==');

@$core.Deprecated('Use testTestRangeDescriptor instead')
const TestTestRange$json = {
  '1': 'TestTestRange',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'f1', '3': 2, '4': 1, '5': 2, '10': 'f1'},
    {'1': 'f2', '3': 3, '4': 1, '5': 2, '10': 'f2'},
    {'1': 'd1', '3': 4, '4': 1, '5': 1, '10': 'd1'},
    {'1': 'd2', '3': 5, '4': 1, '5': 1, '10': 'd2'},
    {'1': 'i1', '3': 6, '4': 1, '5': 5, '10': 'i1'},
    {'1': 'i2', '3': 7, '4': 1, '5': 5, '10': 'i2'},
    {'1': 'i3', '3': 8, '4': 1, '5': 5, '10': 'i3'},
    {'1': 'i4', '3': 9, '4': 1, '5': 5, '10': 'i4'},
    {'1': 'l1', '3': 10, '4': 1, '5': 3, '10': 'l1'},
    {'1': 'l2', '3': 11, '4': 1, '5': 3, '10': 'l2'},
    {'1': 'l3', '3': 12, '4': 1, '5': 3, '10': 'l3'},
    {'1': 'l4', '3': 13, '4': 1, '5': 3, '10': 'l4'},
  ],
};

/// Descriptor for `TestTestRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestRangeDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGVzdFJhbmdlEg4KAmlkGAEgASgFUgJpZBIOCgJmMRgCIAEoAlICZjESDgoCZjIYAy'
    'ABKAJSAmYyEg4KAmQxGAQgASgBUgJkMRIOCgJkMhgFIAEoAVICZDISDgoCaTEYBiABKAVSAmkx'
    'Eg4KAmkyGAcgASgFUgJpMhIOCgJpMxgIIAEoBVICaTMSDgoCaTQYCSABKAVSAmk0Eg4KAmwxGA'
    'ogASgDUgJsMRIOCgJsMhgLIAEoA1ICbDISDgoCbDMYDCABKANSAmwzEg4KAmw0GA0gASgDUgJs'
    'NA==');

@$core.Deprecated('Use testTestRefDescriptor instead')
const TestTestRef$json = {
  '1': 'TestTestRef',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x1', '3': 2, '4': 1, '5': 5, '10': 'x1'},
    {'1': 'x1_2', '3': 3, '4': 1, '5': 5, '10': 'x12'},
    {'1': 'x2', '3': 4, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 5, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 6, '4': 1, '5': 5, '10': 'x4'},
    {
      '1': 'a1',
      '3': 7,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'a1',
    },
    {
      '1': 'a2',
      '3': 8,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'a2',
    },
    {
      '1': 'b1',
      '3': 9,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'b1',
    },
    {
      '1': 'b2',
      '3': 10,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'b2',
    },
    {
      '1': 'c1',
      '3': 11,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'c1',
    },
    {
      '1': 'c2',
      '3': 12,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'c2',
    },
    {'1': 'd1', '3': 13, '4': 3, '5': 11, '6': '.cfg.TestTestRef.D1Entry', '10': 'd1'},
    {'1': 'd2', '3': 14, '4': 3, '5': 11, '6': '.cfg.TestTestRef.D2Entry', '10': 'd2'},
    {'1': 'e1', '3': 15, '4': 1, '5': 5, '10': 'e1'},
    {'1': 'e2', '3': 16, '4': 1, '5': 3, '10': 'e2'},
    {'1': 'e3', '3': 17, '4': 1, '5': 9, '10': 'e3'},
    {'1': 'f1', '3': 18, '4': 1, '5': 5, '10': 'f1'},
    {'1': 'f2', '3': 19, '4': 1, '5': 3, '10': 'f2'},
    {'1': 'f3', '3': 20, '4': 1, '5': 9, '10': 'f3'},
    {'1': 's1', '3': 21, '4': 1, '5': 11, '6': '.cfg.TestRefDynamicBase', '10': 's1'},
  ],
  '3': [TestTestRef_D1Entry$json, TestTestRef_D2Entry$json],
};

@$core.Deprecated('Use testTestRefDescriptor instead')
const TestTestRef_D1Entry$json = {
  '1': 'D1Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use testTestRefDescriptor instead')
const TestTestRef_D2Entry$json = {
  '1': 'D2Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestTestRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestRefDescriptor = $convert.base64Decode(
    'CgtUZXN0VGVzdFJlZhIOCgJpZBgBIAEoBVICaWQSDgoCeDEYAiABKAVSAngxEhEKBHgxXzIYAy'
    'ABKAVSA3gxMhIOCgJ4MhgEIAEoBVICeDISDgoCeDMYBSABKAVSAngzEg4KAng0GAYgASgFUgJ4'
    'NBISCgJhMRgHIAMoBUICEAFSAmExEhIKAmEyGAggAygFQgIQAVICYTISEgoCYjEYCSADKAVCAh'
    'ABUgJiMRISCgJiMhgKIAMoBUICEAFSAmIyEhIKAmMxGAsgAygFQgIQAVICYzESEgoCYzIYDCAD'
    'KAVCAhABUgJjMhIoCgJkMRgNIAMoCzIYLmNmZy5UZXN0VGVzdFJlZi5EMUVudHJ5UgJkMRIoCg'
    'JkMhgOIAMoCzIYLmNmZy5UZXN0VGVzdFJlZi5EMkVudHJ5UgJkMhIOCgJlMRgPIAEoBVICZTES'
    'DgoCZTIYECABKANSAmUyEg4KAmUzGBEgASgJUgJlMxIOCgJmMRgSIAEoBVICZjESDgoCZjIYEy'
    'ABKANSAmYyEg4KAmYzGBQgASgJUgJmMxInCgJzMRgVIAEoCzIXLmNmZy5UZXN0UmVmRHluYW1p'
    'Y0Jhc2VSAnMxGjUKB0QxRW50cnkSEAoDa2V5GAEgASgFUgNrZXkSFAoFdmFsdWUYAiABKAVSBX'
    'ZhbHVlOgI4ARo1CgdEMkVudHJ5EhAKA2tleRgBIAEoBVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2'
    'YWx1ZToCOAE=');

@$core.Deprecated('Use testTestRowDescriptor instead')
const TestTestRow$json = {
  '1': 'TestTestRow',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 8, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 9, '10': 'z'},
    {'1': 'a', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestTest3', '10': 'a'},
    {
      '1': 'b',
      '3': 5,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'b',
    },
  ],
};

/// Descriptor for `TestTestRow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestRowDescriptor = $convert.base64Decode(
    'CgtUZXN0VGVzdFJvdxIMCgF4GAEgASgFUgF4EgwKAXkYAiABKAhSAXkSDAoBehgDIAEoCVIBeh'
    'IcCgFhGAQgASgLMg4uY2ZnLlRlc3RUZXN0M1IBYRIQCgFiGAUgAygFQgIQAVIBYg==');

@$core.Deprecated('Use testTestScriptableObjectDescriptor instead')
const TestTestScriptableObject$json = {
  '1': 'TestTestScriptableObject',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'rate', '3': 3, '4': 1, '5': 2, '10': 'rate'},
    {'1': 'num', '3': 4, '4': 1, '5': 5, '10': 'num'},
    {'1': 'v2', '3': 5, '4': 1, '5': 11, '6': '.cfg.vec2', '10': 'v2'},
    {'1': 'v3', '3': 6, '4': 1, '5': 11, '6': '.cfg.vec3', '10': 'v3'},
    {'1': 'v4', '3': 7, '4': 1, '5': 11, '6': '.cfg.vec4', '10': 'v4'},
  ],
};

/// Descriptor for `TestTestScriptableObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestScriptableObjectDescriptor = $convert.base64Decode(
    'ChhUZXN0VGVzdFNjcmlwdGFibGVPYmplY3QSDgoCaWQYASABKAVSAmlkEhIKBGRlc2MYAiABKA'
    'lSBGRlc2MSEgoEcmF0ZRgDIAEoAlIEcmF0ZRIQCgNudW0YBCABKAVSA251bRIZCgJ2MhgFIAEo'
    'CzIJLmNmZy52ZWMyUgJ2MhIZCgJ2MxgGIAEoCzIJLmNmZy52ZWMzUgJ2MxIZCgJ2NBgHIAEoCz'
    'IJLmNmZy52ZWM0UgJ2NA==');

@$core.Deprecated('Use testTestSetDescriptor instead')
const TestTestSet$json = {
  '1': 'TestTestSet',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'x0', '3': 2, '4': 1, '5': 9, '10': 'x0'},
    {
      '1': 'x1',
      '3': 3,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'x1',
    },
    {
      '1': 'x2',
      '3': 4,
      '4': 3,
      '5': 3,
      '8': {'2': true},
      '10': 'x2',
    },
    {
      '1': 'x3',
      '3': 5,
      '4': 3,
      '5': 9,
      '8': {'2': false},
      '10': 'x3',
    },
    {
      '1': 'x4',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.cfg.TestDemoEnum',
      '8': {'2': false},
      '10': 'x4',
    },
  ],
};

/// Descriptor for `TestTestSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestSetDescriptor = $convert.base64Decode(
    'CgtUZXN0VGVzdFNldBIOCgJpZBgBIAEoBVICaWQSDgoCeDAYAiABKAlSAngwEhIKAngxGAMgAy'
    'gFQgIQAVICeDESEgoCeDIYBCADKANCAhABUgJ4MhISCgJ4MxgFIAMoCUICEABSAngzEiUKAng0'
    'GAYgAygOMhEuY2ZnLlRlc3REZW1vRW51bUICEABSAng0');

@$core.Deprecated('Use testTestSizeDescriptor instead')
const TestTestSize$json = {
  '1': 'TestTestSize',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'x1',
      '3': 2,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'x1',
    },
    {
      '1': 'x2',
      '3': 3,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'x2',
    },
    {
      '1': 'x3',
      '3': 4,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'x3',
    },
    {'1': 'x4', '3': 5, '4': 3, '5': 11, '6': '.cfg.TestTestSize.X4Entry', '10': 'x4'},
  ],
  '3': [TestTestSize_X4Entry$json],
};

@$core.Deprecated('Use testTestSizeDescriptor instead')
const TestTestSize_X4Entry$json = {
  '1': 'X4Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestTestSize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestSizeDescriptor = $convert.base64Decode(
    'CgxUZXN0VGVzdFNpemUSDgoCaWQYASABKAVSAmlkEhIKAngxGAIgAygFQgIQAVICeDESEgoCeD'
    'IYAyADKAVCAhABUgJ4MhISCgJ4MxgEIAMoBUICEAFSAngzEikKAng0GAUgAygLMhkuY2ZnLlRl'
    'c3RUZXN0U2l6ZS5YNEVudHJ5UgJ4NBo1CgdYNEVudHJ5EhAKA2tleRgBIAEoBVIDa2V5EhQKBX'
    'ZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use testTestStringDescriptor instead')
const TestTestString$json = {
  '1': 'TestTestString',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 's1', '3': 2, '4': 1, '5': 9, '10': 's1'},
    {'1': 's2', '3': 3, '4': 1, '5': 9, '10': 's2'},
    {'1': 'cs1', '3': 4, '4': 1, '5': 11, '6': '.cfg.TestCompactString', '10': 'cs1'},
    {'1': 'cs2', '3': 5, '4': 1, '5': 11, '6': '.cfg.TestCompactString', '10': 'cs2'},
  ],
};

/// Descriptor for `TestTestString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestStringDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGVzdFN0cmluZxIOCgJpZBgBIAEoCVICaWQSDgoCczEYAiABKAlSAnMxEg4KAnMyGA'
    'MgASgJUgJzMhIoCgNjczEYBCABKAsyFi5jZmcuVGVzdENvbXBhY3RTdHJpbmdSA2NzMRIoCgNj'
    'czIYBSABKAsyFi5jZmcuVGVzdENvbXBhY3RTdHJpbmdSA2NzMg==');

@$core.Deprecated('Use testTestUeTypeDescriptor instead')
const TestTestUeType$json = {
  '1': 'TestTestUeType',
  '2': [
    {'1': 'x1', '3': 1, '4': 1, '5': 8, '10': 'x1'},
    {'1': 'x2', '3': 2, '4': 1, '5': 5, '10': 'x2'},
    {'1': 'x3', '3': 3, '4': 1, '5': 5, '10': 'x3'},
    {'1': 'x4', '3': 4, '4': 1, '5': 5, '10': 'x4'},
    {'1': 'x5', '3': 5, '4': 1, '5': 3, '10': 'x5'},
    {'1': 'x6', '3': 6, '4': 1, '5': 2, '10': 'x6'},
    {'1': 'x10', '3': 7, '4': 1, '5': 9, '10': 'x10'},
    {'1': 'x12', '3': 8, '4': 1, '5': 11, '6': '.cfg.TestDemoType1', '10': 'x12'},
    {'1': 'x13', '3': 9, '4': 1, '5': 14, '6': '.cfg.TestETestUeType', '10': 'x13'},
    {'1': 't1', '3': 10, '4': 1, '5': 3, '10': 't1'},
    {
      '1': 'k1',
      '3': 11,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k1',
    },
    {
      '1': 'k2',
      '3': 12,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k2',
    },
    {
      '1': 'k5',
      '3': 13,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'k5',
    },
    {'1': 'k8', '3': 14, '4': 3, '5': 11, '6': '.cfg.TestTestUeType.K8Entry', '10': 'k8'},
    {
      '1': 'k9',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoE2',
      '8': {'2': false},
      '10': 'k9',
    },
  ],
  '3': [TestTestUeType_K8Entry$json],
};

@$core.Deprecated('Use testTestUeTypeDescriptor instead')
const TestTestUeType_K8Entry$json = {
  '1': 'K8Entry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TestTestUeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTestUeTypeDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGVzdFVlVHlwZRIOCgJ4MRgBIAEoCFICeDESDgoCeDIYAiABKAVSAngyEg4KAngzGA'
    'MgASgFUgJ4MxIOCgJ4NBgEIAEoBVICeDQSDgoCeDUYBSABKANSAng1Eg4KAng2GAYgASgCUgJ4'
    'NhIQCgN4MTAYByABKAlSA3gxMBIkCgN4MTIYCCABKAsyEi5jZmcuVGVzdERlbW9UeXBlMVIDeD'
    'EyEiYKA3gxMxgJIAEoDjIULmNmZy5UZXN0RVRlc3RVZVR5cGVSA3gxMxIOCgJ0MRgKIAEoA1IC'
    'dDESEgoCazEYCyADKAVCAhABUgJrMRISCgJrMhgMIAMoBUICEAFSAmsyEhIKAms1GA0gAygFQg'
    'IQAVICazUSKwoCazgYDiADKAsyGy5jZmcuVGVzdFRlc3RVZVR5cGUuSzhFbnRyeVICazgSIwoC'
    'azkYDyADKAsyDy5jZmcuVGVzdERlbW9FMkICEABSAms5GjUKB0s4RW50cnkSEAoDa2V5GAEgAS'
    'gFUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use vec2Descriptor instead')
const vec2$json = {
  '1': 'vec2',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `vec2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vec2Descriptor = $convert.base64Decode(
    'CgR2ZWMyEgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeQ==');

@$core.Deprecated('Use vec3Descriptor instead')
const vec3$json = {
  '1': 'vec3',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
  ],
};

/// Descriptor for `vec3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vec3Descriptor = $convert.base64Decode(
    'CgR2ZWMzEgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeRIMCgF6GAMgASgCUgF6');

@$core.Deprecated('Use vec4Descriptor instead')
const vec4$json = {
  '1': 'vec4',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
    {'1': 'w', '3': 4, '4': 1, '5': 2, '10': 'w'},
  ],
};

/// Descriptor for `vec4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vec4Descriptor = $convert.base64Decode(
    'CgR2ZWM0EgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeRIMCgF6GAMgASgCUgF6EgwKAXcYBC'
    'ABKAJSAXc=');

@$core.Deprecated('Use aiTbBlackboardDescriptor instead')
const AiTbBlackboard$json = {
  '1': 'AiTbBlackboard',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiBlackboard',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `AiTbBlackboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiTbBlackboardDescriptor = $convert.base64Decode(
    'Cg5BaVRiQmxhY2tib2FyZBIyCglkYXRhX2xpc3QYASADKAsyES5jZmcuQWlCbGFja2JvYXJkQg'
    'IQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use aiTbBehaviorTreeDescriptor instead')
const AiTbBehaviorTree$json = {
  '1': 'AiTbBehaviorTree',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.AiBehaviorTree',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `AiTbBehaviorTree`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiTbBehaviorTreeDescriptor = $convert.base64Decode(
    'ChBBaVRiQmVoYXZpb3JUcmVlEjQKCWRhdGFfbGlzdBgBIAMoCzITLmNmZy5BaUJlaGF2aW9yVH'
    'JlZUICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use commonTbGlobalConfigDescriptor instead')
const CommonTbGlobalConfig$json = {
  '1': 'CommonTbGlobalConfig',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.CommonGlobalConfig',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `CommonTbGlobalConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonTbGlobalConfigDescriptor = $convert.base64Decode(
    'ChRDb21tb25UYkdsb2JhbENvbmZpZxI4CglkYXRhX2xpc3QYASADKAsyFy5jZmcuQ29tbW9uR2'
    'xvYmFsQ29uZmlnQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use itemTbItemDescriptor instead')
const ItemTbItem$json = {
  '1': 'ItemTbItem',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.ItemItem',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `ItemTbItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemTbItemDescriptor = $convert.base64Decode(
    'CgpJdGVtVGJJdGVtEi4KCWRhdGFfbGlzdBgBIAMoCzINLmNmZy5JdGVtSXRlbUICEABSCGRhdG'
    'FMaXN0');

@$core.Deprecated('Use l10nTbL10NDemoDescriptor instead')
const L10nTbL10NDemo$json = {
  '1': 'L10nTbL10NDemo',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.L10nL10NDemo',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `L10nTbL10NDemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List l10nTbL10NDemoDescriptor = $convert.base64Decode(
    'Cg5MMTBuVGJMMTBORGVtbxIyCglkYXRhX2xpc3QYASADKAsyES5jZmcuTDEwbkwxME5EZW1vQg'
    'IQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use l10nTbPatchDemoDescriptor instead')
const L10nTbPatchDemo$json = {
  '1': 'L10nTbPatchDemo',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.L10nPatchDemo',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `L10nTbPatchDemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List l10nTbPatchDemoDescriptor = $convert.base64Decode(
    'Cg9MMTBuVGJQYXRjaERlbW8SMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLkwxMG5QYXRjaERlbW'
    '9CAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use tagTbTestTagDescriptor instead')
const TagTbTestTag$json = {
  '1': 'TagTbTestTag',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TagTestTag',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TagTbTestTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagTbTestTagDescriptor = $convert.base64Decode(
    'CgxUYWdUYlRlc3RUYWcSMAoJZGF0YV9saXN0GAEgAygLMg8uY2ZnLlRhZ1Rlc3RUYWdCAhAAUg'
    'hkYXRhTGlzdA==');

@$core.Deprecated('Use testTbFullTypesDescriptor instead')
const TestTbFullTypes$json = {
  '1': 'TestTbFullTypes',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoType2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbFullTypes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbFullTypesDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJGdWxsVHlwZXMSMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3REZW1vVHlwZT'
    'JCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbSingletonDescriptor instead')
const TestTbSingleton$json = {
  '1': 'TestTbSingleton',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoSingletonType',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbSingleton`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbSingletonDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJTaW5nbGV0b24SOwoJZGF0YV9saXN0GAEgAygLMhouY2ZnLlRlc3REZW1vU2luZ2'
    'xldG9uVHlwZUICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbNotIndexListDescriptor instead')
const TestTbNotIndexList$json = {
  '1': 'TestTbNotIndexList',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestNotIndexList',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbNotIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbNotIndexListDescriptor = $convert.base64Decode(
    'ChJUZXN0VGJOb3RJbmRleExpc3QSNgoJZGF0YV9saXN0GAEgAygLMhUuY2ZnLlRlc3ROb3RJbm'
    'RleExpc3RCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbMultiUnionIndexListDescriptor instead')
const TestTbMultiUnionIndexList$json = {
  '1': 'TestTbMultiUnionIndexList',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiUnionIndexList',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbMultiUnionIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbMultiUnionIndexListDescriptor = $convert.base64Decode(
    'ChlUZXN0VGJNdWx0aVVuaW9uSW5kZXhMaXN0Ej0KCWRhdGFfbGlzdBgBIAMoCzIcLmNmZy5UZX'
    'N0TXVsdGlVbmlvbkluZGV4TGlzdEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbMultiIndexListDescriptor instead')
const TestTbMultiIndexList$json = {
  '1': 'TestTbMultiIndexList',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiIndexList',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbMultiIndexList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbMultiIndexListDescriptor = $convert.base64Decode(
    'ChRUZXN0VGJNdWx0aUluZGV4TGlzdBI4CglkYXRhX2xpc3QYASADKAsyFy5jZmcuVGVzdE11bH'
    'RpSW5kZXhMaXN0QgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbDataFromMiscDescriptor instead')
const TestTbDataFromMisc$json = {
  '1': 'TestTbDataFromMisc',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoType2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDataFromMisc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDataFromMiscDescriptor = $convert.base64Decode(
    'ChJUZXN0VGJEYXRhRnJvbU1pc2MSMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3REZW1vVH'
    'lwZTJCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbMultiRowRecordDescriptor instead')
const TestTbMultiRowRecord$json = {
  '1': 'TestTbMultiRowRecord',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowRecord',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbMultiRowRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbMultiRowRecordDescriptor = $convert.base64Decode(
    'ChRUZXN0VGJNdWx0aVJvd1JlY29yZBI4CglkYXRhX2xpc3QYASADKAsyFy5jZmcuVGVzdE11bH'
    'RpUm93UmVjb3JkQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestMultiColumnDescriptor instead')
const TestTbTestMultiColumn$json = {
  '1': 'TestTbTestMultiColumn',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestMultiColumn',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestMultiColumn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestMultiColumnDescriptor = $convert.base64Decode(
    'ChVUZXN0VGJUZXN0TXVsdGlDb2x1bW4SOQoJZGF0YV9saXN0GAEgAygLMhguY2ZnLlRlc3RUZX'
    'N0TXVsdGlDb2x1bW5CAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbMultiRowTitleDescriptor instead')
const TestTbMultiRowTitle$json = {
  '1': 'TestTbMultiRowTitle',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestMultiRowTitle',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbMultiRowTitle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbMultiRowTitleDescriptor = $convert.base64Decode(
    'ChNUZXN0VGJNdWx0aVJvd1RpdGxlEjcKCWRhdGFfbGlzdBgBIAMoCzIWLmNmZy5UZXN0TXVsdG'
    'lSb3dUaXRsZUICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestNullDescriptor instead')
const TestTbTestNull$json = {
  '1': 'TestTbTestNull',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestNull',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestNull`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestNullDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGJUZXN0TnVsbBIyCglkYXRhX2xpc3QYASADKAsyES5jZmcuVGVzdFRlc3ROdWxsQg'
    'IQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbDemoPrimitiveDescriptor instead')
const TestTbDemoPrimitive$json = {
  '1': 'TestTbDemoPrimitive',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoPrimitiveTypesTable',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDemoPrimitive`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDemoPrimitiveDescriptor = $convert.base64Decode(
    'ChNUZXN0VGJEZW1vUHJpbWl0aXZlEkEKCWRhdGFfbGlzdBgBIAMoCzIgLmNmZy5UZXN0RGVtb1'
    'ByaW1pdGl2ZVR5cGVzVGFibGVCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbTestStringDescriptor instead')
const TestTbTestString$json = {
  '1': 'TestTbTestString',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestString',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestStringDescriptor = $convert.base64Decode(
    'ChBUZXN0VGJUZXN0U3RyaW5nEjQKCWRhdGFfbGlzdBgBIAMoCzITLmNmZy5UZXN0VGVzdFN0cm'
    'luZ0ICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbDemoGroupDescriptor instead')
const TestTbDemoGroup$json = {
  '1': 'TestTbDemoGroup',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoGroup',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDemoGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDemoGroupDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJEZW1vR3JvdXASMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3REZW1vR3JvdX'
    'BCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbDemoGroup_CDescriptor instead')
const TestTbDemoGroup_C$json = {
  '1': 'TestTbDemoGroup_C',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoGroup',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDemoGroup_C`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDemoGroup_CDescriptor = $convert.base64Decode(
    'ChFUZXN0VGJEZW1vR3JvdXBfQxIzCglkYXRhX2xpc3QYASADKAsyEi5jZmcuVGVzdERlbW9Hcm'
    '91cEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbDemoGroup_SDescriptor instead')
const TestTbDemoGroup_S$json = {
  '1': 'TestTbDemoGroup_S',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoGroup',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDemoGroup_S`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDemoGroup_SDescriptor = $convert.base64Decode(
    'ChFUZXN0VGJEZW1vR3JvdXBfUxIzCglkYXRhX2xpc3QYASADKAsyEi5jZmcuVGVzdERlbW9Hcm'
    '91cEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbDemoGroup_EDescriptor instead')
const TestTbDemoGroup_E$json = {
  '1': 'TestTbDemoGroup_E',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDemoGroup',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDemoGroup_E`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDemoGroup_EDescriptor = $convert.base64Decode(
    'ChFUZXN0VGJEZW1vR3JvdXBfRRIzCglkYXRhX2xpc3QYASADKAsyEi5jZmcuVGVzdERlbW9Hcm'
    '91cEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestGlobalDescriptor instead')
const TestTbTestGlobal$json = {
  '1': 'TestTbTestGlobal',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestGlobal',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestGlobal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestGlobalDescriptor = $convert.base64Decode(
    'ChBUZXN0VGJUZXN0R2xvYmFsEjQKCWRhdGFfbGlzdBgBIAMoCzITLmNmZy5UZXN0VGVzdEdsb2'
    'JhbEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestBeRefDescriptor instead')
const TestTbTestBeRef$json = {
  '1': 'TestTbTestBeRef',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestBeRef',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestBeRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestBeRefDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJUZXN0QmVSZWYSMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3RUZXN0QmVSZW'
    'ZCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbTestBeRef2Descriptor instead')
const TestTbTestBeRef2$json = {
  '1': 'TestTbTestBeRef2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestBeRef',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestBeRef2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestBeRef2Descriptor = $convert.base64Decode(
    'ChBUZXN0VGJUZXN0QmVSZWYyEjMKCWRhdGFfbGlzdBgBIAMoCzISLmNmZy5UZXN0VGVzdEJlUm'
    'VmQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestRefDescriptor instead')
const TestTbTestRef$json = {
  '1': 'TestTbTestRef',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestRef',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestRefDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGJUZXN0UmVmEjEKCWRhdGFfbGlzdBgBIAMoCzIQLmNmZy5UZXN0VGVzdFJlZkICEA'
    'BSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestSizeDescriptor instead')
const TestTbTestSize$json = {
  '1': 'TestTbTestSize',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestSize',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestSize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestSizeDescriptor = $convert.base64Decode(
    'Cg5UZXN0VGJUZXN0U2l6ZRIyCglkYXRhX2xpc3QYASADKAsyES5jZmcuVGVzdFRlc3RTaXplQg'
    'IQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestSetDescriptor instead')
const TestTbTestSet$json = {
  '1': 'TestTbTestSet',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestSet',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestSetDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGJUZXN0U2V0EjEKCWRhdGFfbGlzdBgBIAMoCzIQLmNmZy5UZXN0VGVzdFNldEICEA'
    'BSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestRangeDescriptor instead')
const TestTbTestRange$json = {
  '1': 'TestTbTestRange',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestRange',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestRangeDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJUZXN0UmFuZ2USMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3RUZXN0UmFuZ2'
    'VCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbDetectCsvEncodingDescriptor instead')
const TestTbDetectCsvEncoding$json = {
  '1': 'TestTbDetectCsvEncoding',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDetectEncoding',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDetectCsvEncoding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDetectCsvEncodingDescriptor = $convert.base64Decode(
    'ChdUZXN0VGJEZXRlY3RDc3ZFbmNvZGluZxI4CglkYXRhX2xpc3QYASADKAsyFy5jZmcuVGVzdE'
    'RldGVjdEVuY29kaW5nQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbItem2Descriptor instead')
const TestTbItem2$json = {
  '1': 'TestTbItem2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestItemBase',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbItem2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbItem2Descriptor = $convert.base64Decode(
    'CgtUZXN0VGJJdGVtMhIyCglkYXRhX2xpc3QYASADKAsyES5jZmcuVGVzdEl0ZW1CYXNlQgIQAF'
    'IIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestIndexDescriptor instead')
const TestTbTestIndex$json = {
  '1': 'TestTbTestIndex',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestIndex',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestIndexDescriptor = $convert.base64Decode(
    'Cg9UZXN0VGJUZXN0SW5kZXgSMwoJZGF0YV9saXN0GAEgAygLMhIuY2ZnLlRlc3RUZXN0SW5kZX'
    'hCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbTestMapDescriptor instead')
const TestTbTestMap$json = {
  '1': 'TestTbTestMap',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestMap',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestMapDescriptor = $convert.base64Decode(
    'Cg1UZXN0VGJUZXN0TWFwEjEKCWRhdGFfbGlzdBgBIAMoCzIQLmNmZy5UZXN0VGVzdE1hcEICEA'
    'BSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbExcelFromJsonDescriptor instead')
const TestTbExcelFromJson$json = {
  '1': 'TestTbExcelFromJson',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestExcelFromJson',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbExcelFromJson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbExcelFromJsonDescriptor = $convert.base64Decode(
    'ChNUZXN0VGJFeGNlbEZyb21Kc29uEjcKCWRhdGFfbGlzdBgBIAMoCzIWLmNmZy5UZXN0RXhjZW'
    'xGcm9tSnNvbkICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbCompositeJsonTable1Descriptor instead')
const TestTbCompositeJsonTable1$json = {
  '1': 'TestTbCompositeJsonTable1',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestCompositeJsonTable1',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbCompositeJsonTable1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbCompositeJsonTable1Descriptor = $convert.base64Decode(
    'ChlUZXN0VGJDb21wb3NpdGVKc29uVGFibGUxEj0KCWRhdGFfbGlzdBgBIAMoCzIcLmNmZy5UZX'
    'N0Q29tcG9zaXRlSnNvblRhYmxlMUICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbCompositeJsonTable2Descriptor instead')
const TestTbCompositeJsonTable2$json = {
  '1': 'TestTbCompositeJsonTable2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestCompositeJsonTable2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbCompositeJsonTable2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbCompositeJsonTable2Descriptor = $convert.base64Decode(
    'ChlUZXN0VGJDb21wb3NpdGVKc29uVGFibGUyEj0KCWRhdGFfbGlzdBgBIAMoCzIcLmNmZy5UZX'
    'N0Q29tcG9zaXRlSnNvblRhYmxlMkICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbCompositeJsonTable3Descriptor instead')
const TestTbCompositeJsonTable3$json = {
  '1': 'TestTbCompositeJsonTable3',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestCompositeJsonTable3',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbCompositeJsonTable3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbCompositeJsonTable3Descriptor = $convert.base64Decode(
    'ChlUZXN0VGJDb21wb3NpdGVKc29uVGFibGUzEj0KCWRhdGFfbGlzdBgBIAMoCzIcLmNmZy5UZX'
    'N0Q29tcG9zaXRlSnNvblRhYmxlM0ICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbExcelFromJsonMultiRowDescriptor instead')
const TestTbExcelFromJsonMultiRow$json = {
  '1': 'TestTbExcelFromJsonMultiRow',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestExcelFromJsonMultiRow',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbExcelFromJsonMultiRow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbExcelFromJsonMultiRowDescriptor = $convert.base64Decode(
    'ChtUZXN0VGJFeGNlbEZyb21Kc29uTXVsdGlSb3cSPwoJZGF0YV9saXN0GAEgAygLMh4uY2ZnLl'
    'Rlc3RFeGNlbEZyb21Kc29uTXVsdGlSb3dCAhAAUghkYXRhTGlzdA==');

@$core.Deprecated('Use testTbTestScriptableObjectDescriptor instead')
const TestTbTestScriptableObject$json = {
  '1': 'TestTbTestScriptableObject',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestScriptableObject',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestScriptableObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestScriptableObjectDescriptor = $convert.base64Decode(
    'ChpUZXN0VGJUZXN0U2NyaXB0YWJsZU9iamVjdBI+CglkYXRhX2xpc3QYASADKAsyHS5jZmcuVG'
    'VzdFRlc3RTY3JpcHRhYmxlT2JqZWN0QgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbPathDescriptor instead')
const TestTbPath$json = {
  '1': 'TestTbPath',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestPath',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbPathDescriptor = $convert.base64Decode(
    'CgpUZXN0VGJQYXRoEi4KCWRhdGFfbGlzdBgBIAMoCzINLmNmZy5UZXN0UGF0aEICEABSCGRhdG'
    'FMaXN0');

@$core.Deprecated('Use testTbTestFieldAliasDescriptor instead')
const TestTbTestFieldAlias$json = {
  '1': 'TestTbTestFieldAlias',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestFieldAlias',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestFieldAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestFieldAliasDescriptor = $convert.base64Decode(
    'ChRUZXN0VGJUZXN0RmllbGRBbGlhcxI4CglkYXRhX2xpc3QYASADKAsyFy5jZmcuVGVzdFRlc3'
    'RGaWVsZEFsaWFzQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestFieldVariantDescriptor instead')
const TestTbTestFieldVariant$json = {
  '1': 'TestTbTestFieldVariant',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestFieldVariant',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestFieldVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestFieldVariantDescriptor = $convert.base64Decode(
    'ChZUZXN0VGJUZXN0RmllbGRWYXJpYW50EjoKCWRhdGFfbGlzdBgBIAMoCzIZLmNmZy5UZXN0VG'
    'VzdEZpZWxkVmFyaWFudEICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbTestFieldVariant2Descriptor instead')
const TestTbTestFieldVariant2$json = {
  '1': 'TestTbTestFieldVariant2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestFieldVariant2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestFieldVariant2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestFieldVariant2Descriptor = $convert.base64Decode(
    'ChdUZXN0VGJUZXN0RmllbGRWYXJpYW50MhI7CglkYXRhX2xpc3QYASADKAsyGi5jZmcuVGVzdF'
    'Rlc3RGaWVsZFZhcmlhbnQyQgIQAFIIZGF0YUxpc3Q=');

@$core.Deprecated('Use testTbTestMapperDescriptor instead')
const TestTbTestMapper$json = {
  '1': 'TestTbTestMapper',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestTestMapper',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbTestMapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbTestMapperDescriptor = $convert.base64Decode(
    'ChBUZXN0VGJUZXN0TWFwcGVyEjQKCWRhdGFfbGlzdBgBIAMoCzITLmNmZy5UZXN0VGVzdE1hcH'
    'BlckICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbDefineFromExcel2Descriptor instead')
const TestTbDefineFromExcel2$json = {
  '1': 'TestTbDefineFromExcel2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestDefineFromExcel2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbDefineFromExcel2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbDefineFromExcel2Descriptor = $convert.base64Decode(
    'ChZUZXN0VGJEZWZpbmVGcm9tRXhjZWwyEjoKCWRhdGFfbGlzdBgBIAMoCzIZLmNmZy5UZXN0RG'
    'VmaW5lRnJvbUV4Y2VsMkICEABSCGRhdGFMaXN0');

@$core.Deprecated('Use tbAutoImport1Descriptor instead')
const TbAutoImport1$json = {
  '1': 'TbAutoImport1',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.AutoImport1',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TbAutoImport1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tbAutoImport1Descriptor = $convert.base64Decode(
    'Cg1UYkF1dG9JbXBvcnQxEjEKCWRhdGFfbGlzdBgBIAMoCzIQLmNmZy5BdXRvSW1wb3J0MUICEA'
    'BSCGRhdGFMaXN0');

@$core.Deprecated('Use testTbAutoImport2Descriptor instead')
const TestTbAutoImport2$json = {
  '1': 'TestTbAutoImport2',
  '2': [
    {
      '1': 'data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cfg.TestAutoImport2',
      '8': {'2': false},
      '10': 'dataList',
    },
  ],
};

/// Descriptor for `TestTbAutoImport2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testTbAutoImport2Descriptor = $convert.base64Decode(
    'ChFUZXN0VGJBdXRvSW1wb3J0MhI1CglkYXRhX2xpc3QYASADKAsyFC5jZmcuVGVzdEF1dG9JbX'
    'BvcnQyQgIQAFIIZGF0YUxpc3Q=');

