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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'schema.pbenum.dart';

export 'schema.pbenum.dart';

class AiBehaviorTree extends $pb.GeneratedMessage {
  factory AiBehaviorTree({
    $core.int? id,
    $core.String? name,
    $core.String? desc,
    $core.String? blackboardId,
    AiComposeNode? root,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (blackboardId != null) {
      $result.blackboardId = blackboardId;
    }
    if (root != null) {
      $result.root = root;
    }
    return $result;
  }
  AiBehaviorTree._() : super();
  factory AiBehaviorTree.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiBehaviorTree.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiBehaviorTree', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..aOS(4, _omitFieldNames ? '' : 'blackboardId')
    ..aOM<AiComposeNode>(5, _omitFieldNames ? '' : 'root', subBuilder: AiComposeNode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiBehaviorTree clone() => AiBehaviorTree()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiBehaviorTree copyWith(void Function(AiBehaviorTree) updates) => super.copyWith((message) => updates(message as AiBehaviorTree)) as AiBehaviorTree;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiBehaviorTree create() => AiBehaviorTree._();
  AiBehaviorTree createEmptyInstance() => create();
  static $pb.PbList<AiBehaviorTree> createRepeated() => $pb.PbList<AiBehaviorTree>();
  @$core.pragma('dart2js:noInline')
  static AiBehaviorTree getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiBehaviorTree>(create);
  static AiBehaviorTree? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get blackboardId => $_getSZ(3);
  @$pb.TagNumber(4)
  set blackboardId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlackboardId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlackboardId() => clearField(4);

  @$pb.TagNumber(5)
  AiComposeNode get root => $_getN(4);
  @$pb.TagNumber(5)
  set root(AiComposeNode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoot() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoot() => clearField(5);
  @$pb.TagNumber(5)
  AiComposeNode ensureRoot() => $_ensure(4);
}

class AiBlackboard extends $pb.GeneratedMessage {
  factory AiBlackboard({
    $core.String? name,
    $core.String? desc,
    $core.String? parentName,
    $core.Iterable<AiBlackboardKey>? keys,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (parentName != null) {
      $result.parentName = parentName;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  AiBlackboard._() : super();
  factory AiBlackboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiBlackboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiBlackboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOS(3, _omitFieldNames ? '' : 'parentName')
    ..pc<AiBlackboardKey>(4, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PM, subBuilder: AiBlackboardKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiBlackboard clone() => AiBlackboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiBlackboard copyWith(void Function(AiBlackboard) updates) => super.copyWith((message) => updates(message as AiBlackboard)) as AiBlackboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiBlackboard create() => AiBlackboard._();
  AiBlackboard createEmptyInstance() => create();
  static $pb.PbList<AiBlackboard> createRepeated() => $pb.PbList<AiBlackboard>();
  @$core.pragma('dart2js:noInline')
  static AiBlackboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiBlackboard>(create);
  static AiBlackboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get parentName => $_getSZ(2);
  @$pb.TagNumber(3)
  set parentName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParentName() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<AiBlackboardKey> get keys => $_getList(3);
}

class AiBlackboardKey extends $pb.GeneratedMessage {
  factory AiBlackboardKey({
    $core.String? name,
    $core.String? desc,
    $core.bool? isStatic,
    AiEKeyType? keyType,
    $core.String? typeClassName,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (isStatic != null) {
      $result.isStatic = isStatic;
    }
    if (keyType != null) {
      $result.keyType = keyType;
    }
    if (typeClassName != null) {
      $result.typeClassName = typeClassName;
    }
    return $result;
  }
  AiBlackboardKey._() : super();
  factory AiBlackboardKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiBlackboardKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiBlackboardKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOB(3, _omitFieldNames ? '' : 'isStatic')
    ..e<AiEKeyType>(4, _omitFieldNames ? '' : 'keyType', $pb.PbFieldType.OE, defaultOrMaker: AiEKeyType.AiEKeyType_EMPTY_PLACEHOLDER, valueOf: AiEKeyType.valueOf, enumValues: AiEKeyType.values)
    ..aOS(5, _omitFieldNames ? '' : 'typeClassName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiBlackboardKey clone() => AiBlackboardKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiBlackboardKey copyWith(void Function(AiBlackboardKey) updates) => super.copyWith((message) => updates(message as AiBlackboardKey)) as AiBlackboardKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiBlackboardKey create() => AiBlackboardKey._();
  AiBlackboardKey createEmptyInstance() => create();
  static $pb.PbList<AiBlackboardKey> createRepeated() => $pb.PbList<AiBlackboardKey>();
  @$core.pragma('dart2js:noInline')
  static AiBlackboardKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiBlackboardKey>(create);
  static AiBlackboardKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isStatic => $_getBF(2);
  @$pb.TagNumber(3)
  set isStatic($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsStatic() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsStatic() => clearField(3);

  @$pb.TagNumber(4)
  AiEKeyType get keyType => $_getN(3);
  @$pb.TagNumber(4)
  set keyType(AiEKeyType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyType() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get typeClassName => $_getSZ(4);
  @$pb.TagNumber(5)
  set typeClassName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTypeClassName() => $_has(4);
  @$pb.TagNumber(5)
  void clearTypeClassName() => clearField(5);
}

enum AiKeyData_Value {
  floatKeyData, 
  intKeyData, 
  stringKeyData, 
  blackboardKeyData, 
  notSet
}

class AiKeyData extends $pb.GeneratedMessage {
  factory AiKeyData({
    AiFloatKeyData? floatKeyData,
    AiIntKeyData? intKeyData,
    AiStringKeyData? stringKeyData,
    AiBlackboardKeyData? blackboardKeyData,
  }) {
    final $result = create();
    if (floatKeyData != null) {
      $result.floatKeyData = floatKeyData;
    }
    if (intKeyData != null) {
      $result.intKeyData = intKeyData;
    }
    if (stringKeyData != null) {
      $result.stringKeyData = stringKeyData;
    }
    if (blackboardKeyData != null) {
      $result.blackboardKeyData = blackboardKeyData;
    }
    return $result;
  }
  AiKeyData._() : super();
  factory AiKeyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiKeyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiKeyData_Value> _AiKeyData_ValueByTag = {
    1 : AiKeyData_Value.floatKeyData,
    2 : AiKeyData_Value.intKeyData,
    3 : AiKeyData_Value.stringKeyData,
    4 : AiKeyData_Value.blackboardKeyData,
    0 : AiKeyData_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiKeyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<AiFloatKeyData>(1, _omitFieldNames ? '' : 'FloatKeyData', protoName: 'FloatKeyData', subBuilder: AiFloatKeyData.create)
    ..aOM<AiIntKeyData>(2, _omitFieldNames ? '' : 'IntKeyData', protoName: 'IntKeyData', subBuilder: AiIntKeyData.create)
    ..aOM<AiStringKeyData>(3, _omitFieldNames ? '' : 'StringKeyData', protoName: 'StringKeyData', subBuilder: AiStringKeyData.create)
    ..aOM<AiBlackboardKeyData>(4, _omitFieldNames ? '' : 'BlackboardKeyData', protoName: 'BlackboardKeyData', subBuilder: AiBlackboardKeyData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiKeyData clone() => AiKeyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiKeyData copyWith(void Function(AiKeyData) updates) => super.copyWith((message) => updates(message as AiKeyData)) as AiKeyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiKeyData create() => AiKeyData._();
  AiKeyData createEmptyInstance() => create();
  static $pb.PbList<AiKeyData> createRepeated() => $pb.PbList<AiKeyData>();
  @$core.pragma('dart2js:noInline')
  static AiKeyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiKeyData>(create);
  static AiKeyData? _defaultInstance;

  AiKeyData_Value whichValue() => _AiKeyData_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AiFloatKeyData get floatKeyData => $_getN(0);
  @$pb.TagNumber(1)
  set floatKeyData(AiFloatKeyData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFloatKeyData() => $_has(0);
  @$pb.TagNumber(1)
  void clearFloatKeyData() => clearField(1);
  @$pb.TagNumber(1)
  AiFloatKeyData ensureFloatKeyData() => $_ensure(0);

  @$pb.TagNumber(2)
  AiIntKeyData get intKeyData => $_getN(1);
  @$pb.TagNumber(2)
  set intKeyData(AiIntKeyData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntKeyData() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntKeyData() => clearField(2);
  @$pb.TagNumber(2)
  AiIntKeyData ensureIntKeyData() => $_ensure(1);

  @$pb.TagNumber(3)
  AiStringKeyData get stringKeyData => $_getN(2);
  @$pb.TagNumber(3)
  set stringKeyData(AiStringKeyData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStringKeyData() => $_has(2);
  @$pb.TagNumber(3)
  void clearStringKeyData() => clearField(3);
  @$pb.TagNumber(3)
  AiStringKeyData ensureStringKeyData() => $_ensure(2);

  @$pb.TagNumber(4)
  AiBlackboardKeyData get blackboardKeyData => $_getN(3);
  @$pb.TagNumber(4)
  set blackboardKeyData(AiBlackboardKeyData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlackboardKeyData() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlackboardKeyData() => clearField(4);
  @$pb.TagNumber(4)
  AiBlackboardKeyData ensureBlackboardKeyData() => $_ensure(3);
}

class AiBlackboardKeyData extends $pb.GeneratedMessage {
  factory AiBlackboardKeyData({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  AiBlackboardKeyData._() : super();
  factory AiBlackboardKeyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiBlackboardKeyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiBlackboardKeyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiBlackboardKeyData clone() => AiBlackboardKeyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiBlackboardKeyData copyWith(void Function(AiBlackboardKeyData) updates) => super.copyWith((message) => updates(message as AiBlackboardKeyData)) as AiBlackboardKeyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiBlackboardKeyData create() => AiBlackboardKeyData._();
  AiBlackboardKeyData createEmptyInstance() => create();
  static $pb.PbList<AiBlackboardKeyData> createRepeated() => $pb.PbList<AiBlackboardKeyData>();
  @$core.pragma('dart2js:noInline')
  static AiBlackboardKeyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiBlackboardKeyData>(create);
  static AiBlackboardKeyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class AiFloatKeyData extends $pb.GeneratedMessage {
  factory AiFloatKeyData({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  AiFloatKeyData._() : super();
  factory AiFloatKeyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiFloatKeyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiFloatKeyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiFloatKeyData clone() => AiFloatKeyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiFloatKeyData copyWith(void Function(AiFloatKeyData) updates) => super.copyWith((message) => updates(message as AiFloatKeyData)) as AiFloatKeyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiFloatKeyData create() => AiFloatKeyData._();
  AiFloatKeyData createEmptyInstance() => create();
  static $pb.PbList<AiFloatKeyData> createRepeated() => $pb.PbList<AiFloatKeyData>();
  @$core.pragma('dart2js:noInline')
  static AiFloatKeyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiFloatKeyData>(create);
  static AiFloatKeyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class AiIntKeyData extends $pb.GeneratedMessage {
  factory AiIntKeyData({
    $core.int? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  AiIntKeyData._() : super();
  factory AiIntKeyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiIntKeyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiIntKeyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiIntKeyData clone() => AiIntKeyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiIntKeyData copyWith(void Function(AiIntKeyData) updates) => super.copyWith((message) => updates(message as AiIntKeyData)) as AiIntKeyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiIntKeyData create() => AiIntKeyData._();
  AiIntKeyData createEmptyInstance() => create();
  static $pb.PbList<AiIntKeyData> createRepeated() => $pb.PbList<AiIntKeyData>();
  @$core.pragma('dart2js:noInline')
  static AiIntKeyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiIntKeyData>(create);
  static AiIntKeyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class AiStringKeyData extends $pb.GeneratedMessage {
  factory AiStringKeyData({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  AiStringKeyData._() : super();
  factory AiStringKeyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiStringKeyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiStringKeyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiStringKeyData clone() => AiStringKeyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiStringKeyData copyWith(void Function(AiStringKeyData) updates) => super.copyWith((message) => updates(message as AiStringKeyData)) as AiStringKeyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiStringKeyData create() => AiStringKeyData._();
  AiStringKeyData createEmptyInstance() => create();
  static $pb.PbList<AiStringKeyData> createRepeated() => $pb.PbList<AiStringKeyData>();
  @$core.pragma('dart2js:noInline')
  static AiStringKeyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiStringKeyData>(create);
  static AiStringKeyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

enum AiKeyQueryOperator_Value {
  isSet2, 
  isNotSet, 
  binaryOperator, 
  notSet
}

class AiKeyQueryOperator extends $pb.GeneratedMessage {
  factory AiKeyQueryOperator({
    AiIsSet2? isSet2,
    AiIsNotSet? isNotSet,
    AiBinaryOperator? binaryOperator,
  }) {
    final $result = create();
    if (isSet2 != null) {
      $result.isSet2 = isSet2;
    }
    if (isNotSet != null) {
      $result.isNotSet = isNotSet;
    }
    if (binaryOperator != null) {
      $result.binaryOperator = binaryOperator;
    }
    return $result;
  }
  AiKeyQueryOperator._() : super();
  factory AiKeyQueryOperator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiKeyQueryOperator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiKeyQueryOperator_Value> _AiKeyQueryOperator_ValueByTag = {
    1 : AiKeyQueryOperator_Value.isSet2,
    2 : AiKeyQueryOperator_Value.isNotSet,
    3 : AiKeyQueryOperator_Value.binaryOperator,
    0 : AiKeyQueryOperator_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiKeyQueryOperator', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<AiIsSet2>(1, _omitFieldNames ? '' : 'IsSet2', protoName: 'IsSet2', subBuilder: AiIsSet2.create)
    ..aOM<AiIsNotSet>(2, _omitFieldNames ? '' : 'IsNotSet', protoName: 'IsNotSet', subBuilder: AiIsNotSet.create)
    ..aOM<AiBinaryOperator>(3, _omitFieldNames ? '' : 'BinaryOperator', protoName: 'BinaryOperator', subBuilder: AiBinaryOperator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiKeyQueryOperator clone() => AiKeyQueryOperator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiKeyQueryOperator copyWith(void Function(AiKeyQueryOperator) updates) => super.copyWith((message) => updates(message as AiKeyQueryOperator)) as AiKeyQueryOperator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiKeyQueryOperator create() => AiKeyQueryOperator._();
  AiKeyQueryOperator createEmptyInstance() => create();
  static $pb.PbList<AiKeyQueryOperator> createRepeated() => $pb.PbList<AiKeyQueryOperator>();
  @$core.pragma('dart2js:noInline')
  static AiKeyQueryOperator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiKeyQueryOperator>(create);
  static AiKeyQueryOperator? _defaultInstance;

  AiKeyQueryOperator_Value whichValue() => _AiKeyQueryOperator_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AiIsSet2 get isSet2 => $_getN(0);
  @$pb.TagNumber(1)
  set isSet2(AiIsSet2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSet2() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSet2() => clearField(1);
  @$pb.TagNumber(1)
  AiIsSet2 ensureIsSet2() => $_ensure(0);

  @$pb.TagNumber(2)
  AiIsNotSet get isNotSet => $_getN(1);
  @$pb.TagNumber(2)
  set isNotSet(AiIsNotSet v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsNotSet() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNotSet() => clearField(2);
  @$pb.TagNumber(2)
  AiIsNotSet ensureIsNotSet() => $_ensure(1);

  @$pb.TagNumber(3)
  AiBinaryOperator get binaryOperator => $_getN(2);
  @$pb.TagNumber(3)
  set binaryOperator(AiBinaryOperator v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBinaryOperator() => $_has(2);
  @$pb.TagNumber(3)
  void clearBinaryOperator() => clearField(3);
  @$pb.TagNumber(3)
  AiBinaryOperator ensureBinaryOperator() => $_ensure(2);
}

class AiBinaryOperator extends $pb.GeneratedMessage {
  factory AiBinaryOperator({
    AiEOperator? oper,
    AiKeyData? data,
  }) {
    final $result = create();
    if (oper != null) {
      $result.oper = oper;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  AiBinaryOperator._() : super();
  factory AiBinaryOperator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiBinaryOperator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiBinaryOperator', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..e<AiEOperator>(1, _omitFieldNames ? '' : 'oper', $pb.PbFieldType.OE, defaultOrMaker: AiEOperator.AiEOperator_IS_EQUAL_TO, valueOf: AiEOperator.valueOf, enumValues: AiEOperator.values)
    ..aOM<AiKeyData>(2, _omitFieldNames ? '' : 'data', subBuilder: AiKeyData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiBinaryOperator clone() => AiBinaryOperator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiBinaryOperator copyWith(void Function(AiBinaryOperator) updates) => super.copyWith((message) => updates(message as AiBinaryOperator)) as AiBinaryOperator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiBinaryOperator create() => AiBinaryOperator._();
  AiBinaryOperator createEmptyInstance() => create();
  static $pb.PbList<AiBinaryOperator> createRepeated() => $pb.PbList<AiBinaryOperator>();
  @$core.pragma('dart2js:noInline')
  static AiBinaryOperator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiBinaryOperator>(create);
  static AiBinaryOperator? _defaultInstance;

  @$pb.TagNumber(1)
  AiEOperator get oper => $_getN(0);
  @$pb.TagNumber(1)
  set oper(AiEOperator v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOper() => $_has(0);
  @$pb.TagNumber(1)
  void clearOper() => clearField(1);

  @$pb.TagNumber(2)
  AiKeyData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(AiKeyData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  AiKeyData ensureData() => $_ensure(1);
}

class AiIsNotSet extends $pb.GeneratedMessage {
  factory AiIsNotSet() => create();
  AiIsNotSet._() : super();
  factory AiIsNotSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiIsNotSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiIsNotSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiIsNotSet clone() => AiIsNotSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiIsNotSet copyWith(void Function(AiIsNotSet) updates) => super.copyWith((message) => updates(message as AiIsNotSet)) as AiIsNotSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiIsNotSet create() => AiIsNotSet._();
  AiIsNotSet createEmptyInstance() => create();
  static $pb.PbList<AiIsNotSet> createRepeated() => $pb.PbList<AiIsNotSet>();
  @$core.pragma('dart2js:noInline')
  static AiIsNotSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiIsNotSet>(create);
  static AiIsNotSet? _defaultInstance;
}

class AiIsSet2 extends $pb.GeneratedMessage {
  factory AiIsSet2() => create();
  AiIsSet2._() : super();
  factory AiIsSet2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiIsSet2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiIsSet2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiIsSet2 clone() => AiIsSet2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiIsSet2 copyWith(void Function(AiIsSet2) updates) => super.copyWith((message) => updates(message as AiIsSet2)) as AiIsSet2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiIsSet2 create() => AiIsSet2._();
  AiIsSet2 createEmptyInstance() => create();
  static $pb.PbList<AiIsSet2> createRepeated() => $pb.PbList<AiIsSet2>();
  @$core.pragma('dart2js:noInline')
  static AiIsSet2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiIsSet2>(create);
  static AiIsSet2? _defaultInstance;
}

enum AiNode_Value {
  ueSetDefaultFocus, 
  executeTimeStatistic, 
  chooseTarget, 
  keepFaceTarget, 
  getOwnerPlayer, 
  updateDailyBehaviorProps, 
  ueLoop, 
  ueCooldown, 
  ueTimeLimit, 
  ueBlackboard, 
  ueForceSuccess, 
  isAtLocation, 
  distanceLessThan, 
  sequence, 
  selector, 
  simpleParallel, 
  ueWait, 
  ueWaitBlackboardTime, 
  moveToTarget, 
  chooseSkill, 
  moveToRandomLocation, 
  moveToLocation, 
  debugPrint, 
  notSet
}

class AiNode extends $pb.GeneratedMessage {
  factory AiNode({
    AiUeSetDefaultFocus? ueSetDefaultFocus,
    AiExecuteTimeStatistic? executeTimeStatistic,
    AiChooseTarget? chooseTarget,
    AiKeepFaceTarget? keepFaceTarget,
    AiGetOwnerPlayer? getOwnerPlayer,
    AiUpdateDailyBehaviorProps? updateDailyBehaviorProps,
    AiUeLoop? ueLoop,
    AiUeCooldown? ueCooldown,
    AiUeTimeLimit? ueTimeLimit,
    AiUeBlackboard? ueBlackboard,
    AiUeForceSuccess? ueForceSuccess,
    AiIsAtLocation? isAtLocation,
    AiDistanceLessThan? distanceLessThan,
    AiSequence? sequence,
    AiSelector? selector,
    AiSimpleParallel? simpleParallel,
    AiUeWait? ueWait,
    AiUeWaitBlackboardTime? ueWaitBlackboardTime,
    AiMoveToTarget? moveToTarget,
    AiChooseSkill? chooseSkill,
    AiMoveToRandomLocation? moveToRandomLocation,
    AiMoveToLocation? moveToLocation,
    AiDebugPrint? debugPrint,
  }) {
    final $result = create();
    if (ueSetDefaultFocus != null) {
      $result.ueSetDefaultFocus = ueSetDefaultFocus;
    }
    if (executeTimeStatistic != null) {
      $result.executeTimeStatistic = executeTimeStatistic;
    }
    if (chooseTarget != null) {
      $result.chooseTarget = chooseTarget;
    }
    if (keepFaceTarget != null) {
      $result.keepFaceTarget = keepFaceTarget;
    }
    if (getOwnerPlayer != null) {
      $result.getOwnerPlayer = getOwnerPlayer;
    }
    if (updateDailyBehaviorProps != null) {
      $result.updateDailyBehaviorProps = updateDailyBehaviorProps;
    }
    if (ueLoop != null) {
      $result.ueLoop = ueLoop;
    }
    if (ueCooldown != null) {
      $result.ueCooldown = ueCooldown;
    }
    if (ueTimeLimit != null) {
      $result.ueTimeLimit = ueTimeLimit;
    }
    if (ueBlackboard != null) {
      $result.ueBlackboard = ueBlackboard;
    }
    if (ueForceSuccess != null) {
      $result.ueForceSuccess = ueForceSuccess;
    }
    if (isAtLocation != null) {
      $result.isAtLocation = isAtLocation;
    }
    if (distanceLessThan != null) {
      $result.distanceLessThan = distanceLessThan;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (simpleParallel != null) {
      $result.simpleParallel = simpleParallel;
    }
    if (ueWait != null) {
      $result.ueWait = ueWait;
    }
    if (ueWaitBlackboardTime != null) {
      $result.ueWaitBlackboardTime = ueWaitBlackboardTime;
    }
    if (moveToTarget != null) {
      $result.moveToTarget = moveToTarget;
    }
    if (chooseSkill != null) {
      $result.chooseSkill = chooseSkill;
    }
    if (moveToRandomLocation != null) {
      $result.moveToRandomLocation = moveToRandomLocation;
    }
    if (moveToLocation != null) {
      $result.moveToLocation = moveToLocation;
    }
    if (debugPrint != null) {
      $result.debugPrint = debugPrint;
    }
    return $result;
  }
  AiNode._() : super();
  factory AiNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiNode_Value> _AiNode_ValueByTag = {
    1 : AiNode_Value.ueSetDefaultFocus,
    2 : AiNode_Value.executeTimeStatistic,
    3 : AiNode_Value.chooseTarget,
    4 : AiNode_Value.keepFaceTarget,
    5 : AiNode_Value.getOwnerPlayer,
    6 : AiNode_Value.updateDailyBehaviorProps,
    7 : AiNode_Value.ueLoop,
    8 : AiNode_Value.ueCooldown,
    9 : AiNode_Value.ueTimeLimit,
    10 : AiNode_Value.ueBlackboard,
    11 : AiNode_Value.ueForceSuccess,
    12 : AiNode_Value.isAtLocation,
    13 : AiNode_Value.distanceLessThan,
    14 : AiNode_Value.sequence,
    15 : AiNode_Value.selector,
    16 : AiNode_Value.simpleParallel,
    17 : AiNode_Value.ueWait,
    18 : AiNode_Value.ueWaitBlackboardTime,
    19 : AiNode_Value.moveToTarget,
    20 : AiNode_Value.chooseSkill,
    21 : AiNode_Value.moveToRandomLocation,
    22 : AiNode_Value.moveToLocation,
    23 : AiNode_Value.debugPrint,
    0 : AiNode_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiNode', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23])
    ..aOM<AiUeSetDefaultFocus>(1, _omitFieldNames ? '' : 'UeSetDefaultFocus', protoName: 'UeSetDefaultFocus', subBuilder: AiUeSetDefaultFocus.create)
    ..aOM<AiExecuteTimeStatistic>(2, _omitFieldNames ? '' : 'ExecuteTimeStatistic', protoName: 'ExecuteTimeStatistic', subBuilder: AiExecuteTimeStatistic.create)
    ..aOM<AiChooseTarget>(3, _omitFieldNames ? '' : 'ChooseTarget', protoName: 'ChooseTarget', subBuilder: AiChooseTarget.create)
    ..aOM<AiKeepFaceTarget>(4, _omitFieldNames ? '' : 'KeepFaceTarget', protoName: 'KeepFaceTarget', subBuilder: AiKeepFaceTarget.create)
    ..aOM<AiGetOwnerPlayer>(5, _omitFieldNames ? '' : 'GetOwnerPlayer', protoName: 'GetOwnerPlayer', subBuilder: AiGetOwnerPlayer.create)
    ..aOM<AiUpdateDailyBehaviorProps>(6, _omitFieldNames ? '' : 'UpdateDailyBehaviorProps', protoName: 'UpdateDailyBehaviorProps', subBuilder: AiUpdateDailyBehaviorProps.create)
    ..aOM<AiUeLoop>(7, _omitFieldNames ? '' : 'UeLoop', protoName: 'UeLoop', subBuilder: AiUeLoop.create)
    ..aOM<AiUeCooldown>(8, _omitFieldNames ? '' : 'UeCooldown', protoName: 'UeCooldown', subBuilder: AiUeCooldown.create)
    ..aOM<AiUeTimeLimit>(9, _omitFieldNames ? '' : 'UeTimeLimit', protoName: 'UeTimeLimit', subBuilder: AiUeTimeLimit.create)
    ..aOM<AiUeBlackboard>(10, _omitFieldNames ? '' : 'UeBlackboard', protoName: 'UeBlackboard', subBuilder: AiUeBlackboard.create)
    ..aOM<AiUeForceSuccess>(11, _omitFieldNames ? '' : 'UeForceSuccess', protoName: 'UeForceSuccess', subBuilder: AiUeForceSuccess.create)
    ..aOM<AiIsAtLocation>(12, _omitFieldNames ? '' : 'IsAtLocation', protoName: 'IsAtLocation', subBuilder: AiIsAtLocation.create)
    ..aOM<AiDistanceLessThan>(13, _omitFieldNames ? '' : 'DistanceLessThan', protoName: 'DistanceLessThan', subBuilder: AiDistanceLessThan.create)
    ..aOM<AiSequence>(14, _omitFieldNames ? '' : 'Sequence', protoName: 'Sequence', subBuilder: AiSequence.create)
    ..aOM<AiSelector>(15, _omitFieldNames ? '' : 'Selector', protoName: 'Selector', subBuilder: AiSelector.create)
    ..aOM<AiSimpleParallel>(16, _omitFieldNames ? '' : 'SimpleParallel', protoName: 'SimpleParallel', subBuilder: AiSimpleParallel.create)
    ..aOM<AiUeWait>(17, _omitFieldNames ? '' : 'UeWait', protoName: 'UeWait', subBuilder: AiUeWait.create)
    ..aOM<AiUeWaitBlackboardTime>(18, _omitFieldNames ? '' : 'UeWaitBlackboardTime', protoName: 'UeWaitBlackboardTime', subBuilder: AiUeWaitBlackboardTime.create)
    ..aOM<AiMoveToTarget>(19, _omitFieldNames ? '' : 'MoveToTarget', protoName: 'MoveToTarget', subBuilder: AiMoveToTarget.create)
    ..aOM<AiChooseSkill>(20, _omitFieldNames ? '' : 'ChooseSkill', protoName: 'ChooseSkill', subBuilder: AiChooseSkill.create)
    ..aOM<AiMoveToRandomLocation>(21, _omitFieldNames ? '' : 'MoveToRandomLocation', protoName: 'MoveToRandomLocation', subBuilder: AiMoveToRandomLocation.create)
    ..aOM<AiMoveToLocation>(22, _omitFieldNames ? '' : 'MoveToLocation', protoName: 'MoveToLocation', subBuilder: AiMoveToLocation.create)
    ..aOM<AiDebugPrint>(23, _omitFieldNames ? '' : 'DebugPrint', protoName: 'DebugPrint', subBuilder: AiDebugPrint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiNode clone() => AiNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiNode copyWith(void Function(AiNode) updates) => super.copyWith((message) => updates(message as AiNode)) as AiNode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiNode create() => AiNode._();
  AiNode createEmptyInstance() => create();
  static $pb.PbList<AiNode> createRepeated() => $pb.PbList<AiNode>();
  @$core.pragma('dart2js:noInline')
  static AiNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiNode>(create);
  static AiNode? _defaultInstance;

  AiNode_Value whichValue() => _AiNode_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AiUeSetDefaultFocus get ueSetDefaultFocus => $_getN(0);
  @$pb.TagNumber(1)
  set ueSetDefaultFocus(AiUeSetDefaultFocus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUeSetDefaultFocus() => $_has(0);
  @$pb.TagNumber(1)
  void clearUeSetDefaultFocus() => clearField(1);
  @$pb.TagNumber(1)
  AiUeSetDefaultFocus ensureUeSetDefaultFocus() => $_ensure(0);

  @$pb.TagNumber(2)
  AiExecuteTimeStatistic get executeTimeStatistic => $_getN(1);
  @$pb.TagNumber(2)
  set executeTimeStatistic(AiExecuteTimeStatistic v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExecuteTimeStatistic() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecuteTimeStatistic() => clearField(2);
  @$pb.TagNumber(2)
  AiExecuteTimeStatistic ensureExecuteTimeStatistic() => $_ensure(1);

  @$pb.TagNumber(3)
  AiChooseTarget get chooseTarget => $_getN(2);
  @$pb.TagNumber(3)
  set chooseTarget(AiChooseTarget v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChooseTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearChooseTarget() => clearField(3);
  @$pb.TagNumber(3)
  AiChooseTarget ensureChooseTarget() => $_ensure(2);

  @$pb.TagNumber(4)
  AiKeepFaceTarget get keepFaceTarget => $_getN(3);
  @$pb.TagNumber(4)
  set keepFaceTarget(AiKeepFaceTarget v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeepFaceTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeepFaceTarget() => clearField(4);
  @$pb.TagNumber(4)
  AiKeepFaceTarget ensureKeepFaceTarget() => $_ensure(3);

  @$pb.TagNumber(5)
  AiGetOwnerPlayer get getOwnerPlayer => $_getN(4);
  @$pb.TagNumber(5)
  set getOwnerPlayer(AiGetOwnerPlayer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGetOwnerPlayer() => $_has(4);
  @$pb.TagNumber(5)
  void clearGetOwnerPlayer() => clearField(5);
  @$pb.TagNumber(5)
  AiGetOwnerPlayer ensureGetOwnerPlayer() => $_ensure(4);

  @$pb.TagNumber(6)
  AiUpdateDailyBehaviorProps get updateDailyBehaviorProps => $_getN(5);
  @$pb.TagNumber(6)
  set updateDailyBehaviorProps(AiUpdateDailyBehaviorProps v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDailyBehaviorProps() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDailyBehaviorProps() => clearField(6);
  @$pb.TagNumber(6)
  AiUpdateDailyBehaviorProps ensureUpdateDailyBehaviorProps() => $_ensure(5);

  @$pb.TagNumber(7)
  AiUeLoop get ueLoop => $_getN(6);
  @$pb.TagNumber(7)
  set ueLoop(AiUeLoop v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUeLoop() => $_has(6);
  @$pb.TagNumber(7)
  void clearUeLoop() => clearField(7);
  @$pb.TagNumber(7)
  AiUeLoop ensureUeLoop() => $_ensure(6);

  @$pb.TagNumber(8)
  AiUeCooldown get ueCooldown => $_getN(7);
  @$pb.TagNumber(8)
  set ueCooldown(AiUeCooldown v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUeCooldown() => $_has(7);
  @$pb.TagNumber(8)
  void clearUeCooldown() => clearField(8);
  @$pb.TagNumber(8)
  AiUeCooldown ensureUeCooldown() => $_ensure(7);

  @$pb.TagNumber(9)
  AiUeTimeLimit get ueTimeLimit => $_getN(8);
  @$pb.TagNumber(9)
  set ueTimeLimit(AiUeTimeLimit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUeTimeLimit() => $_has(8);
  @$pb.TagNumber(9)
  void clearUeTimeLimit() => clearField(9);
  @$pb.TagNumber(9)
  AiUeTimeLimit ensureUeTimeLimit() => $_ensure(8);

  @$pb.TagNumber(10)
  AiUeBlackboard get ueBlackboard => $_getN(9);
  @$pb.TagNumber(10)
  set ueBlackboard(AiUeBlackboard v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUeBlackboard() => $_has(9);
  @$pb.TagNumber(10)
  void clearUeBlackboard() => clearField(10);
  @$pb.TagNumber(10)
  AiUeBlackboard ensureUeBlackboard() => $_ensure(9);

  @$pb.TagNumber(11)
  AiUeForceSuccess get ueForceSuccess => $_getN(10);
  @$pb.TagNumber(11)
  set ueForceSuccess(AiUeForceSuccess v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUeForceSuccess() => $_has(10);
  @$pb.TagNumber(11)
  void clearUeForceSuccess() => clearField(11);
  @$pb.TagNumber(11)
  AiUeForceSuccess ensureUeForceSuccess() => $_ensure(10);

  @$pb.TagNumber(12)
  AiIsAtLocation get isAtLocation => $_getN(11);
  @$pb.TagNumber(12)
  set isAtLocation(AiIsAtLocation v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsAtLocation() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsAtLocation() => clearField(12);
  @$pb.TagNumber(12)
  AiIsAtLocation ensureIsAtLocation() => $_ensure(11);

  @$pb.TagNumber(13)
  AiDistanceLessThan get distanceLessThan => $_getN(12);
  @$pb.TagNumber(13)
  set distanceLessThan(AiDistanceLessThan v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasDistanceLessThan() => $_has(12);
  @$pb.TagNumber(13)
  void clearDistanceLessThan() => clearField(13);
  @$pb.TagNumber(13)
  AiDistanceLessThan ensureDistanceLessThan() => $_ensure(12);

  @$pb.TagNumber(14)
  AiSequence get sequence => $_getN(13);
  @$pb.TagNumber(14)
  set sequence(AiSequence v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasSequence() => $_has(13);
  @$pb.TagNumber(14)
  void clearSequence() => clearField(14);
  @$pb.TagNumber(14)
  AiSequence ensureSequence() => $_ensure(13);

  @$pb.TagNumber(15)
  AiSelector get selector => $_getN(14);
  @$pb.TagNumber(15)
  set selector(AiSelector v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSelector() => $_has(14);
  @$pb.TagNumber(15)
  void clearSelector() => clearField(15);
  @$pb.TagNumber(15)
  AiSelector ensureSelector() => $_ensure(14);

  @$pb.TagNumber(16)
  AiSimpleParallel get simpleParallel => $_getN(15);
  @$pb.TagNumber(16)
  set simpleParallel(AiSimpleParallel v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSimpleParallel() => $_has(15);
  @$pb.TagNumber(16)
  void clearSimpleParallel() => clearField(16);
  @$pb.TagNumber(16)
  AiSimpleParallel ensureSimpleParallel() => $_ensure(15);

  @$pb.TagNumber(17)
  AiUeWait get ueWait => $_getN(16);
  @$pb.TagNumber(17)
  set ueWait(AiUeWait v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasUeWait() => $_has(16);
  @$pb.TagNumber(17)
  void clearUeWait() => clearField(17);
  @$pb.TagNumber(17)
  AiUeWait ensureUeWait() => $_ensure(16);

  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime get ueWaitBlackboardTime => $_getN(17);
  @$pb.TagNumber(18)
  set ueWaitBlackboardTime(AiUeWaitBlackboardTime v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUeWaitBlackboardTime() => $_has(17);
  @$pb.TagNumber(18)
  void clearUeWaitBlackboardTime() => clearField(18);
  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime ensureUeWaitBlackboardTime() => $_ensure(17);

  @$pb.TagNumber(19)
  AiMoveToTarget get moveToTarget => $_getN(18);
  @$pb.TagNumber(19)
  set moveToTarget(AiMoveToTarget v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasMoveToTarget() => $_has(18);
  @$pb.TagNumber(19)
  void clearMoveToTarget() => clearField(19);
  @$pb.TagNumber(19)
  AiMoveToTarget ensureMoveToTarget() => $_ensure(18);

  @$pb.TagNumber(20)
  AiChooseSkill get chooseSkill => $_getN(19);
  @$pb.TagNumber(20)
  set chooseSkill(AiChooseSkill v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasChooseSkill() => $_has(19);
  @$pb.TagNumber(20)
  void clearChooseSkill() => clearField(20);
  @$pb.TagNumber(20)
  AiChooseSkill ensureChooseSkill() => $_ensure(19);

  @$pb.TagNumber(21)
  AiMoveToRandomLocation get moveToRandomLocation => $_getN(20);
  @$pb.TagNumber(21)
  set moveToRandomLocation(AiMoveToRandomLocation v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasMoveToRandomLocation() => $_has(20);
  @$pb.TagNumber(21)
  void clearMoveToRandomLocation() => clearField(21);
  @$pb.TagNumber(21)
  AiMoveToRandomLocation ensureMoveToRandomLocation() => $_ensure(20);

  @$pb.TagNumber(22)
  AiMoveToLocation get moveToLocation => $_getN(21);
  @$pb.TagNumber(22)
  set moveToLocation(AiMoveToLocation v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasMoveToLocation() => $_has(21);
  @$pb.TagNumber(22)
  void clearMoveToLocation() => clearField(22);
  @$pb.TagNumber(22)
  AiMoveToLocation ensureMoveToLocation() => $_ensure(21);

  @$pb.TagNumber(23)
  AiDebugPrint get debugPrint => $_getN(22);
  @$pb.TagNumber(23)
  set debugPrint(AiDebugPrint v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasDebugPrint() => $_has(22);
  @$pb.TagNumber(23)
  void clearDebugPrint() => clearField(23);
  @$pb.TagNumber(23)
  AiDebugPrint ensureDebugPrint() => $_ensure(22);
}

enum AiDecorator_Value {
  ueLoop, 
  ueCooldown, 
  ueTimeLimit, 
  ueBlackboard, 
  ueForceSuccess, 
  isAtLocation, 
  distanceLessThan, 
  notSet
}

class AiDecorator extends $pb.GeneratedMessage {
  factory AiDecorator({
    AiUeLoop? ueLoop,
    AiUeCooldown? ueCooldown,
    AiUeTimeLimit? ueTimeLimit,
    AiUeBlackboard? ueBlackboard,
    AiUeForceSuccess? ueForceSuccess,
    AiIsAtLocation? isAtLocation,
    AiDistanceLessThan? distanceLessThan,
  }) {
    final $result = create();
    if (ueLoop != null) {
      $result.ueLoop = ueLoop;
    }
    if (ueCooldown != null) {
      $result.ueCooldown = ueCooldown;
    }
    if (ueTimeLimit != null) {
      $result.ueTimeLimit = ueTimeLimit;
    }
    if (ueBlackboard != null) {
      $result.ueBlackboard = ueBlackboard;
    }
    if (ueForceSuccess != null) {
      $result.ueForceSuccess = ueForceSuccess;
    }
    if (isAtLocation != null) {
      $result.isAtLocation = isAtLocation;
    }
    if (distanceLessThan != null) {
      $result.distanceLessThan = distanceLessThan;
    }
    return $result;
  }
  AiDecorator._() : super();
  factory AiDecorator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiDecorator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiDecorator_Value> _AiDecorator_ValueByTag = {
    7 : AiDecorator_Value.ueLoop,
    8 : AiDecorator_Value.ueCooldown,
    9 : AiDecorator_Value.ueTimeLimit,
    10 : AiDecorator_Value.ueBlackboard,
    11 : AiDecorator_Value.ueForceSuccess,
    12 : AiDecorator_Value.isAtLocation,
    13 : AiDecorator_Value.distanceLessThan,
    0 : AiDecorator_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiDecorator', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [7, 8, 9, 10, 11, 12, 13])
    ..aOM<AiUeLoop>(7, _omitFieldNames ? '' : 'UeLoop', protoName: 'UeLoop', subBuilder: AiUeLoop.create)
    ..aOM<AiUeCooldown>(8, _omitFieldNames ? '' : 'UeCooldown', protoName: 'UeCooldown', subBuilder: AiUeCooldown.create)
    ..aOM<AiUeTimeLimit>(9, _omitFieldNames ? '' : 'UeTimeLimit', protoName: 'UeTimeLimit', subBuilder: AiUeTimeLimit.create)
    ..aOM<AiUeBlackboard>(10, _omitFieldNames ? '' : 'UeBlackboard', protoName: 'UeBlackboard', subBuilder: AiUeBlackboard.create)
    ..aOM<AiUeForceSuccess>(11, _omitFieldNames ? '' : 'UeForceSuccess', protoName: 'UeForceSuccess', subBuilder: AiUeForceSuccess.create)
    ..aOM<AiIsAtLocation>(12, _omitFieldNames ? '' : 'IsAtLocation', protoName: 'IsAtLocation', subBuilder: AiIsAtLocation.create)
    ..aOM<AiDistanceLessThan>(13, _omitFieldNames ? '' : 'DistanceLessThan', protoName: 'DistanceLessThan', subBuilder: AiDistanceLessThan.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiDecorator clone() => AiDecorator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiDecorator copyWith(void Function(AiDecorator) updates) => super.copyWith((message) => updates(message as AiDecorator)) as AiDecorator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiDecorator create() => AiDecorator._();
  AiDecorator createEmptyInstance() => create();
  static $pb.PbList<AiDecorator> createRepeated() => $pb.PbList<AiDecorator>();
  @$core.pragma('dart2js:noInline')
  static AiDecorator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiDecorator>(create);
  static AiDecorator? _defaultInstance;

  AiDecorator_Value whichValue() => _AiDecorator_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(7)
  AiUeLoop get ueLoop => $_getN(0);
  @$pb.TagNumber(7)
  set ueLoop(AiUeLoop v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUeLoop() => $_has(0);
  @$pb.TagNumber(7)
  void clearUeLoop() => clearField(7);
  @$pb.TagNumber(7)
  AiUeLoop ensureUeLoop() => $_ensure(0);

  @$pb.TagNumber(8)
  AiUeCooldown get ueCooldown => $_getN(1);
  @$pb.TagNumber(8)
  set ueCooldown(AiUeCooldown v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUeCooldown() => $_has(1);
  @$pb.TagNumber(8)
  void clearUeCooldown() => clearField(8);
  @$pb.TagNumber(8)
  AiUeCooldown ensureUeCooldown() => $_ensure(1);

  @$pb.TagNumber(9)
  AiUeTimeLimit get ueTimeLimit => $_getN(2);
  @$pb.TagNumber(9)
  set ueTimeLimit(AiUeTimeLimit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUeTimeLimit() => $_has(2);
  @$pb.TagNumber(9)
  void clearUeTimeLimit() => clearField(9);
  @$pb.TagNumber(9)
  AiUeTimeLimit ensureUeTimeLimit() => $_ensure(2);

  @$pb.TagNumber(10)
  AiUeBlackboard get ueBlackboard => $_getN(3);
  @$pb.TagNumber(10)
  set ueBlackboard(AiUeBlackboard v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUeBlackboard() => $_has(3);
  @$pb.TagNumber(10)
  void clearUeBlackboard() => clearField(10);
  @$pb.TagNumber(10)
  AiUeBlackboard ensureUeBlackboard() => $_ensure(3);

  @$pb.TagNumber(11)
  AiUeForceSuccess get ueForceSuccess => $_getN(4);
  @$pb.TagNumber(11)
  set ueForceSuccess(AiUeForceSuccess v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUeForceSuccess() => $_has(4);
  @$pb.TagNumber(11)
  void clearUeForceSuccess() => clearField(11);
  @$pb.TagNumber(11)
  AiUeForceSuccess ensureUeForceSuccess() => $_ensure(4);

  @$pb.TagNumber(12)
  AiIsAtLocation get isAtLocation => $_getN(5);
  @$pb.TagNumber(12)
  set isAtLocation(AiIsAtLocation v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsAtLocation() => $_has(5);
  @$pb.TagNumber(12)
  void clearIsAtLocation() => clearField(12);
  @$pb.TagNumber(12)
  AiIsAtLocation ensureIsAtLocation() => $_ensure(5);

  @$pb.TagNumber(13)
  AiDistanceLessThan get distanceLessThan => $_getN(6);
  @$pb.TagNumber(13)
  set distanceLessThan(AiDistanceLessThan v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasDistanceLessThan() => $_has(6);
  @$pb.TagNumber(13)
  void clearDistanceLessThan() => clearField(13);
  @$pb.TagNumber(13)
  AiDistanceLessThan ensureDistanceLessThan() => $_ensure(6);
}

class AiDistanceLessThan extends $pb.GeneratedMessage {
  factory AiDistanceLessThan({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    $core.String? actor1Key,
    $core.String? actor2Key,
    $core.double? distance,
    $core.bool? reverseResult,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (actor1Key != null) {
      $result.actor1Key = actor1Key;
    }
    if (actor2Key != null) {
      $result.actor2Key = actor2Key;
    }
    if (distance != null) {
      $result.distance = distance;
    }
    if (reverseResult != null) {
      $result.reverseResult = reverseResult;
    }
    return $result;
  }
  AiDistanceLessThan._() : super();
  factory AiDistanceLessThan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiDistanceLessThan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiDistanceLessThan', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..aOS(4, _omitFieldNames ? '' : 'actor1Key')
    ..aOS(5, _omitFieldNames ? '' : 'actor2Key')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'distance', $pb.PbFieldType.OF)
    ..aOB(7, _omitFieldNames ? '' : 'reverseResult')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiDistanceLessThan clone() => AiDistanceLessThan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiDistanceLessThan copyWith(void Function(AiDistanceLessThan) updates) => super.copyWith((message) => updates(message as AiDistanceLessThan)) as AiDistanceLessThan;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiDistanceLessThan create() => AiDistanceLessThan._();
  AiDistanceLessThan createEmptyInstance() => create();
  static $pb.PbList<AiDistanceLessThan> createRepeated() => $pb.PbList<AiDistanceLessThan>();
  @$core.pragma('dart2js:noInline')
  static AiDistanceLessThan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiDistanceLessThan>(create);
  static AiDistanceLessThan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get actor1Key => $_getSZ(3);
  @$pb.TagNumber(4)
  set actor1Key($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActor1Key() => $_has(3);
  @$pb.TagNumber(4)
  void clearActor1Key() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get actor2Key => $_getSZ(4);
  @$pb.TagNumber(5)
  set actor2Key($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasActor2Key() => $_has(4);
  @$pb.TagNumber(5)
  void clearActor2Key() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get distance => $_getN(5);
  @$pb.TagNumber(6)
  set distance($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDistance() => $_has(5);
  @$pb.TagNumber(6)
  void clearDistance() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get reverseResult => $_getBF(6);
  @$pb.TagNumber(7)
  set reverseResult($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReverseResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearReverseResult() => clearField(7);
}

class AiIsAtLocation extends $pb.GeneratedMessage {
  factory AiIsAtLocation({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    $core.double? acceptableRadius,
    $core.String? keyboardKey,
    $core.bool? inverseCondition,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (acceptableRadius != null) {
      $result.acceptableRadius = acceptableRadius;
    }
    if (keyboardKey != null) {
      $result.keyboardKey = keyboardKey;
    }
    if (inverseCondition != null) {
      $result.inverseCondition = inverseCondition;
    }
    return $result;
  }
  AiIsAtLocation._() : super();
  factory AiIsAtLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiIsAtLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiIsAtLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'acceptableRadius', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 'keyboardKey')
    ..aOB(6, _omitFieldNames ? '' : 'inverseCondition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiIsAtLocation clone() => AiIsAtLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiIsAtLocation copyWith(void Function(AiIsAtLocation) updates) => super.copyWith((message) => updates(message as AiIsAtLocation)) as AiIsAtLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiIsAtLocation create() => AiIsAtLocation._();
  AiIsAtLocation createEmptyInstance() => create();
  static $pb.PbList<AiIsAtLocation> createRepeated() => $pb.PbList<AiIsAtLocation>();
  @$core.pragma('dart2js:noInline')
  static AiIsAtLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiIsAtLocation>(create);
  static AiIsAtLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get acceptableRadius => $_getN(3);
  @$pb.TagNumber(4)
  set acceptableRadius($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAcceptableRadius() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptableRadius() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get keyboardKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set keyboardKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasKeyboardKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearKeyboardKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get inverseCondition => $_getBF(5);
  @$pb.TagNumber(6)
  set inverseCondition($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInverseCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearInverseCondition() => clearField(6);
}

class AiUeBlackboard extends $pb.GeneratedMessage {
  factory AiUeBlackboard({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    AiENotifyObserverMode? notifyObserver,
    $core.String? blackboardKey,
    AiKeyQueryOperator? keyQuery,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (notifyObserver != null) {
      $result.notifyObserver = notifyObserver;
    }
    if (blackboardKey != null) {
      $result.blackboardKey = blackboardKey;
    }
    if (keyQuery != null) {
      $result.keyQuery = keyQuery;
    }
    return $result;
  }
  AiUeBlackboard._() : super();
  factory AiUeBlackboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeBlackboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeBlackboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..e<AiENotifyObserverMode>(4, _omitFieldNames ? '' : 'notifyObserver', $pb.PbFieldType.OE, defaultOrMaker: AiENotifyObserverMode.AiENotifyObserverMode_ON_VALUE_CHANGE, valueOf: AiENotifyObserverMode.valueOf, enumValues: AiENotifyObserverMode.values)
    ..aOS(5, _omitFieldNames ? '' : 'blackboardKey')
    ..aOM<AiKeyQueryOperator>(6, _omitFieldNames ? '' : 'keyQuery', subBuilder: AiKeyQueryOperator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeBlackboard clone() => AiUeBlackboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeBlackboard copyWith(void Function(AiUeBlackboard) updates) => super.copyWith((message) => updates(message as AiUeBlackboard)) as AiUeBlackboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeBlackboard create() => AiUeBlackboard._();
  AiUeBlackboard createEmptyInstance() => create();
  static $pb.PbList<AiUeBlackboard> createRepeated() => $pb.PbList<AiUeBlackboard>();
  @$core.pragma('dart2js:noInline')
  static AiUeBlackboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeBlackboard>(create);
  static AiUeBlackboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  AiENotifyObserverMode get notifyObserver => $_getN(3);
  @$pb.TagNumber(4)
  set notifyObserver(AiENotifyObserverMode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNotifyObserver() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotifyObserver() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get blackboardKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set blackboardKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlackboardKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlackboardKey() => clearField(5);

  @$pb.TagNumber(6)
  AiKeyQueryOperator get keyQuery => $_getN(5);
  @$pb.TagNumber(6)
  set keyQuery(AiKeyQueryOperator v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasKeyQuery() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeyQuery() => clearField(6);
  @$pb.TagNumber(6)
  AiKeyQueryOperator ensureKeyQuery() => $_ensure(5);
}

class AiUeCooldown extends $pb.GeneratedMessage {
  factory AiUeCooldown({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    $core.double? cooldownTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (cooldownTime != null) {
      $result.cooldownTime = cooldownTime;
    }
    return $result;
  }
  AiUeCooldown._() : super();
  factory AiUeCooldown.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeCooldown.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeCooldown', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'cooldownTime', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeCooldown clone() => AiUeCooldown()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeCooldown copyWith(void Function(AiUeCooldown) updates) => super.copyWith((message) => updates(message as AiUeCooldown)) as AiUeCooldown;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeCooldown create() => AiUeCooldown._();
  AiUeCooldown createEmptyInstance() => create();
  static $pb.PbList<AiUeCooldown> createRepeated() => $pb.PbList<AiUeCooldown>();
  @$core.pragma('dart2js:noInline')
  static AiUeCooldown getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeCooldown>(create);
  static AiUeCooldown? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get cooldownTime => $_getN(3);
  @$pb.TagNumber(4)
  set cooldownTime($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCooldownTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCooldownTime() => clearField(4);
}

class AiUeForceSuccess extends $pb.GeneratedMessage {
  factory AiUeForceSuccess({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    return $result;
  }
  AiUeForceSuccess._() : super();
  factory AiUeForceSuccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeForceSuccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeForceSuccess', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeForceSuccess clone() => AiUeForceSuccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeForceSuccess copyWith(void Function(AiUeForceSuccess) updates) => super.copyWith((message) => updates(message as AiUeForceSuccess)) as AiUeForceSuccess;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeForceSuccess create() => AiUeForceSuccess._();
  AiUeForceSuccess createEmptyInstance() => create();
  static $pb.PbList<AiUeForceSuccess> createRepeated() => $pb.PbList<AiUeForceSuccess>();
  @$core.pragma('dart2js:noInline')
  static AiUeForceSuccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeForceSuccess>(create);
  static AiUeForceSuccess? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);
}

class AiUeLoop extends $pb.GeneratedMessage {
  factory AiUeLoop({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    $core.int? numLoops,
    $core.bool? infiniteLoop,
    $core.double? infiniteLoopTimeoutTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (numLoops != null) {
      $result.numLoops = numLoops;
    }
    if (infiniteLoop != null) {
      $result.infiniteLoop = infiniteLoop;
    }
    if (infiniteLoopTimeoutTime != null) {
      $result.infiniteLoopTimeoutTime = infiniteLoopTimeoutTime;
    }
    return $result;
  }
  AiUeLoop._() : super();
  factory AiUeLoop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeLoop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeLoop', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'numLoops', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'infiniteLoop')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'infiniteLoopTimeoutTime', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeLoop clone() => AiUeLoop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeLoop copyWith(void Function(AiUeLoop) updates) => super.copyWith((message) => updates(message as AiUeLoop)) as AiUeLoop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeLoop create() => AiUeLoop._();
  AiUeLoop createEmptyInstance() => create();
  static $pb.PbList<AiUeLoop> createRepeated() => $pb.PbList<AiUeLoop>();
  @$core.pragma('dart2js:noInline')
  static AiUeLoop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeLoop>(create);
  static AiUeLoop? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numLoops => $_getIZ(3);
  @$pb.TagNumber(4)
  set numLoops($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumLoops() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumLoops() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get infiniteLoop => $_getBF(4);
  @$pb.TagNumber(5)
  set infiniteLoop($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInfiniteLoop() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfiniteLoop() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get infiniteLoopTimeoutTime => $_getN(5);
  @$pb.TagNumber(6)
  set infiniteLoopTimeoutTime($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInfiniteLoopTimeoutTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearInfiniteLoopTimeoutTime() => clearField(6);
}

class AiUeTimeLimit extends $pb.GeneratedMessage {
  factory AiUeTimeLimit({
    $core.int? id,
    $core.String? nodeName,
    AiEFlowAbortMode? flowAbortMode,
    $core.double? limitTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (flowAbortMode != null) {
      $result.flowAbortMode = flowAbortMode;
    }
    if (limitTime != null) {
      $result.limitTime = limitTime;
    }
    return $result;
  }
  AiUeTimeLimit._() : super();
  factory AiUeTimeLimit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeTimeLimit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeTimeLimit', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..e<AiEFlowAbortMode>(3, _omitFieldNames ? '' : 'flowAbortMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFlowAbortMode.AiEFlowAbortMode_NONE, valueOf: AiEFlowAbortMode.valueOf, enumValues: AiEFlowAbortMode.values)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'limitTime', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeTimeLimit clone() => AiUeTimeLimit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeTimeLimit copyWith(void Function(AiUeTimeLimit) updates) => super.copyWith((message) => updates(message as AiUeTimeLimit)) as AiUeTimeLimit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeTimeLimit create() => AiUeTimeLimit._();
  AiUeTimeLimit createEmptyInstance() => create();
  static $pb.PbList<AiUeTimeLimit> createRepeated() => $pb.PbList<AiUeTimeLimit>();
  @$core.pragma('dart2js:noInline')
  static AiUeTimeLimit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeTimeLimit>(create);
  static AiUeTimeLimit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  AiEFlowAbortMode get flowAbortMode => $_getN(2);
  @$pb.TagNumber(3)
  set flowAbortMode(AiEFlowAbortMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlowAbortMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlowAbortMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get limitTime => $_getN(3);
  @$pb.TagNumber(4)
  set limitTime($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimitTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimitTime() => clearField(4);
}

enum AiFlowNode_Value {
  sequence, 
  selector, 
  simpleParallel, 
  ueWait, 
  ueWaitBlackboardTime, 
  moveToTarget, 
  chooseSkill, 
  moveToRandomLocation, 
  moveToLocation, 
  debugPrint, 
  notSet
}

class AiFlowNode extends $pb.GeneratedMessage {
  factory AiFlowNode({
    AiSequence? sequence,
    AiSelector? selector,
    AiSimpleParallel? simpleParallel,
    AiUeWait? ueWait,
    AiUeWaitBlackboardTime? ueWaitBlackboardTime,
    AiMoveToTarget? moveToTarget,
    AiChooseSkill? chooseSkill,
    AiMoveToRandomLocation? moveToRandomLocation,
    AiMoveToLocation? moveToLocation,
    AiDebugPrint? debugPrint,
  }) {
    final $result = create();
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (simpleParallel != null) {
      $result.simpleParallel = simpleParallel;
    }
    if (ueWait != null) {
      $result.ueWait = ueWait;
    }
    if (ueWaitBlackboardTime != null) {
      $result.ueWaitBlackboardTime = ueWaitBlackboardTime;
    }
    if (moveToTarget != null) {
      $result.moveToTarget = moveToTarget;
    }
    if (chooseSkill != null) {
      $result.chooseSkill = chooseSkill;
    }
    if (moveToRandomLocation != null) {
      $result.moveToRandomLocation = moveToRandomLocation;
    }
    if (moveToLocation != null) {
      $result.moveToLocation = moveToLocation;
    }
    if (debugPrint != null) {
      $result.debugPrint = debugPrint;
    }
    return $result;
  }
  AiFlowNode._() : super();
  factory AiFlowNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiFlowNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiFlowNode_Value> _AiFlowNode_ValueByTag = {
    14 : AiFlowNode_Value.sequence,
    15 : AiFlowNode_Value.selector,
    16 : AiFlowNode_Value.simpleParallel,
    17 : AiFlowNode_Value.ueWait,
    18 : AiFlowNode_Value.ueWaitBlackboardTime,
    19 : AiFlowNode_Value.moveToTarget,
    20 : AiFlowNode_Value.chooseSkill,
    21 : AiFlowNode_Value.moveToRandomLocation,
    22 : AiFlowNode_Value.moveToLocation,
    23 : AiFlowNode_Value.debugPrint,
    0 : AiFlowNode_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiFlowNode', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [14, 15, 16, 17, 18, 19, 20, 21, 22, 23])
    ..aOM<AiSequence>(14, _omitFieldNames ? '' : 'Sequence', protoName: 'Sequence', subBuilder: AiSequence.create)
    ..aOM<AiSelector>(15, _omitFieldNames ? '' : 'Selector', protoName: 'Selector', subBuilder: AiSelector.create)
    ..aOM<AiSimpleParallel>(16, _omitFieldNames ? '' : 'SimpleParallel', protoName: 'SimpleParallel', subBuilder: AiSimpleParallel.create)
    ..aOM<AiUeWait>(17, _omitFieldNames ? '' : 'UeWait', protoName: 'UeWait', subBuilder: AiUeWait.create)
    ..aOM<AiUeWaitBlackboardTime>(18, _omitFieldNames ? '' : 'UeWaitBlackboardTime', protoName: 'UeWaitBlackboardTime', subBuilder: AiUeWaitBlackboardTime.create)
    ..aOM<AiMoveToTarget>(19, _omitFieldNames ? '' : 'MoveToTarget', protoName: 'MoveToTarget', subBuilder: AiMoveToTarget.create)
    ..aOM<AiChooseSkill>(20, _omitFieldNames ? '' : 'ChooseSkill', protoName: 'ChooseSkill', subBuilder: AiChooseSkill.create)
    ..aOM<AiMoveToRandomLocation>(21, _omitFieldNames ? '' : 'MoveToRandomLocation', protoName: 'MoveToRandomLocation', subBuilder: AiMoveToRandomLocation.create)
    ..aOM<AiMoveToLocation>(22, _omitFieldNames ? '' : 'MoveToLocation', protoName: 'MoveToLocation', subBuilder: AiMoveToLocation.create)
    ..aOM<AiDebugPrint>(23, _omitFieldNames ? '' : 'DebugPrint', protoName: 'DebugPrint', subBuilder: AiDebugPrint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiFlowNode clone() => AiFlowNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiFlowNode copyWith(void Function(AiFlowNode) updates) => super.copyWith((message) => updates(message as AiFlowNode)) as AiFlowNode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiFlowNode create() => AiFlowNode._();
  AiFlowNode createEmptyInstance() => create();
  static $pb.PbList<AiFlowNode> createRepeated() => $pb.PbList<AiFlowNode>();
  @$core.pragma('dart2js:noInline')
  static AiFlowNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiFlowNode>(create);
  static AiFlowNode? _defaultInstance;

  AiFlowNode_Value whichValue() => _AiFlowNode_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(14)
  AiSequence get sequence => $_getN(0);
  @$pb.TagNumber(14)
  set sequence(AiSequence v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasSequence() => $_has(0);
  @$pb.TagNumber(14)
  void clearSequence() => clearField(14);
  @$pb.TagNumber(14)
  AiSequence ensureSequence() => $_ensure(0);

  @$pb.TagNumber(15)
  AiSelector get selector => $_getN(1);
  @$pb.TagNumber(15)
  set selector(AiSelector v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSelector() => $_has(1);
  @$pb.TagNumber(15)
  void clearSelector() => clearField(15);
  @$pb.TagNumber(15)
  AiSelector ensureSelector() => $_ensure(1);

  @$pb.TagNumber(16)
  AiSimpleParallel get simpleParallel => $_getN(2);
  @$pb.TagNumber(16)
  set simpleParallel(AiSimpleParallel v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSimpleParallel() => $_has(2);
  @$pb.TagNumber(16)
  void clearSimpleParallel() => clearField(16);
  @$pb.TagNumber(16)
  AiSimpleParallel ensureSimpleParallel() => $_ensure(2);

  @$pb.TagNumber(17)
  AiUeWait get ueWait => $_getN(3);
  @$pb.TagNumber(17)
  set ueWait(AiUeWait v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasUeWait() => $_has(3);
  @$pb.TagNumber(17)
  void clearUeWait() => clearField(17);
  @$pb.TagNumber(17)
  AiUeWait ensureUeWait() => $_ensure(3);

  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime get ueWaitBlackboardTime => $_getN(4);
  @$pb.TagNumber(18)
  set ueWaitBlackboardTime(AiUeWaitBlackboardTime v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUeWaitBlackboardTime() => $_has(4);
  @$pb.TagNumber(18)
  void clearUeWaitBlackboardTime() => clearField(18);
  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime ensureUeWaitBlackboardTime() => $_ensure(4);

  @$pb.TagNumber(19)
  AiMoveToTarget get moveToTarget => $_getN(5);
  @$pb.TagNumber(19)
  set moveToTarget(AiMoveToTarget v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasMoveToTarget() => $_has(5);
  @$pb.TagNumber(19)
  void clearMoveToTarget() => clearField(19);
  @$pb.TagNumber(19)
  AiMoveToTarget ensureMoveToTarget() => $_ensure(5);

  @$pb.TagNumber(20)
  AiChooseSkill get chooseSkill => $_getN(6);
  @$pb.TagNumber(20)
  set chooseSkill(AiChooseSkill v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasChooseSkill() => $_has(6);
  @$pb.TagNumber(20)
  void clearChooseSkill() => clearField(20);
  @$pb.TagNumber(20)
  AiChooseSkill ensureChooseSkill() => $_ensure(6);

  @$pb.TagNumber(21)
  AiMoveToRandomLocation get moveToRandomLocation => $_getN(7);
  @$pb.TagNumber(21)
  set moveToRandomLocation(AiMoveToRandomLocation v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasMoveToRandomLocation() => $_has(7);
  @$pb.TagNumber(21)
  void clearMoveToRandomLocation() => clearField(21);
  @$pb.TagNumber(21)
  AiMoveToRandomLocation ensureMoveToRandomLocation() => $_ensure(7);

  @$pb.TagNumber(22)
  AiMoveToLocation get moveToLocation => $_getN(8);
  @$pb.TagNumber(22)
  set moveToLocation(AiMoveToLocation v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasMoveToLocation() => $_has(8);
  @$pb.TagNumber(22)
  void clearMoveToLocation() => clearField(22);
  @$pb.TagNumber(22)
  AiMoveToLocation ensureMoveToLocation() => $_ensure(8);

  @$pb.TagNumber(23)
  AiDebugPrint get debugPrint => $_getN(9);
  @$pb.TagNumber(23)
  set debugPrint(AiDebugPrint v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasDebugPrint() => $_has(9);
  @$pb.TagNumber(23)
  void clearDebugPrint() => clearField(23);
  @$pb.TagNumber(23)
  AiDebugPrint ensureDebugPrint() => $_ensure(9);
}

enum AiComposeNode_Value {
  sequence, 
  selector, 
  simpleParallel, 
  notSet
}

class AiComposeNode extends $pb.GeneratedMessage {
  factory AiComposeNode({
    AiSequence? sequence,
    AiSelector? selector,
    AiSimpleParallel? simpleParallel,
  }) {
    final $result = create();
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (simpleParallel != null) {
      $result.simpleParallel = simpleParallel;
    }
    return $result;
  }
  AiComposeNode._() : super();
  factory AiComposeNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiComposeNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiComposeNode_Value> _AiComposeNode_ValueByTag = {
    14 : AiComposeNode_Value.sequence,
    15 : AiComposeNode_Value.selector,
    16 : AiComposeNode_Value.simpleParallel,
    0 : AiComposeNode_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiComposeNode', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [14, 15, 16])
    ..aOM<AiSequence>(14, _omitFieldNames ? '' : 'Sequence', protoName: 'Sequence', subBuilder: AiSequence.create)
    ..aOM<AiSelector>(15, _omitFieldNames ? '' : 'Selector', protoName: 'Selector', subBuilder: AiSelector.create)
    ..aOM<AiSimpleParallel>(16, _omitFieldNames ? '' : 'SimpleParallel', protoName: 'SimpleParallel', subBuilder: AiSimpleParallel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiComposeNode clone() => AiComposeNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiComposeNode copyWith(void Function(AiComposeNode) updates) => super.copyWith((message) => updates(message as AiComposeNode)) as AiComposeNode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiComposeNode create() => AiComposeNode._();
  AiComposeNode createEmptyInstance() => create();
  static $pb.PbList<AiComposeNode> createRepeated() => $pb.PbList<AiComposeNode>();
  @$core.pragma('dart2js:noInline')
  static AiComposeNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiComposeNode>(create);
  static AiComposeNode? _defaultInstance;

  AiComposeNode_Value whichValue() => _AiComposeNode_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(14)
  AiSequence get sequence => $_getN(0);
  @$pb.TagNumber(14)
  set sequence(AiSequence v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasSequence() => $_has(0);
  @$pb.TagNumber(14)
  void clearSequence() => clearField(14);
  @$pb.TagNumber(14)
  AiSequence ensureSequence() => $_ensure(0);

  @$pb.TagNumber(15)
  AiSelector get selector => $_getN(1);
  @$pb.TagNumber(15)
  set selector(AiSelector v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSelector() => $_has(1);
  @$pb.TagNumber(15)
  void clearSelector() => clearField(15);
  @$pb.TagNumber(15)
  AiSelector ensureSelector() => $_ensure(1);

  @$pb.TagNumber(16)
  AiSimpleParallel get simpleParallel => $_getN(2);
  @$pb.TagNumber(16)
  set simpleParallel(AiSimpleParallel v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSimpleParallel() => $_has(2);
  @$pb.TagNumber(16)
  void clearSimpleParallel() => clearField(16);
  @$pb.TagNumber(16)
  AiSimpleParallel ensureSimpleParallel() => $_ensure(2);
}

class AiSelector extends $pb.GeneratedMessage {
  factory AiSelector({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.Iterable<AiFlowNode>? children,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (children != null) {
      $result.children.addAll(children);
    }
    return $result;
  }
  AiSelector._() : super();
  factory AiSelector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiSelector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiSelector', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..pc<AiFlowNode>(5, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM, subBuilder: AiFlowNode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiSelector clone() => AiSelector()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiSelector copyWith(void Function(AiSelector) updates) => super.copyWith((message) => updates(message as AiSelector)) as AiSelector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiSelector create() => AiSelector._();
  AiSelector createEmptyInstance() => create();
  static $pb.PbList<AiSelector> createRepeated() => $pb.PbList<AiSelector>();
  @$core.pragma('dart2js:noInline')
  static AiSelector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiSelector>(create);
  static AiSelector? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<AiFlowNode> get children => $_getList(4);
}

class AiSequence extends $pb.GeneratedMessage {
  factory AiSequence({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.Iterable<AiFlowNode>? children,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (children != null) {
      $result.children.addAll(children);
    }
    return $result;
  }
  AiSequence._() : super();
  factory AiSequence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiSequence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiSequence', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..pc<AiFlowNode>(5, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM, subBuilder: AiFlowNode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiSequence clone() => AiSequence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiSequence copyWith(void Function(AiSequence) updates) => super.copyWith((message) => updates(message as AiSequence)) as AiSequence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiSequence create() => AiSequence._();
  AiSequence createEmptyInstance() => create();
  static $pb.PbList<AiSequence> createRepeated() => $pb.PbList<AiSequence>();
  @$core.pragma('dart2js:noInline')
  static AiSequence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiSequence>(create);
  static AiSequence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<AiFlowNode> get children => $_getList(4);
}

class AiSimpleParallel extends $pb.GeneratedMessage {
  factory AiSimpleParallel({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    AiEFinishMode? finishMode,
    AiTask? mainTask,
    AiFlowNode? backgroundNode,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (finishMode != null) {
      $result.finishMode = finishMode;
    }
    if (mainTask != null) {
      $result.mainTask = mainTask;
    }
    if (backgroundNode != null) {
      $result.backgroundNode = backgroundNode;
    }
    return $result;
  }
  AiSimpleParallel._() : super();
  factory AiSimpleParallel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiSimpleParallel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiSimpleParallel', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..e<AiEFinishMode>(5, _omitFieldNames ? '' : 'finishMode', $pb.PbFieldType.OE, defaultOrMaker: AiEFinishMode.AiEFinishMode_IMMEDIATE, valueOf: AiEFinishMode.valueOf, enumValues: AiEFinishMode.values)
    ..aOM<AiTask>(6, _omitFieldNames ? '' : 'mainTask', subBuilder: AiTask.create)
    ..aOM<AiFlowNode>(7, _omitFieldNames ? '' : 'backgroundNode', subBuilder: AiFlowNode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiSimpleParallel clone() => AiSimpleParallel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiSimpleParallel copyWith(void Function(AiSimpleParallel) updates) => super.copyWith((message) => updates(message as AiSimpleParallel)) as AiSimpleParallel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiSimpleParallel create() => AiSimpleParallel._();
  AiSimpleParallel createEmptyInstance() => create();
  static $pb.PbList<AiSimpleParallel> createRepeated() => $pb.PbList<AiSimpleParallel>();
  @$core.pragma('dart2js:noInline')
  static AiSimpleParallel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiSimpleParallel>(create);
  static AiSimpleParallel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  AiEFinishMode get finishMode => $_getN(4);
  @$pb.TagNumber(5)
  set finishMode(AiEFinishMode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFinishMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearFinishMode() => clearField(5);

  @$pb.TagNumber(6)
  AiTask get mainTask => $_getN(5);
  @$pb.TagNumber(6)
  set mainTask(AiTask v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMainTask() => $_has(5);
  @$pb.TagNumber(6)
  void clearMainTask() => clearField(6);
  @$pb.TagNumber(6)
  AiTask ensureMainTask() => $_ensure(5);

  @$pb.TagNumber(7)
  AiFlowNode get backgroundNode => $_getN(6);
  @$pb.TagNumber(7)
  set backgroundNode(AiFlowNode v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackgroundNode() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundNode() => clearField(7);
  @$pb.TagNumber(7)
  AiFlowNode ensureBackgroundNode() => $_ensure(6);
}

enum AiTask_Value {
  ueWait, 
  ueWaitBlackboardTime, 
  moveToTarget, 
  chooseSkill, 
  moveToRandomLocation, 
  moveToLocation, 
  debugPrint, 
  notSet
}

class AiTask extends $pb.GeneratedMessage {
  factory AiTask({
    AiUeWait? ueWait,
    AiUeWaitBlackboardTime? ueWaitBlackboardTime,
    AiMoveToTarget? moveToTarget,
    AiChooseSkill? chooseSkill,
    AiMoveToRandomLocation? moveToRandomLocation,
    AiMoveToLocation? moveToLocation,
    AiDebugPrint? debugPrint,
  }) {
    final $result = create();
    if (ueWait != null) {
      $result.ueWait = ueWait;
    }
    if (ueWaitBlackboardTime != null) {
      $result.ueWaitBlackboardTime = ueWaitBlackboardTime;
    }
    if (moveToTarget != null) {
      $result.moveToTarget = moveToTarget;
    }
    if (chooseSkill != null) {
      $result.chooseSkill = chooseSkill;
    }
    if (moveToRandomLocation != null) {
      $result.moveToRandomLocation = moveToRandomLocation;
    }
    if (moveToLocation != null) {
      $result.moveToLocation = moveToLocation;
    }
    if (debugPrint != null) {
      $result.debugPrint = debugPrint;
    }
    return $result;
  }
  AiTask._() : super();
  factory AiTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiTask_Value> _AiTask_ValueByTag = {
    17 : AiTask_Value.ueWait,
    18 : AiTask_Value.ueWaitBlackboardTime,
    19 : AiTask_Value.moveToTarget,
    20 : AiTask_Value.chooseSkill,
    21 : AiTask_Value.moveToRandomLocation,
    22 : AiTask_Value.moveToLocation,
    23 : AiTask_Value.debugPrint,
    0 : AiTask_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [17, 18, 19, 20, 21, 22, 23])
    ..aOM<AiUeWait>(17, _omitFieldNames ? '' : 'UeWait', protoName: 'UeWait', subBuilder: AiUeWait.create)
    ..aOM<AiUeWaitBlackboardTime>(18, _omitFieldNames ? '' : 'UeWaitBlackboardTime', protoName: 'UeWaitBlackboardTime', subBuilder: AiUeWaitBlackboardTime.create)
    ..aOM<AiMoveToTarget>(19, _omitFieldNames ? '' : 'MoveToTarget', protoName: 'MoveToTarget', subBuilder: AiMoveToTarget.create)
    ..aOM<AiChooseSkill>(20, _omitFieldNames ? '' : 'ChooseSkill', protoName: 'ChooseSkill', subBuilder: AiChooseSkill.create)
    ..aOM<AiMoveToRandomLocation>(21, _omitFieldNames ? '' : 'MoveToRandomLocation', protoName: 'MoveToRandomLocation', subBuilder: AiMoveToRandomLocation.create)
    ..aOM<AiMoveToLocation>(22, _omitFieldNames ? '' : 'MoveToLocation', protoName: 'MoveToLocation', subBuilder: AiMoveToLocation.create)
    ..aOM<AiDebugPrint>(23, _omitFieldNames ? '' : 'DebugPrint', protoName: 'DebugPrint', subBuilder: AiDebugPrint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiTask clone() => AiTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiTask copyWith(void Function(AiTask) updates) => super.copyWith((message) => updates(message as AiTask)) as AiTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiTask create() => AiTask._();
  AiTask createEmptyInstance() => create();
  static $pb.PbList<AiTask> createRepeated() => $pb.PbList<AiTask>();
  @$core.pragma('dart2js:noInline')
  static AiTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiTask>(create);
  static AiTask? _defaultInstance;

  AiTask_Value whichValue() => _AiTask_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(17)
  AiUeWait get ueWait => $_getN(0);
  @$pb.TagNumber(17)
  set ueWait(AiUeWait v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasUeWait() => $_has(0);
  @$pb.TagNumber(17)
  void clearUeWait() => clearField(17);
  @$pb.TagNumber(17)
  AiUeWait ensureUeWait() => $_ensure(0);

  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime get ueWaitBlackboardTime => $_getN(1);
  @$pb.TagNumber(18)
  set ueWaitBlackboardTime(AiUeWaitBlackboardTime v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUeWaitBlackboardTime() => $_has(1);
  @$pb.TagNumber(18)
  void clearUeWaitBlackboardTime() => clearField(18);
  @$pb.TagNumber(18)
  AiUeWaitBlackboardTime ensureUeWaitBlackboardTime() => $_ensure(1);

  @$pb.TagNumber(19)
  AiMoveToTarget get moveToTarget => $_getN(2);
  @$pb.TagNumber(19)
  set moveToTarget(AiMoveToTarget v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasMoveToTarget() => $_has(2);
  @$pb.TagNumber(19)
  void clearMoveToTarget() => clearField(19);
  @$pb.TagNumber(19)
  AiMoveToTarget ensureMoveToTarget() => $_ensure(2);

  @$pb.TagNumber(20)
  AiChooseSkill get chooseSkill => $_getN(3);
  @$pb.TagNumber(20)
  set chooseSkill(AiChooseSkill v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasChooseSkill() => $_has(3);
  @$pb.TagNumber(20)
  void clearChooseSkill() => clearField(20);
  @$pb.TagNumber(20)
  AiChooseSkill ensureChooseSkill() => $_ensure(3);

  @$pb.TagNumber(21)
  AiMoveToRandomLocation get moveToRandomLocation => $_getN(4);
  @$pb.TagNumber(21)
  set moveToRandomLocation(AiMoveToRandomLocation v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasMoveToRandomLocation() => $_has(4);
  @$pb.TagNumber(21)
  void clearMoveToRandomLocation() => clearField(21);
  @$pb.TagNumber(21)
  AiMoveToRandomLocation ensureMoveToRandomLocation() => $_ensure(4);

  @$pb.TagNumber(22)
  AiMoveToLocation get moveToLocation => $_getN(5);
  @$pb.TagNumber(22)
  set moveToLocation(AiMoveToLocation v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasMoveToLocation() => $_has(5);
  @$pb.TagNumber(22)
  void clearMoveToLocation() => clearField(22);
  @$pb.TagNumber(22)
  AiMoveToLocation ensureMoveToLocation() => $_ensure(5);

  @$pb.TagNumber(23)
  AiDebugPrint get debugPrint => $_getN(6);
  @$pb.TagNumber(23)
  set debugPrint(AiDebugPrint v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasDebugPrint() => $_has(6);
  @$pb.TagNumber(23)
  void clearDebugPrint() => clearField(23);
  @$pb.TagNumber(23)
  AiDebugPrint ensureDebugPrint() => $_ensure(6);
}

class AiChooseSkill extends $pb.GeneratedMessage {
  factory AiChooseSkill({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.String? targetActorKey,
    $core.String? resultSkillIdKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (targetActorKey != null) {
      $result.targetActorKey = targetActorKey;
    }
    if (resultSkillIdKey != null) {
      $result.resultSkillIdKey = resultSkillIdKey;
    }
    return $result;
  }
  AiChooseSkill._() : super();
  factory AiChooseSkill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiChooseSkill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiChooseSkill', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..aOS(6, _omitFieldNames ? '' : 'targetActorKey')
    ..aOS(7, _omitFieldNames ? '' : 'resultSkillIdKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiChooseSkill clone() => AiChooseSkill()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiChooseSkill copyWith(void Function(AiChooseSkill) updates) => super.copyWith((message) => updates(message as AiChooseSkill)) as AiChooseSkill;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChooseSkill create() => AiChooseSkill._();
  AiChooseSkill createEmptyInstance() => create();
  static $pb.PbList<AiChooseSkill> createRepeated() => $pb.PbList<AiChooseSkill>();
  @$core.pragma('dart2js:noInline')
  static AiChooseSkill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiChooseSkill>(create);
  static AiChooseSkill? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get targetActorKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set targetActorKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTargetActorKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetActorKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get resultSkillIdKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set resultSkillIdKey($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasResultSkillIdKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearResultSkillIdKey() => clearField(7);
}

class AiDebugPrint extends $pb.GeneratedMessage {
  factory AiDebugPrint({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.String? text,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  AiDebugPrint._() : super();
  factory AiDebugPrint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiDebugPrint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiDebugPrint', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..aOS(6, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiDebugPrint clone() => AiDebugPrint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiDebugPrint copyWith(void Function(AiDebugPrint) updates) => super.copyWith((message) => updates(message as AiDebugPrint)) as AiDebugPrint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiDebugPrint create() => AiDebugPrint._();
  AiDebugPrint createEmptyInstance() => create();
  static $pb.PbList<AiDebugPrint> createRepeated() => $pb.PbList<AiDebugPrint>();
  @$core.pragma('dart2js:noInline')
  static AiDebugPrint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiDebugPrint>(create);
  static AiDebugPrint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get text => $_getSZ(5);
  @$pb.TagNumber(6)
  set text($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasText() => $_has(5);
  @$pb.TagNumber(6)
  void clearText() => clearField(6);
}

class AiMoveToLocation extends $pb.GeneratedMessage {
  factory AiMoveToLocation({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.double? acceptableRadius,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (acceptableRadius != null) {
      $result.acceptableRadius = acceptableRadius;
    }
    return $result;
  }
  AiMoveToLocation._() : super();
  factory AiMoveToLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiMoveToLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiMoveToLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'acceptableRadius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiMoveToLocation clone() => AiMoveToLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiMoveToLocation copyWith(void Function(AiMoveToLocation) updates) => super.copyWith((message) => updates(message as AiMoveToLocation)) as AiMoveToLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiMoveToLocation create() => AiMoveToLocation._();
  AiMoveToLocation createEmptyInstance() => create();
  static $pb.PbList<AiMoveToLocation> createRepeated() => $pb.PbList<AiMoveToLocation>();
  @$core.pragma('dart2js:noInline')
  static AiMoveToLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiMoveToLocation>(create);
  static AiMoveToLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get acceptableRadius => $_getN(5);
  @$pb.TagNumber(6)
  set acceptableRadius($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAcceptableRadius() => $_has(5);
  @$pb.TagNumber(6)
  void clearAcceptableRadius() => clearField(6);
}

class AiMoveToRandomLocation extends $pb.GeneratedMessage {
  factory AiMoveToRandomLocation({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.String? originPositionKey,
    $core.double? radius,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (originPositionKey != null) {
      $result.originPositionKey = originPositionKey;
    }
    if (radius != null) {
      $result.radius = radius;
    }
    return $result;
  }
  AiMoveToRandomLocation._() : super();
  factory AiMoveToRandomLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiMoveToRandomLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiMoveToRandomLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..aOS(6, _omitFieldNames ? '' : 'originPositionKey')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiMoveToRandomLocation clone() => AiMoveToRandomLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiMoveToRandomLocation copyWith(void Function(AiMoveToRandomLocation) updates) => super.copyWith((message) => updates(message as AiMoveToRandomLocation)) as AiMoveToRandomLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiMoveToRandomLocation create() => AiMoveToRandomLocation._();
  AiMoveToRandomLocation createEmptyInstance() => create();
  static $pb.PbList<AiMoveToRandomLocation> createRepeated() => $pb.PbList<AiMoveToRandomLocation>();
  @$core.pragma('dart2js:noInline')
  static AiMoveToRandomLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiMoveToRandomLocation>(create);
  static AiMoveToRandomLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get originPositionKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set originPositionKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOriginPositionKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearOriginPositionKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get radius => $_getN(6);
  @$pb.TagNumber(7)
  set radius($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRadius() => $_has(6);
  @$pb.TagNumber(7)
  void clearRadius() => clearField(7);
}

class AiMoveToTarget extends $pb.GeneratedMessage {
  factory AiMoveToTarget({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.String? targetActorKey,
    $core.double? acceptableRadius,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (targetActorKey != null) {
      $result.targetActorKey = targetActorKey;
    }
    if (acceptableRadius != null) {
      $result.acceptableRadius = acceptableRadius;
    }
    return $result;
  }
  AiMoveToTarget._() : super();
  factory AiMoveToTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiMoveToTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiMoveToTarget', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..aOS(6, _omitFieldNames ? '' : 'targetActorKey')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'acceptableRadius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiMoveToTarget clone() => AiMoveToTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiMoveToTarget copyWith(void Function(AiMoveToTarget) updates) => super.copyWith((message) => updates(message as AiMoveToTarget)) as AiMoveToTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiMoveToTarget create() => AiMoveToTarget._();
  AiMoveToTarget createEmptyInstance() => create();
  static $pb.PbList<AiMoveToTarget> createRepeated() => $pb.PbList<AiMoveToTarget>();
  @$core.pragma('dart2js:noInline')
  static AiMoveToTarget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiMoveToTarget>(create);
  static AiMoveToTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get targetActorKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set targetActorKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTargetActorKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetActorKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get acceptableRadius => $_getN(6);
  @$pb.TagNumber(7)
  set acceptableRadius($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAcceptableRadius() => $_has(6);
  @$pb.TagNumber(7)
  void clearAcceptableRadius() => clearField(7);
}

class AiUeWait extends $pb.GeneratedMessage {
  factory AiUeWait({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.double? waitTime,
    $core.double? randomDeviation,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (waitTime != null) {
      $result.waitTime = waitTime;
    }
    if (randomDeviation != null) {
      $result.randomDeviation = randomDeviation;
    }
    return $result;
  }
  AiUeWait._() : super();
  factory AiUeWait.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeWait.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeWait', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'waitTime', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'randomDeviation', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeWait clone() => AiUeWait()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeWait copyWith(void Function(AiUeWait) updates) => super.copyWith((message) => updates(message as AiUeWait)) as AiUeWait;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeWait create() => AiUeWait._();
  AiUeWait createEmptyInstance() => create();
  static $pb.PbList<AiUeWait> createRepeated() => $pb.PbList<AiUeWait>();
  @$core.pragma('dart2js:noInline')
  static AiUeWait getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeWait>(create);
  static AiUeWait? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get waitTime => $_getN(5);
  @$pb.TagNumber(6)
  set waitTime($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWaitTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearWaitTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get randomDeviation => $_getN(6);
  @$pb.TagNumber(7)
  set randomDeviation($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRandomDeviation() => $_has(6);
  @$pb.TagNumber(7)
  void clearRandomDeviation() => clearField(7);
}

class AiUeWaitBlackboardTime extends $pb.GeneratedMessage {
  factory AiUeWaitBlackboardTime({
    $core.int? id,
    $core.String? nodeName,
    $core.Iterable<AiDecorator>? decorators,
    $core.Iterable<AiService>? services,
    $core.bool? ignoreRestartSelf,
    $core.String? blackboardKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (decorators != null) {
      $result.decorators.addAll(decorators);
    }
    if (services != null) {
      $result.services.addAll(services);
    }
    if (ignoreRestartSelf != null) {
      $result.ignoreRestartSelf = ignoreRestartSelf;
    }
    if (blackboardKey != null) {
      $result.blackboardKey = blackboardKey;
    }
    return $result;
  }
  AiUeWaitBlackboardTime._() : super();
  factory AiUeWaitBlackboardTime.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeWaitBlackboardTime.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeWaitBlackboardTime', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..pc<AiDecorator>(3, _omitFieldNames ? '' : 'decorators', $pb.PbFieldType.PM, subBuilder: AiDecorator.create)
    ..pc<AiService>(4, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: AiService.create)
    ..aOB(5, _omitFieldNames ? '' : 'ignoreRestartSelf')
    ..aOS(6, _omitFieldNames ? '' : 'blackboardKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeWaitBlackboardTime clone() => AiUeWaitBlackboardTime()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeWaitBlackboardTime copyWith(void Function(AiUeWaitBlackboardTime) updates) => super.copyWith((message) => updates(message as AiUeWaitBlackboardTime)) as AiUeWaitBlackboardTime;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeWaitBlackboardTime create() => AiUeWaitBlackboardTime._();
  AiUeWaitBlackboardTime createEmptyInstance() => create();
  static $pb.PbList<AiUeWaitBlackboardTime> createRepeated() => $pb.PbList<AiUeWaitBlackboardTime>();
  @$core.pragma('dart2js:noInline')
  static AiUeWaitBlackboardTime getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeWaitBlackboardTime>(create);
  static AiUeWaitBlackboardTime? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AiDecorator> get decorators => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<AiService> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get ignoreRestartSelf => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreRestartSelf($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreRestartSelf() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreRestartSelf() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get blackboardKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set blackboardKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlackboardKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlackboardKey() => clearField(6);
}

enum AiService_Value {
  ueSetDefaultFocus, 
  executeTimeStatistic, 
  chooseTarget, 
  keepFaceTarget, 
  getOwnerPlayer, 
  updateDailyBehaviorProps, 
  notSet
}

class AiService extends $pb.GeneratedMessage {
  factory AiService({
    AiUeSetDefaultFocus? ueSetDefaultFocus,
    AiExecuteTimeStatistic? executeTimeStatistic,
    AiChooseTarget? chooseTarget,
    AiKeepFaceTarget? keepFaceTarget,
    AiGetOwnerPlayer? getOwnerPlayer,
    AiUpdateDailyBehaviorProps? updateDailyBehaviorProps,
  }) {
    final $result = create();
    if (ueSetDefaultFocus != null) {
      $result.ueSetDefaultFocus = ueSetDefaultFocus;
    }
    if (executeTimeStatistic != null) {
      $result.executeTimeStatistic = executeTimeStatistic;
    }
    if (chooseTarget != null) {
      $result.chooseTarget = chooseTarget;
    }
    if (keepFaceTarget != null) {
      $result.keepFaceTarget = keepFaceTarget;
    }
    if (getOwnerPlayer != null) {
      $result.getOwnerPlayer = getOwnerPlayer;
    }
    if (updateDailyBehaviorProps != null) {
      $result.updateDailyBehaviorProps = updateDailyBehaviorProps;
    }
    return $result;
  }
  AiService._() : super();
  factory AiService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AiService_Value> _AiService_ValueByTag = {
    1 : AiService_Value.ueSetDefaultFocus,
    2 : AiService_Value.executeTimeStatistic,
    3 : AiService_Value.chooseTarget,
    4 : AiService_Value.keepFaceTarget,
    5 : AiService_Value.getOwnerPlayer,
    6 : AiService_Value.updateDailyBehaviorProps,
    0 : AiService_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiService', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<AiUeSetDefaultFocus>(1, _omitFieldNames ? '' : 'UeSetDefaultFocus', protoName: 'UeSetDefaultFocus', subBuilder: AiUeSetDefaultFocus.create)
    ..aOM<AiExecuteTimeStatistic>(2, _omitFieldNames ? '' : 'ExecuteTimeStatistic', protoName: 'ExecuteTimeStatistic', subBuilder: AiExecuteTimeStatistic.create)
    ..aOM<AiChooseTarget>(3, _omitFieldNames ? '' : 'ChooseTarget', protoName: 'ChooseTarget', subBuilder: AiChooseTarget.create)
    ..aOM<AiKeepFaceTarget>(4, _omitFieldNames ? '' : 'KeepFaceTarget', protoName: 'KeepFaceTarget', subBuilder: AiKeepFaceTarget.create)
    ..aOM<AiGetOwnerPlayer>(5, _omitFieldNames ? '' : 'GetOwnerPlayer', protoName: 'GetOwnerPlayer', subBuilder: AiGetOwnerPlayer.create)
    ..aOM<AiUpdateDailyBehaviorProps>(6, _omitFieldNames ? '' : 'UpdateDailyBehaviorProps', protoName: 'UpdateDailyBehaviorProps', subBuilder: AiUpdateDailyBehaviorProps.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiService clone() => AiService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiService copyWith(void Function(AiService) updates) => super.copyWith((message) => updates(message as AiService)) as AiService;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiService create() => AiService._();
  AiService createEmptyInstance() => create();
  static $pb.PbList<AiService> createRepeated() => $pb.PbList<AiService>();
  @$core.pragma('dart2js:noInline')
  static AiService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiService>(create);
  static AiService? _defaultInstance;

  AiService_Value whichValue() => _AiService_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AiUeSetDefaultFocus get ueSetDefaultFocus => $_getN(0);
  @$pb.TagNumber(1)
  set ueSetDefaultFocus(AiUeSetDefaultFocus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUeSetDefaultFocus() => $_has(0);
  @$pb.TagNumber(1)
  void clearUeSetDefaultFocus() => clearField(1);
  @$pb.TagNumber(1)
  AiUeSetDefaultFocus ensureUeSetDefaultFocus() => $_ensure(0);

  @$pb.TagNumber(2)
  AiExecuteTimeStatistic get executeTimeStatistic => $_getN(1);
  @$pb.TagNumber(2)
  set executeTimeStatistic(AiExecuteTimeStatistic v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExecuteTimeStatistic() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecuteTimeStatistic() => clearField(2);
  @$pb.TagNumber(2)
  AiExecuteTimeStatistic ensureExecuteTimeStatistic() => $_ensure(1);

  @$pb.TagNumber(3)
  AiChooseTarget get chooseTarget => $_getN(2);
  @$pb.TagNumber(3)
  set chooseTarget(AiChooseTarget v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChooseTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearChooseTarget() => clearField(3);
  @$pb.TagNumber(3)
  AiChooseTarget ensureChooseTarget() => $_ensure(2);

  @$pb.TagNumber(4)
  AiKeepFaceTarget get keepFaceTarget => $_getN(3);
  @$pb.TagNumber(4)
  set keepFaceTarget(AiKeepFaceTarget v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeepFaceTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeepFaceTarget() => clearField(4);
  @$pb.TagNumber(4)
  AiKeepFaceTarget ensureKeepFaceTarget() => $_ensure(3);

  @$pb.TagNumber(5)
  AiGetOwnerPlayer get getOwnerPlayer => $_getN(4);
  @$pb.TagNumber(5)
  set getOwnerPlayer(AiGetOwnerPlayer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGetOwnerPlayer() => $_has(4);
  @$pb.TagNumber(5)
  void clearGetOwnerPlayer() => clearField(5);
  @$pb.TagNumber(5)
  AiGetOwnerPlayer ensureGetOwnerPlayer() => $_ensure(4);

  @$pb.TagNumber(6)
  AiUpdateDailyBehaviorProps get updateDailyBehaviorProps => $_getN(5);
  @$pb.TagNumber(6)
  set updateDailyBehaviorProps(AiUpdateDailyBehaviorProps v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDailyBehaviorProps() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDailyBehaviorProps() => clearField(6);
  @$pb.TagNumber(6)
  AiUpdateDailyBehaviorProps ensureUpdateDailyBehaviorProps() => $_ensure(5);
}

class AiChooseTarget extends $pb.GeneratedMessage {
  factory AiChooseTarget({
    $core.int? id,
    $core.String? nodeName,
    $core.String? resultTargetKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (resultTargetKey != null) {
      $result.resultTargetKey = resultTargetKey;
    }
    return $result;
  }
  AiChooseTarget._() : super();
  factory AiChooseTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiChooseTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiChooseTarget', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'resultTargetKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiChooseTarget clone() => AiChooseTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiChooseTarget copyWith(void Function(AiChooseTarget) updates) => super.copyWith((message) => updates(message as AiChooseTarget)) as AiChooseTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChooseTarget create() => AiChooseTarget._();
  AiChooseTarget createEmptyInstance() => create();
  static $pb.PbList<AiChooseTarget> createRepeated() => $pb.PbList<AiChooseTarget>();
  @$core.pragma('dart2js:noInline')
  static AiChooseTarget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiChooseTarget>(create);
  static AiChooseTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get resultTargetKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set resultTargetKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResultTargetKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearResultTargetKey() => clearField(3);
}

class AiExecuteTimeStatistic extends $pb.GeneratedMessage {
  factory AiExecuteTimeStatistic({
    $core.int? id,
    $core.String? nodeName,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    return $result;
  }
  AiExecuteTimeStatistic._() : super();
  factory AiExecuteTimeStatistic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiExecuteTimeStatistic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiExecuteTimeStatistic', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiExecuteTimeStatistic clone() => AiExecuteTimeStatistic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiExecuteTimeStatistic copyWith(void Function(AiExecuteTimeStatistic) updates) => super.copyWith((message) => updates(message as AiExecuteTimeStatistic)) as AiExecuteTimeStatistic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiExecuteTimeStatistic create() => AiExecuteTimeStatistic._();
  AiExecuteTimeStatistic createEmptyInstance() => create();
  static $pb.PbList<AiExecuteTimeStatistic> createRepeated() => $pb.PbList<AiExecuteTimeStatistic>();
  @$core.pragma('dart2js:noInline')
  static AiExecuteTimeStatistic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiExecuteTimeStatistic>(create);
  static AiExecuteTimeStatistic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);
}

class AiGetOwnerPlayer extends $pb.GeneratedMessage {
  factory AiGetOwnerPlayer({
    $core.int? id,
    $core.String? nodeName,
    $core.String? playerActorKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (playerActorKey != null) {
      $result.playerActorKey = playerActorKey;
    }
    return $result;
  }
  AiGetOwnerPlayer._() : super();
  factory AiGetOwnerPlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiGetOwnerPlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiGetOwnerPlayer', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'playerActorKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiGetOwnerPlayer clone() => AiGetOwnerPlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiGetOwnerPlayer copyWith(void Function(AiGetOwnerPlayer) updates) => super.copyWith((message) => updates(message as AiGetOwnerPlayer)) as AiGetOwnerPlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiGetOwnerPlayer create() => AiGetOwnerPlayer._();
  AiGetOwnerPlayer createEmptyInstance() => create();
  static $pb.PbList<AiGetOwnerPlayer> createRepeated() => $pb.PbList<AiGetOwnerPlayer>();
  @$core.pragma('dart2js:noInline')
  static AiGetOwnerPlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiGetOwnerPlayer>(create);
  static AiGetOwnerPlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get playerActorKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set playerActorKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayerActorKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayerActorKey() => clearField(3);
}

class AiKeepFaceTarget extends $pb.GeneratedMessage {
  factory AiKeepFaceTarget({
    $core.int? id,
    $core.String? nodeName,
    $core.String? targetActorKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (targetActorKey != null) {
      $result.targetActorKey = targetActorKey;
    }
    return $result;
  }
  AiKeepFaceTarget._() : super();
  factory AiKeepFaceTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiKeepFaceTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiKeepFaceTarget', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'targetActorKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiKeepFaceTarget clone() => AiKeepFaceTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiKeepFaceTarget copyWith(void Function(AiKeepFaceTarget) updates) => super.copyWith((message) => updates(message as AiKeepFaceTarget)) as AiKeepFaceTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiKeepFaceTarget create() => AiKeepFaceTarget._();
  AiKeepFaceTarget createEmptyInstance() => create();
  static $pb.PbList<AiKeepFaceTarget> createRepeated() => $pb.PbList<AiKeepFaceTarget>();
  @$core.pragma('dart2js:noInline')
  static AiKeepFaceTarget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiKeepFaceTarget>(create);
  static AiKeepFaceTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetActorKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetActorKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetActorKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetActorKey() => clearField(3);
}

class AiUeSetDefaultFocus extends $pb.GeneratedMessage {
  factory AiUeSetDefaultFocus({
    $core.int? id,
    $core.String? nodeName,
    $core.String? keyboardKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (keyboardKey != null) {
      $result.keyboardKey = keyboardKey;
    }
    return $result;
  }
  AiUeSetDefaultFocus._() : super();
  factory AiUeSetDefaultFocus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUeSetDefaultFocus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUeSetDefaultFocus', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'keyboardKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUeSetDefaultFocus clone() => AiUeSetDefaultFocus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUeSetDefaultFocus copyWith(void Function(AiUeSetDefaultFocus) updates) => super.copyWith((message) => updates(message as AiUeSetDefaultFocus)) as AiUeSetDefaultFocus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUeSetDefaultFocus create() => AiUeSetDefaultFocus._();
  AiUeSetDefaultFocus createEmptyInstance() => create();
  static $pb.PbList<AiUeSetDefaultFocus> createRepeated() => $pb.PbList<AiUeSetDefaultFocus>();
  @$core.pragma('dart2js:noInline')
  static AiUeSetDefaultFocus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUeSetDefaultFocus>(create);
  static AiUeSetDefaultFocus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get keyboardKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set keyboardKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyboardKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyboardKey() => clearField(3);
}

class AiUpdateDailyBehaviorProps extends $pb.GeneratedMessage {
  factory AiUpdateDailyBehaviorProps({
    $core.int? id,
    $core.String? nodeName,
    $core.String? satietyKey,
    $core.String? energyKey,
    $core.String? moodKey,
    $core.String? satietyLowerThresholdKey,
    $core.String? satietyUpperThresholdKey,
    $core.String? energyLowerThresholdKey,
    $core.String? energyUpperThresholdKey,
    $core.String? moodLowerThresholdKey,
    $core.String? moodUpperThresholdKey,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (satietyKey != null) {
      $result.satietyKey = satietyKey;
    }
    if (energyKey != null) {
      $result.energyKey = energyKey;
    }
    if (moodKey != null) {
      $result.moodKey = moodKey;
    }
    if (satietyLowerThresholdKey != null) {
      $result.satietyLowerThresholdKey = satietyLowerThresholdKey;
    }
    if (satietyUpperThresholdKey != null) {
      $result.satietyUpperThresholdKey = satietyUpperThresholdKey;
    }
    if (energyLowerThresholdKey != null) {
      $result.energyLowerThresholdKey = energyLowerThresholdKey;
    }
    if (energyUpperThresholdKey != null) {
      $result.energyUpperThresholdKey = energyUpperThresholdKey;
    }
    if (moodLowerThresholdKey != null) {
      $result.moodLowerThresholdKey = moodLowerThresholdKey;
    }
    if (moodUpperThresholdKey != null) {
      $result.moodUpperThresholdKey = moodUpperThresholdKey;
    }
    return $result;
  }
  AiUpdateDailyBehaviorProps._() : super();
  factory AiUpdateDailyBehaviorProps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiUpdateDailyBehaviorProps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiUpdateDailyBehaviorProps', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'satietyKey')
    ..aOS(4, _omitFieldNames ? '' : 'energyKey')
    ..aOS(5, _omitFieldNames ? '' : 'moodKey')
    ..aOS(6, _omitFieldNames ? '' : 'satietyLowerThresholdKey')
    ..aOS(7, _omitFieldNames ? '' : 'satietyUpperThresholdKey')
    ..aOS(8, _omitFieldNames ? '' : 'energyLowerThresholdKey')
    ..aOS(9, _omitFieldNames ? '' : 'energyUpperThresholdKey')
    ..aOS(10, _omitFieldNames ? '' : 'moodLowerThresholdKey')
    ..aOS(11, _omitFieldNames ? '' : 'moodUpperThresholdKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiUpdateDailyBehaviorProps clone() => AiUpdateDailyBehaviorProps()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiUpdateDailyBehaviorProps copyWith(void Function(AiUpdateDailyBehaviorProps) updates) => super.copyWith((message) => updates(message as AiUpdateDailyBehaviorProps)) as AiUpdateDailyBehaviorProps;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiUpdateDailyBehaviorProps create() => AiUpdateDailyBehaviorProps._();
  AiUpdateDailyBehaviorProps createEmptyInstance() => create();
  static $pb.PbList<AiUpdateDailyBehaviorProps> createRepeated() => $pb.PbList<AiUpdateDailyBehaviorProps>();
  @$core.pragma('dart2js:noInline')
  static AiUpdateDailyBehaviorProps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiUpdateDailyBehaviorProps>(create);
  static AiUpdateDailyBehaviorProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get satietyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set satietyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSatietyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSatietyKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get energyKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set energyKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnergyKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnergyKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get moodKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set moodKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMoodKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearMoodKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get satietyLowerThresholdKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set satietyLowerThresholdKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSatietyLowerThresholdKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearSatietyLowerThresholdKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get satietyUpperThresholdKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set satietyUpperThresholdKey($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSatietyUpperThresholdKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearSatietyUpperThresholdKey() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get energyLowerThresholdKey => $_getSZ(7);
  @$pb.TagNumber(8)
  set energyLowerThresholdKey($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEnergyLowerThresholdKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearEnergyLowerThresholdKey() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get energyUpperThresholdKey => $_getSZ(8);
  @$pb.TagNumber(9)
  set energyUpperThresholdKey($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEnergyUpperThresholdKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearEnergyUpperThresholdKey() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get moodLowerThresholdKey => $_getSZ(9);
  @$pb.TagNumber(10)
  set moodLowerThresholdKey($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMoodLowerThresholdKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearMoodLowerThresholdKey() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get moodUpperThresholdKey => $_getSZ(10);
  @$pb.TagNumber(11)
  set moodUpperThresholdKey($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMoodUpperThresholdKey() => $_has(10);
  @$pb.TagNumber(11)
  void clearMoodUpperThresholdKey() => clearField(11);
}

class AutoImport1 extends $pb.GeneratedMessage {
  factory AutoImport1({
    $core.int? id,
    $core.bool? x1,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.int? x8,
    $core.String? x10,
    TestDemoEnum? x13,
    TestDemoFlag? x132,
    TestDemoDynamic? x14,
    TestShape? x15,
    vec2? v2,
    $fixnum.Int64? t1,
    $core.Iterable<$core.int>? k1,
    $core.Iterable<$core.int>? k2,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
    $core.Iterable<vec3>? k10,
    $core.Iterable<vec4>? k11,
    vec3? v11,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x8 != null) {
      $result.x8 = x8;
    }
    if (x10 != null) {
      $result.x10 = x10;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (x132 != null) {
      $result.x132 = x132;
    }
    if (x14 != null) {
      $result.x14 = x14;
    }
    if (x15 != null) {
      $result.x15 = x15;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k2 != null) {
      $result.k2.addAll(k2);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    if (k10 != null) {
      $result.k10.addAll(k10);
    }
    if (k11 != null) {
      $result.k11.addAll(k11);
    }
    if (v11 != null) {
      $result.v11 = v11;
    }
    return $result;
  }
  AutoImport1._() : super();
  factory AutoImport1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoImport1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AutoImport1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'x1')
    ..aInt64(3, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x8', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'x10')
    ..e<TestDemoEnum>(7, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..e<TestDemoFlag>(8, _omitFieldNames ? '' : 'x132', $pb.PbFieldType.OE, protoName: 'x13_2', defaultOrMaker: TestDemoFlag.TestDemoFlag_EMPTY_PLACEHOLDER, valueOf: TestDemoFlag.valueOf, enumValues: TestDemoFlag.values)
    ..aOM<TestDemoDynamic>(9, _omitFieldNames ? '' : 'x14', subBuilder: TestDemoDynamic.create)
    ..aOM<TestShape>(10, _omitFieldNames ? '' : 'x15', subBuilder: TestShape.create)
    ..aOM<vec2>(11, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..aInt64(12, _omitFieldNames ? '' : 't1')
    ..p<$core.int>(13, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..p<$core.int>(14, _omitFieldNames ? '' : 'k2', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(15, _omitFieldNames ? '' : 'k8', entryClassName: 'AutoImport1.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(16, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..pc<vec3>(17, _omitFieldNames ? '' : 'k10', $pb.PbFieldType.PM, subBuilder: vec3.create)
    ..pc<vec4>(18, _omitFieldNames ? '' : 'k11', $pb.PbFieldType.PM, subBuilder: vec4.create)
    ..aOM<vec3>(19, _omitFieldNames ? '' : 'v11', subBuilder: vec3.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AutoImport1 clone() => AutoImport1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AutoImport1 copyWith(void Function(AutoImport1) updates) => super.copyWith((message) => updates(message as AutoImport1)) as AutoImport1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoImport1 create() => AutoImport1._();
  AutoImport1 createEmptyInstance() => create();
  static $pb.PbList<AutoImport1> createRepeated() => $pb.PbList<AutoImport1>();
  @$core.pragma('dart2js:noInline')
  static AutoImport1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoImport1>(create);
  static AutoImport1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get x1 => $_getBF(1);
  @$pb.TagNumber(2)
  set x1($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get x5 => $_getI64(2);
  @$pb.TagNumber(3)
  set x5($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX5() => $_has(2);
  @$pb.TagNumber(3)
  void clearX5() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get x6 => $_getN(3);
  @$pb.TagNumber(4)
  set x6($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX6() => $_has(3);
  @$pb.TagNumber(4)
  void clearX6() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x8 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x8($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX8() => $_has(4);
  @$pb.TagNumber(5)
  void clearX8() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get x10 => $_getSZ(5);
  @$pb.TagNumber(6)
  set x10($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX10() => $_has(5);
  @$pb.TagNumber(6)
  void clearX10() => clearField(6);

  @$pb.TagNumber(7)
  TestDemoEnum get x13 => $_getN(6);
  @$pb.TagNumber(7)
  set x13(TestDemoEnum v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasX13() => $_has(6);
  @$pb.TagNumber(7)
  void clearX13() => clearField(7);

  @$pb.TagNumber(8)
  TestDemoFlag get x132 => $_getN(7);
  @$pb.TagNumber(8)
  set x132(TestDemoFlag v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasX132() => $_has(7);
  @$pb.TagNumber(8)
  void clearX132() => clearField(8);

  @$pb.TagNumber(9)
  TestDemoDynamic get x14 => $_getN(8);
  @$pb.TagNumber(9)
  set x14(TestDemoDynamic v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasX14() => $_has(8);
  @$pb.TagNumber(9)
  void clearX14() => clearField(9);
  @$pb.TagNumber(9)
  TestDemoDynamic ensureX14() => $_ensure(8);

  @$pb.TagNumber(10)
  TestShape get x15 => $_getN(9);
  @$pb.TagNumber(10)
  set x15(TestShape v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasX15() => $_has(9);
  @$pb.TagNumber(10)
  void clearX15() => clearField(10);
  @$pb.TagNumber(10)
  TestShape ensureX15() => $_ensure(9);

  @$pb.TagNumber(11)
  vec2 get v2 => $_getN(10);
  @$pb.TagNumber(11)
  set v2(vec2 v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasV2() => $_has(10);
  @$pb.TagNumber(11)
  void clearV2() => clearField(11);
  @$pb.TagNumber(11)
  vec2 ensureV2() => $_ensure(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get t1 => $_getI64(11);
  @$pb.TagNumber(12)
  set t1($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasT1() => $_has(11);
  @$pb.TagNumber(12)
  void clearT1() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get k1 => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get k2 => $_getList(13);

  @$pb.TagNumber(15)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(14);

  @$pb.TagNumber(16)
  $core.List<TestDemoE2> get k9 => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<vec3> get k10 => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<vec4> get k11 => $_getList(17);

  @$pb.TagNumber(19)
  vec3 get v11 => $_getN(18);
  @$pb.TagNumber(19)
  set v11(vec3 v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasV11() => $_has(18);
  @$pb.TagNumber(19)
  void clearV11() => clearField(19);
  @$pb.TagNumber(19)
  vec3 ensureV11() => $_ensure(18);
}

class CommonDateTimeRange extends $pb.GeneratedMessage {
  factory CommonDateTimeRange({
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
  }) {
    final $result = create();
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  CommonDateTimeRange._() : super();
  factory CommonDateTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonDateTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonDateTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'startTime')
    ..aInt64(2, _omitFieldNames ? '' : 'endTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonDateTimeRange clone() => CommonDateTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonDateTimeRange copyWith(void Function(CommonDateTimeRange) updates) => super.copyWith((message) => updates(message as CommonDateTimeRange)) as CommonDateTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonDateTimeRange create() => CommonDateTimeRange._();
  CommonDateTimeRange createEmptyInstance() => create();
  static $pb.PbList<CommonDateTimeRange> createRepeated() => $pb.PbList<CommonDateTimeRange>();
  @$core.pragma('dart2js:noInline')
  static CommonDateTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonDateTimeRange>(create);
  static CommonDateTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTime => $_getI64(0);
  @$pb.TagNumber(1)
  set startTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
}

class CommonFloatRange extends $pb.GeneratedMessage {
  factory CommonFloatRange({
    $core.double? min,
    $core.double? max,
  }) {
    final $result = create();
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    return $result;
  }
  CommonFloatRange._() : super();
  factory CommonFloatRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonFloatRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonFloatRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'max', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonFloatRange clone() => CommonFloatRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonFloatRange copyWith(void Function(CommonFloatRange) updates) => super.copyWith((message) => updates(message as CommonFloatRange)) as CommonFloatRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonFloatRange create() => CommonFloatRange._();
  CommonFloatRange createEmptyInstance() => create();
  static $pb.PbList<CommonFloatRange> createRepeated() => $pb.PbList<CommonFloatRange>();
  @$core.pragma('dart2js:noInline')
  static CommonFloatRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonFloatRange>(create);
  static CommonFloatRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get min => $_getN(0);
  @$pb.TagNumber(1)
  set min($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get max => $_getN(1);
  @$pb.TagNumber(2)
  set max($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);
}

class CommonGlobalConfig extends $pb.GeneratedMessage {
  factory CommonGlobalConfig({
    $core.int? x1,
    $core.int? x2,
    $core.int? x3,
    $core.int? x4,
    $core.int? x5,
    $core.int? x6,
    $core.Iterable<$core.int>? x7,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x7 != null) {
      $result.x7.addAll(x7);
    }
    return $result;
  }
  CommonGlobalConfig._() : super();
  factory CommonGlobalConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonGlobalConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonGlobalConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x5', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.O3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'x7', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonGlobalConfig clone() => CommonGlobalConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonGlobalConfig copyWith(void Function(CommonGlobalConfig) updates) => super.copyWith((message) => updates(message as CommonGlobalConfig)) as CommonGlobalConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonGlobalConfig create() => CommonGlobalConfig._();
  CommonGlobalConfig createEmptyInstance() => create();
  static $pb.PbList<CommonGlobalConfig> createRepeated() => $pb.PbList<CommonGlobalConfig>();
  @$core.pragma('dart2js:noInline')
  static CommonGlobalConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonGlobalConfig>(create);
  static CommonGlobalConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX3() => $_has(2);
  @$pb.TagNumber(3)
  void clearX3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x4 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x4($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX4() => $_has(3);
  @$pb.TagNumber(4)
  void clearX4() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x5 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x5($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX5() => $_has(4);
  @$pb.TagNumber(5)
  void clearX5() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get x6 => $_getIZ(5);
  @$pb.TagNumber(6)
  set x6($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX6() => $_has(5);
  @$pb.TagNumber(6)
  void clearX6() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get x7 => $_getList(6);
}

class CommonIntRange extends $pb.GeneratedMessage {
  factory CommonIntRange({
    $core.int? min,
    $core.int? max,
  }) {
    final $result = create();
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    return $result;
  }
  CommonIntRange._() : super();
  factory CommonIntRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonIntRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonIntRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'min', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'max', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonIntRange clone() => CommonIntRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonIntRange copyWith(void Function(CommonIntRange) updates) => super.copyWith((message) => updates(message as CommonIntRange)) as CommonIntRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonIntRange create() => CommonIntRange._();
  CommonIntRange createEmptyInstance() => create();
  static $pb.PbList<CommonIntRange> createRepeated() => $pb.PbList<CommonIntRange>();
  @$core.pragma('dart2js:noInline')
  static CommonIntRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonIntRange>(create);
  static CommonIntRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get min => $_getIZ(0);
  @$pb.TagNumber(1)
  set min($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get max => $_getIZ(1);
  @$pb.TagNumber(2)
  set max($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);
}

class CommonOneDayTimeRange extends $pb.GeneratedMessage {
  factory CommonOneDayTimeRange({
    CommonTimeOfDay? startTime,
    CommonTimeOfDay? endTime,
  }) {
    final $result = create();
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  CommonOneDayTimeRange._() : super();
  factory CommonOneDayTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonOneDayTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonOneDayTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOM<CommonTimeOfDay>(1, _omitFieldNames ? '' : 'startTime', subBuilder: CommonTimeOfDay.create)
    ..aOM<CommonTimeOfDay>(2, _omitFieldNames ? '' : 'endTime', subBuilder: CommonTimeOfDay.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonOneDayTimeRange clone() => CommonOneDayTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonOneDayTimeRange copyWith(void Function(CommonOneDayTimeRange) updates) => super.copyWith((message) => updates(message as CommonOneDayTimeRange)) as CommonOneDayTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonOneDayTimeRange create() => CommonOneDayTimeRange._();
  CommonOneDayTimeRange createEmptyInstance() => create();
  static $pb.PbList<CommonOneDayTimeRange> createRepeated() => $pb.PbList<CommonOneDayTimeRange>();
  @$core.pragma('dart2js:noInline')
  static CommonOneDayTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonOneDayTimeRange>(create);
  static CommonOneDayTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  CommonTimeOfDay get startTime => $_getN(0);
  @$pb.TagNumber(1)
  set startTime(CommonTimeOfDay v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);
  @$pb.TagNumber(1)
  CommonTimeOfDay ensureStartTime() => $_ensure(0);

  @$pb.TagNumber(2)
  CommonTimeOfDay get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime(CommonTimeOfDay v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
  @$pb.TagNumber(2)
  CommonTimeOfDay ensureEndTime() => $_ensure(1);
}

class CommonTimeOfDay extends $pb.GeneratedMessage {
  factory CommonTimeOfDay({
    $core.int? hour,
    $core.int? minute,
    $core.int? second,
  }) {
    final $result = create();
    if (hour != null) {
      $result.hour = hour;
    }
    if (minute != null) {
      $result.minute = minute;
    }
    if (second != null) {
      $result.second = second;
    }
    return $result;
  }
  CommonTimeOfDay._() : super();
  factory CommonTimeOfDay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonTimeOfDay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonTimeOfDay', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'hour', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minute', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'second', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonTimeOfDay clone() => CommonTimeOfDay()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonTimeOfDay copyWith(void Function(CommonTimeOfDay) updates) => super.copyWith((message) => updates(message as CommonTimeOfDay)) as CommonTimeOfDay;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonTimeOfDay create() => CommonTimeOfDay._();
  CommonTimeOfDay createEmptyInstance() => create();
  static $pb.PbList<CommonTimeOfDay> createRepeated() => $pb.PbList<CommonTimeOfDay>();
  @$core.pragma('dart2js:noInline')
  static CommonTimeOfDay getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonTimeOfDay>(create);
  static CommonTimeOfDay? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hour => $_getIZ(0);
  @$pb.TagNumber(1)
  set hour($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHour() => $_has(0);
  @$pb.TagNumber(1)
  void clearHour() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get minute => $_getIZ(1);
  @$pb.TagNumber(2)
  set minute($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinute() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinute() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get second => $_getIZ(2);
  @$pb.TagNumber(3)
  set second($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecond() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecond() => clearField(3);
}

class ItemItem extends $pb.GeneratedMessage {
  factory ItemItem({
    $core.int? id,
    $core.String? name,
    ItemEMajorType? majorType,
    ItemEMinorType? minorType,
    $core.int? maxPileNum,
    ItemEItemQuality? quality,
    $core.String? icon,
    $core.String? iconBackgroud,
    $core.String? iconMask,
    $core.String? desc,
    $core.int? showOrder,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (majorType != null) {
      $result.majorType = majorType;
    }
    if (minorType != null) {
      $result.minorType = minorType;
    }
    if (maxPileNum != null) {
      $result.maxPileNum = maxPileNum;
    }
    if (quality != null) {
      $result.quality = quality;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (iconBackgroud != null) {
      $result.iconBackgroud = iconBackgroud;
    }
    if (iconMask != null) {
      $result.iconMask = iconMask;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (showOrder != null) {
      $result.showOrder = showOrder;
    }
    return $result;
  }
  ItemItem._() : super();
  factory ItemItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ItemItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<ItemEMajorType>(3, _omitFieldNames ? '' : 'majorType', $pb.PbFieldType.OE, defaultOrMaker: ItemEMajorType.ItemEMajorType_EMPTY_PLACEHOLDER, valueOf: ItemEMajorType.valueOf, enumValues: ItemEMajorType.values)
    ..e<ItemEMinorType>(4, _omitFieldNames ? '' : 'minorType', $pb.PbFieldType.OE, defaultOrMaker: ItemEMinorType.ItemEMinorType_EMPTY_PLACEHOLDER, valueOf: ItemEMinorType.valueOf, enumValues: ItemEMinorType.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'maxPileNum', $pb.PbFieldType.O3)
    ..e<ItemEItemQuality>(6, _omitFieldNames ? '' : 'quality', $pb.PbFieldType.OE, defaultOrMaker: ItemEItemQuality.ItemEItemQuality_WHITE, valueOf: ItemEItemQuality.valueOf, enumValues: ItemEItemQuality.values)
    ..aOS(7, _omitFieldNames ? '' : 'icon')
    ..aOS(8, _omitFieldNames ? '' : 'iconBackgroud')
    ..aOS(9, _omitFieldNames ? '' : 'iconMask')
    ..aOS(10, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'showOrder', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemItem clone() => ItemItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemItem copyWith(void Function(ItemItem) updates) => super.copyWith((message) => updates(message as ItemItem)) as ItemItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemItem create() => ItemItem._();
  ItemItem createEmptyInstance() => create();
  static $pb.PbList<ItemItem> createRepeated() => $pb.PbList<ItemItem>();
  @$core.pragma('dart2js:noInline')
  static ItemItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemItem>(create);
  static ItemItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  ItemEMajorType get majorType => $_getN(2);
  @$pb.TagNumber(3)
  set majorType(ItemEMajorType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMajorType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMajorType() => clearField(3);

  @$pb.TagNumber(4)
  ItemEMinorType get minorType => $_getN(3);
  @$pb.TagNumber(4)
  set minorType(ItemEMinorType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinorType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinorType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxPileNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxPileNum($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxPileNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxPileNum() => clearField(5);

  @$pb.TagNumber(6)
  ItemEItemQuality get quality => $_getN(5);
  @$pb.TagNumber(6)
  set quality(ItemEItemQuality v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuality() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuality() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get icon => $_getSZ(6);
  @$pb.TagNumber(7)
  set icon($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearIcon() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get iconBackgroud => $_getSZ(7);
  @$pb.TagNumber(8)
  set iconBackgroud($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIconBackgroud() => $_has(7);
  @$pb.TagNumber(8)
  void clearIconBackgroud() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get iconMask => $_getSZ(8);
  @$pb.TagNumber(9)
  set iconMask($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIconMask() => $_has(8);
  @$pb.TagNumber(9)
  void clearIconMask() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get desc => $_getSZ(9);
  @$pb.TagNumber(10)
  set desc($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDesc() => $_has(9);
  @$pb.TagNumber(10)
  void clearDesc() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get showOrder => $_getIZ(10);
  @$pb.TagNumber(11)
  set showOrder($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShowOrder() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowOrder() => clearField(11);
}

class L10nL10NDemo extends $pb.GeneratedMessage {
  factory L10nL10NDemo({
    $core.int? id,
    $core.String? text,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  L10nL10NDemo._() : super();
  factory L10nL10NDemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory L10nL10NDemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'L10nL10NDemo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  L10nL10NDemo clone() => L10nL10NDemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  L10nL10NDemo copyWith(void Function(L10nL10NDemo) updates) => super.copyWith((message) => updates(message as L10nL10NDemo)) as L10nL10NDemo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static L10nL10NDemo create() => L10nL10NDemo._();
  L10nL10NDemo createEmptyInstance() => create();
  static $pb.PbList<L10nL10NDemo> createRepeated() => $pb.PbList<L10nL10NDemo>();
  @$core.pragma('dart2js:noInline')
  static L10nL10NDemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<L10nL10NDemo>(create);
  static L10nL10NDemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class L10nPatchDemo extends $pb.GeneratedMessage {
  factory L10nPatchDemo({
    $core.int? id,
    $core.int? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  L10nPatchDemo._() : super();
  factory L10nPatchDemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory L10nPatchDemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'L10nPatchDemo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  L10nPatchDemo clone() => L10nPatchDemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  L10nPatchDemo copyWith(void Function(L10nPatchDemo) updates) => super.copyWith((message) => updates(message as L10nPatchDemo)) as L10nPatchDemo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static L10nPatchDemo create() => L10nPatchDemo._();
  L10nPatchDemo createEmptyInstance() => create();
  static $pb.PbList<L10nPatchDemo> createRepeated() => $pb.PbList<L10nPatchDemo>();
  @$core.pragma('dart2js:noInline')
  static L10nPatchDemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<L10nPatchDemo>(create);
  static L10nPatchDemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class TagTestTag extends $pb.GeneratedMessage {
  factory TagTestTag({
    $core.int? id,
    $core.String? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  TagTestTag._() : super();
  factory TagTestTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagTestTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TagTestTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagTestTag clone() => TagTestTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagTestTag copyWith(void Function(TagTestTag) updates) => super.copyWith((message) => updates(message as TagTestTag)) as TagTestTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagTestTag create() => TagTestTag._();
  TagTestTag createEmptyInstance() => create();
  static $pb.PbList<TagTestTag> createRepeated() => $pb.PbList<TagTestTag>();
  @$core.pragma('dart2js:noInline')
  static TagTestTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagTestTag>(create);
  static TagTestTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class TestAutoImport2 extends $pb.GeneratedMessage {
  factory TestAutoImport2({
    $core.int? id,
    $core.bool? x1,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.int? x8,
    $core.String? x10,
    TestDemoEnum? x13,
    TestDemoFlag? x132,
    TestDemoDynamic? x14,
    TestShape? x15,
    vec2? v2,
    $fixnum.Int64? t1,
    $core.Iterable<$core.int>? k1,
    $core.Iterable<$core.int>? k2,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
    $core.Iterable<vec3>? k10,
    $core.Iterable<vec4>? k11,
    vec3? v11,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x8 != null) {
      $result.x8 = x8;
    }
    if (x10 != null) {
      $result.x10 = x10;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (x132 != null) {
      $result.x132 = x132;
    }
    if (x14 != null) {
      $result.x14 = x14;
    }
    if (x15 != null) {
      $result.x15 = x15;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k2 != null) {
      $result.k2.addAll(k2);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    if (k10 != null) {
      $result.k10.addAll(k10);
    }
    if (k11 != null) {
      $result.k11.addAll(k11);
    }
    if (v11 != null) {
      $result.v11 = v11;
    }
    return $result;
  }
  TestAutoImport2._() : super();
  factory TestAutoImport2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestAutoImport2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestAutoImport2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'x1')
    ..aInt64(3, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x8', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'x10')
    ..e<TestDemoEnum>(7, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..e<TestDemoFlag>(8, _omitFieldNames ? '' : 'x132', $pb.PbFieldType.OE, protoName: 'x13_2', defaultOrMaker: TestDemoFlag.TestDemoFlag_EMPTY_PLACEHOLDER, valueOf: TestDemoFlag.valueOf, enumValues: TestDemoFlag.values)
    ..aOM<TestDemoDynamic>(9, _omitFieldNames ? '' : 'x14', subBuilder: TestDemoDynamic.create)
    ..aOM<TestShape>(10, _omitFieldNames ? '' : 'x15', subBuilder: TestShape.create)
    ..aOM<vec2>(11, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..aInt64(12, _omitFieldNames ? '' : 't1')
    ..p<$core.int>(13, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..p<$core.int>(14, _omitFieldNames ? '' : 'k2', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(15, _omitFieldNames ? '' : 'k8', entryClassName: 'TestAutoImport2.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(16, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..pc<vec3>(17, _omitFieldNames ? '' : 'k10', $pb.PbFieldType.PM, subBuilder: vec3.create)
    ..pc<vec4>(18, _omitFieldNames ? '' : 'k11', $pb.PbFieldType.PM, subBuilder: vec4.create)
    ..aOM<vec3>(19, _omitFieldNames ? '' : 'v11', subBuilder: vec3.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestAutoImport2 clone() => TestAutoImport2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestAutoImport2 copyWith(void Function(TestAutoImport2) updates) => super.copyWith((message) => updates(message as TestAutoImport2)) as TestAutoImport2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestAutoImport2 create() => TestAutoImport2._();
  TestAutoImport2 createEmptyInstance() => create();
  static $pb.PbList<TestAutoImport2> createRepeated() => $pb.PbList<TestAutoImport2>();
  @$core.pragma('dart2js:noInline')
  static TestAutoImport2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestAutoImport2>(create);
  static TestAutoImport2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get x1 => $_getBF(1);
  @$pb.TagNumber(2)
  set x1($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get x5 => $_getI64(2);
  @$pb.TagNumber(3)
  set x5($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX5() => $_has(2);
  @$pb.TagNumber(3)
  void clearX5() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get x6 => $_getN(3);
  @$pb.TagNumber(4)
  set x6($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX6() => $_has(3);
  @$pb.TagNumber(4)
  void clearX6() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x8 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x8($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX8() => $_has(4);
  @$pb.TagNumber(5)
  void clearX8() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get x10 => $_getSZ(5);
  @$pb.TagNumber(6)
  set x10($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX10() => $_has(5);
  @$pb.TagNumber(6)
  void clearX10() => clearField(6);

  @$pb.TagNumber(7)
  TestDemoEnum get x13 => $_getN(6);
  @$pb.TagNumber(7)
  set x13(TestDemoEnum v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasX13() => $_has(6);
  @$pb.TagNumber(7)
  void clearX13() => clearField(7);

  @$pb.TagNumber(8)
  TestDemoFlag get x132 => $_getN(7);
  @$pb.TagNumber(8)
  set x132(TestDemoFlag v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasX132() => $_has(7);
  @$pb.TagNumber(8)
  void clearX132() => clearField(8);

  @$pb.TagNumber(9)
  TestDemoDynamic get x14 => $_getN(8);
  @$pb.TagNumber(9)
  set x14(TestDemoDynamic v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasX14() => $_has(8);
  @$pb.TagNumber(9)
  void clearX14() => clearField(9);
  @$pb.TagNumber(9)
  TestDemoDynamic ensureX14() => $_ensure(8);

  @$pb.TagNumber(10)
  TestShape get x15 => $_getN(9);
  @$pb.TagNumber(10)
  set x15(TestShape v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasX15() => $_has(9);
  @$pb.TagNumber(10)
  void clearX15() => clearField(10);
  @$pb.TagNumber(10)
  TestShape ensureX15() => $_ensure(9);

  @$pb.TagNumber(11)
  vec2 get v2 => $_getN(10);
  @$pb.TagNumber(11)
  set v2(vec2 v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasV2() => $_has(10);
  @$pb.TagNumber(11)
  void clearV2() => clearField(11);
  @$pb.TagNumber(11)
  vec2 ensureV2() => $_ensure(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get t1 => $_getI64(11);
  @$pb.TagNumber(12)
  set t1($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasT1() => $_has(11);
  @$pb.TagNumber(12)
  void clearT1() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get k1 => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get k2 => $_getList(13);

  @$pb.TagNumber(15)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(14);

  @$pb.TagNumber(16)
  $core.List<TestDemoE2> get k9 => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<vec3> get k10 => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<vec4> get k11 => $_getList(17);

  @$pb.TagNumber(19)
  vec3 get v11 => $_getN(18);
  @$pb.TagNumber(19)
  set v11(vec3 v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasV11() => $_has(18);
  @$pb.TagNumber(19)
  void clearV11() => clearField(19);
  @$pb.TagNumber(19)
  vec3 ensureV11() => $_ensure(18);
}

class TestCompactString extends $pb.GeneratedMessage {
  factory TestCompactString({
    $core.int? id,
    $core.String? s2,
    $core.String? s3,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    if (s3 != null) {
      $result.s3 = s3;
    }
    return $result;
  }
  TestCompactString._() : super();
  factory TestCompactString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestCompactString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestCompactString', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 's2')
    ..aOS(3, _omitFieldNames ? '' : 's3')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestCompactString clone() => TestCompactString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestCompactString copyWith(void Function(TestCompactString) updates) => super.copyWith((message) => updates(message as TestCompactString)) as TestCompactString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestCompactString create() => TestCompactString._();
  TestCompactString createEmptyInstance() => create();
  static $pb.PbList<TestCompactString> createRepeated() => $pb.PbList<TestCompactString>();
  @$core.pragma('dart2js:noInline')
  static TestCompactString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestCompactString>(create);
  static TestCompactString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get s2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set s2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasS2() => $_has(1);
  @$pb.TagNumber(2)
  void clearS2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get s3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set s3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasS3() => $_has(2);
  @$pb.TagNumber(3)
  void clearS3() => clearField(3);
}

class TestCompositeJsonTable1 extends $pb.GeneratedMessage {
  factory TestCompositeJsonTable1({
    $core.int? id,
    $core.String? x,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x != null) {
      $result.x = x;
    }
    return $result;
  }
  TestCompositeJsonTable1._() : super();
  factory TestCompositeJsonTable1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestCompositeJsonTable1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestCompositeJsonTable1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'x')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable1 clone() => TestCompositeJsonTable1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable1 copyWith(void Function(TestCompositeJsonTable1) updates) => super.copyWith((message) => updates(message as TestCompositeJsonTable1)) as TestCompositeJsonTable1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable1 create() => TestCompositeJsonTable1._();
  TestCompositeJsonTable1 createEmptyInstance() => create();
  static $pb.PbList<TestCompositeJsonTable1> createRepeated() => $pb.PbList<TestCompositeJsonTable1>();
  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestCompositeJsonTable1>(create);
  static TestCompositeJsonTable1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get x => $_getSZ(1);
  @$pb.TagNumber(2)
  set x($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);
}

class TestCompositeJsonTable2 extends $pb.GeneratedMessage {
  factory TestCompositeJsonTable2({
    $core.int? id,
    $core.int? y,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  TestCompositeJsonTable2._() : super();
  factory TestCompositeJsonTable2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestCompositeJsonTable2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestCompositeJsonTable2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable2 clone() => TestCompositeJsonTable2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable2 copyWith(void Function(TestCompositeJsonTable2) updates) => super.copyWith((message) => updates(message as TestCompositeJsonTable2)) as TestCompositeJsonTable2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable2 create() => TestCompositeJsonTable2._();
  TestCompositeJsonTable2 createEmptyInstance() => create();
  static $pb.PbList<TestCompositeJsonTable2> createRepeated() => $pb.PbList<TestCompositeJsonTable2>();
  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestCompositeJsonTable2>(create);
  static TestCompositeJsonTable2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class TestCompositeJsonTable3 extends $pb.GeneratedMessage {
  factory TestCompositeJsonTable3({
    $core.int? a,
    $core.int? b,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    return $result;
  }
  TestCompositeJsonTable3._() : super();
  factory TestCompositeJsonTable3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestCompositeJsonTable3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestCompositeJsonTable3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'a', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable3 clone() => TestCompositeJsonTable3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestCompositeJsonTable3 copyWith(void Function(TestCompositeJsonTable3) updates) => super.copyWith((message) => updates(message as TestCompositeJsonTable3)) as TestCompositeJsonTable3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable3 create() => TestCompositeJsonTable3._();
  TestCompositeJsonTable3 createEmptyInstance() => create();
  static $pb.PbList<TestCompositeJsonTable3> createRepeated() => $pb.PbList<TestCompositeJsonTable3>();
  @$core.pragma('dart2js:noInline')
  static TestCompositeJsonTable3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestCompositeJsonTable3>(create);
  static TestCompositeJsonTable3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);
}

class TestDateTimeRange extends $pb.GeneratedMessage {
  factory TestDateTimeRange({
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
  }) {
    final $result = create();
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  TestDateTimeRange._() : super();
  factory TestDateTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDateTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDateTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'startTime')
    ..aInt64(2, _omitFieldNames ? '' : 'endTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDateTimeRange clone() => TestDateTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDateTimeRange copyWith(void Function(TestDateTimeRange) updates) => super.copyWith((message) => updates(message as TestDateTimeRange)) as TestDateTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDateTimeRange create() => TestDateTimeRange._();
  TestDateTimeRange createEmptyInstance() => create();
  static $pb.PbList<TestDateTimeRange> createRepeated() => $pb.PbList<TestDateTimeRange>();
  @$core.pragma('dart2js:noInline')
  static TestDateTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDateTimeRange>(create);
  static TestDateTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTime => $_getI64(0);
  @$pb.TagNumber(1)
  set startTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
}

class TestDefineFromExcel2 extends $pb.GeneratedMessage {
  factory TestDefineFromExcel2({
    $core.int? id,
    $core.bool? x1,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.int? x8,
    $core.String? x10,
    TestDemoEnum? x13,
    TestDemoFlag? x132,
    TestDemoDynamic? x14,
    TestShape? x15,
    vec2? v2,
    $fixnum.Int64? t1,
    $core.Iterable<$core.int>? k1,
    $core.Iterable<$core.int>? k2,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
    $core.Iterable<vec3>? k10,
    $core.Iterable<vec4>? k11,
    vec3? v11,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x8 != null) {
      $result.x8 = x8;
    }
    if (x10 != null) {
      $result.x10 = x10;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (x132 != null) {
      $result.x132 = x132;
    }
    if (x14 != null) {
      $result.x14 = x14;
    }
    if (x15 != null) {
      $result.x15 = x15;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k2 != null) {
      $result.k2.addAll(k2);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    if (k10 != null) {
      $result.k10.addAll(k10);
    }
    if (k11 != null) {
      $result.k11.addAll(k11);
    }
    if (v11 != null) {
      $result.v11 = v11;
    }
    return $result;
  }
  TestDefineFromExcel2._() : super();
  factory TestDefineFromExcel2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDefineFromExcel2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDefineFromExcel2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'x1')
    ..aInt64(3, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x8', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'x10')
    ..e<TestDemoEnum>(7, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..e<TestDemoFlag>(8, _omitFieldNames ? '' : 'x132', $pb.PbFieldType.OE, protoName: 'x13_2', defaultOrMaker: TestDemoFlag.TestDemoFlag_EMPTY_PLACEHOLDER, valueOf: TestDemoFlag.valueOf, enumValues: TestDemoFlag.values)
    ..aOM<TestDemoDynamic>(9, _omitFieldNames ? '' : 'x14', subBuilder: TestDemoDynamic.create)
    ..aOM<TestShape>(10, _omitFieldNames ? '' : 'x15', subBuilder: TestShape.create)
    ..aOM<vec2>(11, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..aInt64(12, _omitFieldNames ? '' : 't1')
    ..p<$core.int>(13, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..p<$core.int>(14, _omitFieldNames ? '' : 'k2', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(15, _omitFieldNames ? '' : 'k8', entryClassName: 'TestDefineFromExcel2.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(16, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..pc<vec3>(17, _omitFieldNames ? '' : 'k10', $pb.PbFieldType.PM, subBuilder: vec3.create)
    ..pc<vec4>(18, _omitFieldNames ? '' : 'k11', $pb.PbFieldType.PM, subBuilder: vec4.create)
    ..aOM<vec3>(19, _omitFieldNames ? '' : 'v11', subBuilder: vec3.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDefineFromExcel2 clone() => TestDefineFromExcel2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDefineFromExcel2 copyWith(void Function(TestDefineFromExcel2) updates) => super.copyWith((message) => updates(message as TestDefineFromExcel2)) as TestDefineFromExcel2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDefineFromExcel2 create() => TestDefineFromExcel2._();
  TestDefineFromExcel2 createEmptyInstance() => create();
  static $pb.PbList<TestDefineFromExcel2> createRepeated() => $pb.PbList<TestDefineFromExcel2>();
  @$core.pragma('dart2js:noInline')
  static TestDefineFromExcel2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDefineFromExcel2>(create);
  static TestDefineFromExcel2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get x1 => $_getBF(1);
  @$pb.TagNumber(2)
  set x1($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get x5 => $_getI64(2);
  @$pb.TagNumber(3)
  set x5($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX5() => $_has(2);
  @$pb.TagNumber(3)
  void clearX5() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get x6 => $_getN(3);
  @$pb.TagNumber(4)
  set x6($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX6() => $_has(3);
  @$pb.TagNumber(4)
  void clearX6() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x8 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x8($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX8() => $_has(4);
  @$pb.TagNumber(5)
  void clearX8() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get x10 => $_getSZ(5);
  @$pb.TagNumber(6)
  set x10($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX10() => $_has(5);
  @$pb.TagNumber(6)
  void clearX10() => clearField(6);

  @$pb.TagNumber(7)
  TestDemoEnum get x13 => $_getN(6);
  @$pb.TagNumber(7)
  set x13(TestDemoEnum v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasX13() => $_has(6);
  @$pb.TagNumber(7)
  void clearX13() => clearField(7);

  @$pb.TagNumber(8)
  TestDemoFlag get x132 => $_getN(7);
  @$pb.TagNumber(8)
  set x132(TestDemoFlag v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasX132() => $_has(7);
  @$pb.TagNumber(8)
  void clearX132() => clearField(8);

  @$pb.TagNumber(9)
  TestDemoDynamic get x14 => $_getN(8);
  @$pb.TagNumber(9)
  set x14(TestDemoDynamic v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasX14() => $_has(8);
  @$pb.TagNumber(9)
  void clearX14() => clearField(9);
  @$pb.TagNumber(9)
  TestDemoDynamic ensureX14() => $_ensure(8);

  @$pb.TagNumber(10)
  TestShape get x15 => $_getN(9);
  @$pb.TagNumber(10)
  set x15(TestShape v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasX15() => $_has(9);
  @$pb.TagNumber(10)
  void clearX15() => clearField(10);
  @$pb.TagNumber(10)
  TestShape ensureX15() => $_ensure(9);

  @$pb.TagNumber(11)
  vec2 get v2 => $_getN(10);
  @$pb.TagNumber(11)
  set v2(vec2 v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasV2() => $_has(10);
  @$pb.TagNumber(11)
  void clearV2() => clearField(11);
  @$pb.TagNumber(11)
  vec2 ensureV2() => $_ensure(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get t1 => $_getI64(11);
  @$pb.TagNumber(12)
  set t1($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasT1() => $_has(11);
  @$pb.TagNumber(12)
  void clearT1() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get k1 => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get k2 => $_getList(13);

  @$pb.TagNumber(15)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(14);

  @$pb.TagNumber(16)
  $core.List<TestDemoE2> get k9 => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<vec3> get k10 => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<vec4> get k11 => $_getList(17);

  @$pb.TagNumber(19)
  vec3 get v11 => $_getN(18);
  @$pb.TagNumber(19)
  set v11(vec3 v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasV11() => $_has(18);
  @$pb.TagNumber(19)
  void clearV11() => clearField(19);
  @$pb.TagNumber(19)
  vec3 ensureV11() => $_ensure(18);
}

enum TestDemoDynamic_Value {
  demoD2, 
  demoE1, 
  roleInfo, 
  demoD5, 
  notSet
}

class TestDemoDynamic extends $pb.GeneratedMessage {
  factory TestDemoDynamic({
    TestDemoD2? demoD2,
    TestDemoE1? demoE1,
    TestLoginRoleInfo? roleInfo,
    TestDemoD5? demoD5,
  }) {
    final $result = create();
    if (demoD2 != null) {
      $result.demoD2 = demoD2;
    }
    if (demoE1 != null) {
      $result.demoE1 = demoE1;
    }
    if (roleInfo != null) {
      $result.roleInfo = roleInfo;
    }
    if (demoD5 != null) {
      $result.demoD5 = demoD5;
    }
    return $result;
  }
  TestDemoDynamic._() : super();
  factory TestDemoDynamic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoDynamic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TestDemoDynamic_Value> _TestDemoDynamic_ValueByTag = {
    1 : TestDemoDynamic_Value.demoD2,
    2 : TestDemoDynamic_Value.demoE1,
    3 : TestDemoDynamic_Value.roleInfo,
    4 : TestDemoDynamic_Value.demoD5,
    0 : TestDemoDynamic_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoDynamic', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<TestDemoD2>(1, _omitFieldNames ? '' : 'DemoD2', protoName: 'DemoD2', subBuilder: TestDemoD2.create)
    ..aOM<TestDemoE1>(2, _omitFieldNames ? '' : 'DemoE1', protoName: 'DemoE1', subBuilder: TestDemoE1.create)
    ..aOM<TestLoginRoleInfo>(3, _omitFieldNames ? '' : 'RoleInfo', protoName: 'RoleInfo', subBuilder: TestLoginRoleInfo.create)
    ..aOM<TestDemoD5>(4, _omitFieldNames ? '' : 'DemoD5', protoName: 'DemoD5', subBuilder: TestDemoD5.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoDynamic clone() => TestDemoDynamic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoDynamic copyWith(void Function(TestDemoDynamic) updates) => super.copyWith((message) => updates(message as TestDemoDynamic)) as TestDemoDynamic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoDynamic create() => TestDemoDynamic._();
  TestDemoDynamic createEmptyInstance() => create();
  static $pb.PbList<TestDemoDynamic> createRepeated() => $pb.PbList<TestDemoDynamic>();
  @$core.pragma('dart2js:noInline')
  static TestDemoDynamic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoDynamic>(create);
  static TestDemoDynamic? _defaultInstance;

  TestDemoDynamic_Value whichValue() => _TestDemoDynamic_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TestDemoD2 get demoD2 => $_getN(0);
  @$pb.TagNumber(1)
  set demoD2(TestDemoD2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDemoD2() => $_has(0);
  @$pb.TagNumber(1)
  void clearDemoD2() => clearField(1);
  @$pb.TagNumber(1)
  TestDemoD2 ensureDemoD2() => $_ensure(0);

  @$pb.TagNumber(2)
  TestDemoE1 get demoE1 => $_getN(1);
  @$pb.TagNumber(2)
  set demoE1(TestDemoE1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDemoE1() => $_has(1);
  @$pb.TagNumber(2)
  void clearDemoE1() => clearField(2);
  @$pb.TagNumber(2)
  TestDemoE1 ensureDemoE1() => $_ensure(1);

  @$pb.TagNumber(3)
  TestLoginRoleInfo get roleInfo => $_getN(2);
  @$pb.TagNumber(3)
  set roleInfo(TestLoginRoleInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoleInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleInfo() => clearField(3);
  @$pb.TagNumber(3)
  TestLoginRoleInfo ensureRoleInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  TestDemoD5 get demoD5 => $_getN(3);
  @$pb.TagNumber(4)
  set demoD5(TestDemoD5 v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDemoD5() => $_has(3);
  @$pb.TagNumber(4)
  void clearDemoD5() => clearField(4);
  @$pb.TagNumber(4)
  TestDemoD5 ensureDemoD5() => $_ensure(3);
}

class TestDemoD2 extends $pb.GeneratedMessage {
  factory TestDemoD2({
    $core.int? x1,
    $core.int? x2,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    return $result;
  }
  TestDemoD2._() : super();
  factory TestDemoD2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoD2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoD2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoD2 clone() => TestDemoD2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoD2 copyWith(void Function(TestDemoD2) updates) => super.copyWith((message) => updates(message as TestDemoD2)) as TestDemoD2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoD2 create() => TestDemoD2._();
  TestDemoD2 createEmptyInstance() => create();
  static $pb.PbList<TestDemoD2> createRepeated() => $pb.PbList<TestDemoD2>();
  @$core.pragma('dart2js:noInline')
  static TestDemoD2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoD2>(create);
  static TestDemoD2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);
}

enum TestDemoD3_Value {
  demoE1, 
  roleInfo, 
  notSet
}

class TestDemoD3 extends $pb.GeneratedMessage {
  factory TestDemoD3({
    TestDemoE1? demoE1,
    TestLoginRoleInfo? roleInfo,
  }) {
    final $result = create();
    if (demoE1 != null) {
      $result.demoE1 = demoE1;
    }
    if (roleInfo != null) {
      $result.roleInfo = roleInfo;
    }
    return $result;
  }
  TestDemoD3._() : super();
  factory TestDemoD3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoD3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TestDemoD3_Value> _TestDemoD3_ValueByTag = {
    2 : TestDemoD3_Value.demoE1,
    3 : TestDemoD3_Value.roleInfo,
    0 : TestDemoD3_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoD3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<TestDemoE1>(2, _omitFieldNames ? '' : 'DemoE1', protoName: 'DemoE1', subBuilder: TestDemoE1.create)
    ..aOM<TestLoginRoleInfo>(3, _omitFieldNames ? '' : 'RoleInfo', protoName: 'RoleInfo', subBuilder: TestLoginRoleInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoD3 clone() => TestDemoD3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoD3 copyWith(void Function(TestDemoD3) updates) => super.copyWith((message) => updates(message as TestDemoD3)) as TestDemoD3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoD3 create() => TestDemoD3._();
  TestDemoD3 createEmptyInstance() => create();
  static $pb.PbList<TestDemoD3> createRepeated() => $pb.PbList<TestDemoD3>();
  @$core.pragma('dart2js:noInline')
  static TestDemoD3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoD3>(create);
  static TestDemoD3? _defaultInstance;

  TestDemoD3_Value whichValue() => _TestDemoD3_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  TestDemoE1 get demoE1 => $_getN(0);
  @$pb.TagNumber(2)
  set demoE1(TestDemoE1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDemoE1() => $_has(0);
  @$pb.TagNumber(2)
  void clearDemoE1() => clearField(2);
  @$pb.TagNumber(2)
  TestDemoE1 ensureDemoE1() => $_ensure(0);

  @$pb.TagNumber(3)
  TestLoginRoleInfo get roleInfo => $_getN(1);
  @$pb.TagNumber(3)
  set roleInfo(TestLoginRoleInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoleInfo() => $_has(1);
  @$pb.TagNumber(3)
  void clearRoleInfo() => clearField(3);
  @$pb.TagNumber(3)
  TestLoginRoleInfo ensureRoleInfo() => $_ensure(1);
}

class TestDemoE1 extends $pb.GeneratedMessage {
  factory TestDemoE1({
    $core.int? x1,
    $core.int? x3,
    $core.int? x4,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    return $result;
  }
  TestDemoE1._() : super();
  factory TestDemoE1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoE1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoE1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoE1 clone() => TestDemoE1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoE1 copyWith(void Function(TestDemoE1) updates) => super.copyWith((message) => updates(message as TestDemoE1)) as TestDemoE1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoE1 create() => TestDemoE1._();
  TestDemoE1 createEmptyInstance() => create();
  static $pb.PbList<TestDemoE1> createRepeated() => $pb.PbList<TestDemoE1>();
  @$core.pragma('dart2js:noInline')
  static TestDemoE1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoE1>(create);
  static TestDemoE1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x3 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x3($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX3() => $_has(1);
  @$pb.TagNumber(2)
  void clearX3() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x4 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x4($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX4() => $_has(2);
  @$pb.TagNumber(3)
  void clearX4() => clearField(3);
}

class TestLoginRoleInfo extends $pb.GeneratedMessage {
  factory TestLoginRoleInfo({
    $core.int? x1,
    $core.int? x3,
    $fixnum.Int64? roleId,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (roleId != null) {
      $result.roleId = roleId;
    }
    return $result;
  }
  TestLoginRoleInfo._() : super();
  factory TestLoginRoleInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestLoginRoleInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestLoginRoleInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'roleId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestLoginRoleInfo clone() => TestLoginRoleInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestLoginRoleInfo copyWith(void Function(TestLoginRoleInfo) updates) => super.copyWith((message) => updates(message as TestLoginRoleInfo)) as TestLoginRoleInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestLoginRoleInfo create() => TestLoginRoleInfo._();
  TestLoginRoleInfo createEmptyInstance() => create();
  static $pb.PbList<TestLoginRoleInfo> createRepeated() => $pb.PbList<TestLoginRoleInfo>();
  @$core.pragma('dart2js:noInline')
  static TestLoginRoleInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestLoginRoleInfo>(create);
  static TestLoginRoleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x3 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x3($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX3() => $_has(1);
  @$pb.TagNumber(2)
  void clearX3() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roleId => $_getI64(2);
  @$pb.TagNumber(3)
  set roleId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => clearField(3);
}

class TestDemoD5 extends $pb.GeneratedMessage {
  factory TestDemoD5({
    $core.int? x1,
    TestDateTimeRange? time,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  TestDemoD5._() : super();
  factory TestDemoD5.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoD5.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoD5', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..aOM<TestDateTimeRange>(2, _omitFieldNames ? '' : 'time', subBuilder: TestDateTimeRange.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoD5 clone() => TestDemoD5()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoD5 copyWith(void Function(TestDemoD5) updates) => super.copyWith((message) => updates(message as TestDemoD5)) as TestDemoD5;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoD5 create() => TestDemoD5._();
  TestDemoD5 createEmptyInstance() => create();
  static $pb.PbList<TestDemoD5> createRepeated() => $pb.PbList<TestDemoD5>();
  @$core.pragma('dart2js:noInline')
  static TestDemoD5 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoD5>(create);
  static TestDemoD5? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  TestDateTimeRange get time => $_getN(1);
  @$pb.TagNumber(2)
  set time(TestDateTimeRange v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
  @$pb.TagNumber(2)
  TestDateTimeRange ensureTime() => $_ensure(1);
}

class TestDemoE2 extends $pb.GeneratedMessage {
  factory TestDemoE2({
    $core.int? y1,
    $core.bool? y2,
  }) {
    final $result = create();
    if (y1 != null) {
      $result.y1 = y1;
    }
    if (y2 != null) {
      $result.y2 = y2;
    }
    return $result;
  }
  TestDemoE2._() : super();
  factory TestDemoE2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoE2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoE2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'y1', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'y2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoE2 clone() => TestDemoE2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoE2 copyWith(void Function(TestDemoE2) updates) => super.copyWith((message) => updates(message as TestDemoE2)) as TestDemoE2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoE2 create() => TestDemoE2._();
  TestDemoE2 createEmptyInstance() => create();
  static $pb.PbList<TestDemoE2> createRepeated() => $pb.PbList<TestDemoE2>();
  @$core.pragma('dart2js:noInline')
  static TestDemoE2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoE2>(create);
  static TestDemoE2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get y1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set y1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasY1() => $_has(0);
  @$pb.TagNumber(1)
  void clearY1() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get y2 => $_getBF(1);
  @$pb.TagNumber(2)
  set y2($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY2() => $_has(1);
  @$pb.TagNumber(2)
  void clearY2() => clearField(2);
}

class TestDemoExplicitType extends $pb.GeneratedMessage {
  factory TestDemoExplicitType({
    $core.int? x1,
    $core.int? x2,
    $core.int? x3,
    $fixnum.Int64? x4,
    $core.double? x5,
    $core.double? x6,
    $fixnum.Int64? x7,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x7 != null) {
      $result.x7 = x7;
    }
    return $result;
  }
  TestDemoExplicitType._() : super();
  factory TestDemoExplicitType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoExplicitType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoExplicitType', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'x4')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'x5', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OD)
    ..aInt64(7, _omitFieldNames ? '' : 'x7')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoExplicitType clone() => TestDemoExplicitType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoExplicitType copyWith(void Function(TestDemoExplicitType) updates) => super.copyWith((message) => updates(message as TestDemoExplicitType)) as TestDemoExplicitType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoExplicitType create() => TestDemoExplicitType._();
  TestDemoExplicitType createEmptyInstance() => create();
  static $pb.PbList<TestDemoExplicitType> createRepeated() => $pb.PbList<TestDemoExplicitType>();
  @$core.pragma('dart2js:noInline')
  static TestDemoExplicitType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoExplicitType>(create);
  static TestDemoExplicitType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX3() => $_has(2);
  @$pb.TagNumber(3)
  void clearX3() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get x4 => $_getI64(3);
  @$pb.TagNumber(4)
  set x4($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX4() => $_has(3);
  @$pb.TagNumber(4)
  void clearX4() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get x5 => $_getN(4);
  @$pb.TagNumber(5)
  set x5($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX5() => $_has(4);
  @$pb.TagNumber(5)
  void clearX5() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get x6 => $_getN(5);
  @$pb.TagNumber(6)
  set x6($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX6() => $_has(5);
  @$pb.TagNumber(6)
  void clearX6() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get x7 => $_getI64(6);
  @$pb.TagNumber(7)
  set x7($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasX7() => $_has(6);
  @$pb.TagNumber(7)
  void clearX7() => clearField(7);
}

class TestDemoGroup extends $pb.GeneratedMessage {
  factory TestDemoGroup({
    $core.int? id,
    $core.int? x1,
    $core.int? x2,
    $core.int? x3,
    $core.int? x4,
    TestInnerGroup? x5,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    return $result;
  }
  TestDemoGroup._() : super();
  factory TestDemoGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..aOM<TestInnerGroup>(6, _omitFieldNames ? '' : 'x5', subBuilder: TestInnerGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoGroup clone() => TestDemoGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoGroup copyWith(void Function(TestDemoGroup) updates) => super.copyWith((message) => updates(message as TestDemoGroup)) as TestDemoGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoGroup create() => TestDemoGroup._();
  TestDemoGroup createEmptyInstance() => create();
  static $pb.PbList<TestDemoGroup> createRepeated() => $pb.PbList<TestDemoGroup>();
  @$core.pragma('dart2js:noInline')
  static TestDemoGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoGroup>(create);
  static TestDemoGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x2($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX2() => $_has(2);
  @$pb.TagNumber(3)
  void clearX2() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x3 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x3($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX3() => $_has(3);
  @$pb.TagNumber(4)
  void clearX3() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x4 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x4($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX4() => $_has(4);
  @$pb.TagNumber(5)
  void clearX4() => clearField(5);

  @$pb.TagNumber(6)
  TestInnerGroup get x5 => $_getN(5);
  @$pb.TagNumber(6)
  set x5(TestInnerGroup v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasX5() => $_has(5);
  @$pb.TagNumber(6)
  void clearX5() => clearField(6);
  @$pb.TagNumber(6)
  TestInnerGroup ensureX5() => $_ensure(5);
}

class TestDemoPrimitiveTypesTable extends $pb.GeneratedMessage {
  factory TestDemoPrimitiveTypesTable({
    $core.bool? x1,
    $core.int? x2,
    $core.int? x3,
    $core.int? x4,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.double? x7,
    $core.String? s1,
    $core.String? s2,
    vec2? v2,
    vec3? v3,
    vec4? v4,
    $fixnum.Int64? t1,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x7 != null) {
      $result.x7 = x7;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    if (v3 != null) {
      $result.v3 = v3;
    }
    if (v4 != null) {
      $result.v4 = v4;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    return $result;
  }
  TestDemoPrimitiveTypesTable._() : super();
  factory TestDemoPrimitiveTypesTable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoPrimitiveTypesTable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoPrimitiveTypesTable', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'x1')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'x7', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 's1')
    ..aOS(9, _omitFieldNames ? '' : 's2')
    ..aOM<vec2>(10, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..aOM<vec3>(11, _omitFieldNames ? '' : 'v3', subBuilder: vec3.create)
    ..aOM<vec4>(12, _omitFieldNames ? '' : 'v4', subBuilder: vec4.create)
    ..aInt64(13, _omitFieldNames ? '' : 't1')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoPrimitiveTypesTable clone() => TestDemoPrimitiveTypesTable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoPrimitiveTypesTable copyWith(void Function(TestDemoPrimitiveTypesTable) updates) => super.copyWith((message) => updates(message as TestDemoPrimitiveTypesTable)) as TestDemoPrimitiveTypesTable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoPrimitiveTypesTable create() => TestDemoPrimitiveTypesTable._();
  TestDemoPrimitiveTypesTable createEmptyInstance() => create();
  static $pb.PbList<TestDemoPrimitiveTypesTable> createRepeated() => $pb.PbList<TestDemoPrimitiveTypesTable>();
  @$core.pragma('dart2js:noInline')
  static TestDemoPrimitiveTypesTable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoPrimitiveTypesTable>(create);
  static TestDemoPrimitiveTypesTable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get x1 => $_getBF(0);
  @$pb.TagNumber(1)
  set x1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX3() => $_has(2);
  @$pb.TagNumber(3)
  void clearX3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x4 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x4($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX4() => $_has(3);
  @$pb.TagNumber(4)
  void clearX4() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get x5 => $_getI64(4);
  @$pb.TagNumber(5)
  set x5($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX5() => $_has(4);
  @$pb.TagNumber(5)
  void clearX5() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get x6 => $_getN(5);
  @$pb.TagNumber(6)
  set x6($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX6() => $_has(5);
  @$pb.TagNumber(6)
  void clearX6() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get x7 => $_getN(6);
  @$pb.TagNumber(7)
  set x7($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasX7() => $_has(6);
  @$pb.TagNumber(7)
  void clearX7() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get s1 => $_getSZ(7);
  @$pb.TagNumber(8)
  set s1($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasS1() => $_has(7);
  @$pb.TagNumber(8)
  void clearS1() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get s2 => $_getSZ(8);
  @$pb.TagNumber(9)
  set s2($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasS2() => $_has(8);
  @$pb.TagNumber(9)
  void clearS2() => clearField(9);

  @$pb.TagNumber(10)
  vec2 get v2 => $_getN(9);
  @$pb.TagNumber(10)
  set v2(vec2 v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasV2() => $_has(9);
  @$pb.TagNumber(10)
  void clearV2() => clearField(10);
  @$pb.TagNumber(10)
  vec2 ensureV2() => $_ensure(9);

  @$pb.TagNumber(11)
  vec3 get v3 => $_getN(10);
  @$pb.TagNumber(11)
  set v3(vec3 v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasV3() => $_has(10);
  @$pb.TagNumber(11)
  void clearV3() => clearField(11);
  @$pb.TagNumber(11)
  vec3 ensureV3() => $_ensure(10);

  @$pb.TagNumber(12)
  vec4 get v4 => $_getN(11);
  @$pb.TagNumber(12)
  set v4(vec4 v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasV4() => $_has(11);
  @$pb.TagNumber(12)
  void clearV4() => clearField(12);
  @$pb.TagNumber(12)
  vec4 ensureV4() => $_ensure(11);

  @$pb.TagNumber(13)
  $fixnum.Int64 get t1 => $_getI64(12);
  @$pb.TagNumber(13)
  set t1($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasT1() => $_has(12);
  @$pb.TagNumber(13)
  void clearT1() => clearField(13);
}

class TestDemoSingletonType extends $pb.GeneratedMessage {
  factory TestDemoSingletonType({
    $core.int? id,
    $core.String? name,
    TestDemoDynamic? date,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  TestDemoSingletonType._() : super();
  factory TestDemoSingletonType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoSingletonType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoSingletonType', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<TestDemoDynamic>(3, _omitFieldNames ? '' : 'date', subBuilder: TestDemoDynamic.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoSingletonType clone() => TestDemoSingletonType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoSingletonType copyWith(void Function(TestDemoSingletonType) updates) => super.copyWith((message) => updates(message as TestDemoSingletonType)) as TestDemoSingletonType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoSingletonType create() => TestDemoSingletonType._();
  TestDemoSingletonType createEmptyInstance() => create();
  static $pb.PbList<TestDemoSingletonType> createRepeated() => $pb.PbList<TestDemoSingletonType>();
  @$core.pragma('dart2js:noInline')
  static TestDemoSingletonType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoSingletonType>(create);
  static TestDemoSingletonType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  TestDemoDynamic get date => $_getN(2);
  @$pb.TagNumber(3)
  set date(TestDemoDynamic v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  TestDemoDynamic ensureDate() => $_ensure(2);
}

class TestDemoType1 extends $pb.GeneratedMessage {
  factory TestDemoType1({
    $core.int? x1,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    return $result;
  }
  TestDemoType1._() : super();
  factory TestDemoType1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoType1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoType1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoType1 clone() => TestDemoType1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoType1 copyWith(void Function(TestDemoType1) updates) => super.copyWith((message) => updates(message as TestDemoType1)) as TestDemoType1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoType1 create() => TestDemoType1._();
  TestDemoType1 createEmptyInstance() => create();
  static $pb.PbList<TestDemoType1> createRepeated() => $pb.PbList<TestDemoType1>();
  @$core.pragma('dart2js:noInline')
  static TestDemoType1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoType1>(create);
  static TestDemoType1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);
}

class TestDemoType2 extends $pb.GeneratedMessage {
  factory TestDemoType2({
    $core.int? x4,
    $core.bool? x1,
    $core.int? x2,
    $core.int? x3,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.double? x7,
    $core.int? x80,
    $core.int? x8,
    $fixnum.Int64? x9,
    $core.String? x10,
    TestDemoType1? x12,
    TestDemoEnum? x13,
    TestDemoDynamic? x14,
    $core.String? s1,
    $fixnum.Int64? t1,
    $core.Iterable<$core.int>? k1,
    $core.Iterable<$core.int>? k2,
    $core.Iterable<$core.int>? k5,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
    $core.Iterable<TestDemoDynamic>? k15,
  }) {
    final $result = create();
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x7 != null) {
      $result.x7 = x7;
    }
    if (x80 != null) {
      $result.x80 = x80;
    }
    if (x8 != null) {
      $result.x8 = x8;
    }
    if (x9 != null) {
      $result.x9 = x9;
    }
    if (x10 != null) {
      $result.x10 = x10;
    }
    if (x12 != null) {
      $result.x12 = x12;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (x14 != null) {
      $result.x14 = x14;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k2 != null) {
      $result.k2.addAll(k2);
    }
    if (k5 != null) {
      $result.k5.addAll(k5);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    if (k15 != null) {
      $result.k15.addAll(k15);
    }
    return $result;
  }
  TestDemoType2._() : super();
  factory TestDemoType2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDemoType2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDemoType2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'x1')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'x7', $pb.PbFieldType.OD)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'x80', $pb.PbFieldType.O3, protoName: 'x8_0')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'x8', $pb.PbFieldType.O3)
    ..aInt64(10, _omitFieldNames ? '' : 'x9')
    ..aOS(11, _omitFieldNames ? '' : 'x10')
    ..aOM<TestDemoType1>(12, _omitFieldNames ? '' : 'x12', subBuilder: TestDemoType1.create)
    ..e<TestDemoEnum>(13, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..aOM<TestDemoDynamic>(14, _omitFieldNames ? '' : 'x14', subBuilder: TestDemoDynamic.create)
    ..aOS(15, _omitFieldNames ? '' : 's1')
    ..aInt64(16, _omitFieldNames ? '' : 't1')
    ..p<$core.int>(17, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..p<$core.int>(18, _omitFieldNames ? '' : 'k2', $pb.PbFieldType.K3)
    ..p<$core.int>(19, _omitFieldNames ? '' : 'k5', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(20, _omitFieldNames ? '' : 'k8', entryClassName: 'TestDemoType2.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(21, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..pc<TestDemoDynamic>(22, _omitFieldNames ? '' : 'k15', $pb.PbFieldType.PM, subBuilder: TestDemoDynamic.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDemoType2 clone() => TestDemoType2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDemoType2 copyWith(void Function(TestDemoType2) updates) => super.copyWith((message) => updates(message as TestDemoType2)) as TestDemoType2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDemoType2 create() => TestDemoType2._();
  TestDemoType2 createEmptyInstance() => create();
  static $pb.PbList<TestDemoType2> createRepeated() => $pb.PbList<TestDemoType2>();
  @$core.pragma('dart2js:noInline')
  static TestDemoType2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDemoType2>(create);
  static TestDemoType2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x4 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x4($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX4() => $_has(0);
  @$pb.TagNumber(1)
  void clearX4() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get x1 => $_getBF(1);
  @$pb.TagNumber(2)
  set x1($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x2($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX2() => $_has(2);
  @$pb.TagNumber(3)
  void clearX2() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x3 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x3($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX3() => $_has(3);
  @$pb.TagNumber(4)
  void clearX3() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get x5 => $_getI64(4);
  @$pb.TagNumber(5)
  set x5($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX5() => $_has(4);
  @$pb.TagNumber(5)
  void clearX5() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get x6 => $_getN(5);
  @$pb.TagNumber(6)
  set x6($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX6() => $_has(5);
  @$pb.TagNumber(6)
  void clearX6() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get x7 => $_getN(6);
  @$pb.TagNumber(7)
  set x7($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasX7() => $_has(6);
  @$pb.TagNumber(7)
  void clearX7() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get x80 => $_getIZ(7);
  @$pb.TagNumber(8)
  set x80($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasX80() => $_has(7);
  @$pb.TagNumber(8)
  void clearX80() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get x8 => $_getIZ(8);
  @$pb.TagNumber(9)
  set x8($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasX8() => $_has(8);
  @$pb.TagNumber(9)
  void clearX8() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get x9 => $_getI64(9);
  @$pb.TagNumber(10)
  set x9($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasX9() => $_has(9);
  @$pb.TagNumber(10)
  void clearX9() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get x10 => $_getSZ(10);
  @$pb.TagNumber(11)
  set x10($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasX10() => $_has(10);
  @$pb.TagNumber(11)
  void clearX10() => clearField(11);

  @$pb.TagNumber(12)
  TestDemoType1 get x12 => $_getN(11);
  @$pb.TagNumber(12)
  set x12(TestDemoType1 v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasX12() => $_has(11);
  @$pb.TagNumber(12)
  void clearX12() => clearField(12);
  @$pb.TagNumber(12)
  TestDemoType1 ensureX12() => $_ensure(11);

  @$pb.TagNumber(13)
  TestDemoEnum get x13 => $_getN(12);
  @$pb.TagNumber(13)
  set x13(TestDemoEnum v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasX13() => $_has(12);
  @$pb.TagNumber(13)
  void clearX13() => clearField(13);

  @$pb.TagNumber(14)
  TestDemoDynamic get x14 => $_getN(13);
  @$pb.TagNumber(14)
  set x14(TestDemoDynamic v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasX14() => $_has(13);
  @$pb.TagNumber(14)
  void clearX14() => clearField(14);
  @$pb.TagNumber(14)
  TestDemoDynamic ensureX14() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.String get s1 => $_getSZ(14);
  @$pb.TagNumber(15)
  set s1($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasS1() => $_has(14);
  @$pb.TagNumber(15)
  void clearS1() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get t1 => $_getI64(15);
  @$pb.TagNumber(16)
  set t1($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasT1() => $_has(15);
  @$pb.TagNumber(16)
  void clearT1() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get k1 => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<$core.int> get k2 => $_getList(17);

  @$pb.TagNumber(19)
  $core.List<$core.int> get k5 => $_getList(18);

  @$pb.TagNumber(20)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(19);

  @$pb.TagNumber(21)
  $core.List<TestDemoE2> get k9 => $_getList(20);

  @$pb.TagNumber(22)
  $core.List<TestDemoDynamic> get k15 => $_getList(21);
}

class TestDetectEncoding extends $pb.GeneratedMessage {
  factory TestDetectEncoding({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TestDetectEncoding._() : super();
  factory TestDetectEncoding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDetectEncoding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDetectEncoding', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDetectEncoding clone() => TestDetectEncoding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDetectEncoding copyWith(void Function(TestDetectEncoding) updates) => super.copyWith((message) => updates(message as TestDetectEncoding)) as TestDetectEncoding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDetectEncoding create() => TestDetectEncoding._();
  TestDetectEncoding createEmptyInstance() => create();
  static $pb.PbList<TestDetectEncoding> createRepeated() => $pb.PbList<TestDetectEncoding>();
  @$core.pragma('dart2js:noInline')
  static TestDetectEncoding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDetectEncoding>(create);
  static TestDetectEncoding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TestExcelFromJson extends $pb.GeneratedMessage {
  factory TestExcelFromJson({
    $core.int? x4,
    $core.bool? x1,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.String? s1,
    $core.String? s2,
    $fixnum.Int64? t1,
    TestDemoType1? x12,
    TestDemoEnum? x13,
    TestDemoDynamic? x14,
    $core.Iterable<$core.int>? k1,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
    $core.Iterable<TestDemoDynamic>? k15,
  }) {
    final $result = create();
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (x12 != null) {
      $result.x12 = x12;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (x14 != null) {
      $result.x14 = x14;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    if (k15 != null) {
      $result.k15.addAll(k15);
    }
    return $result;
  }
  TestExcelFromJson._() : super();
  factory TestExcelFromJson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestExcelFromJson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestExcelFromJson', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'x1')
    ..aInt64(3, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 's1')
    ..aOS(6, _omitFieldNames ? '' : 's2')
    ..aInt64(7, _omitFieldNames ? '' : 't1')
    ..aOM<TestDemoType1>(8, _omitFieldNames ? '' : 'x12', subBuilder: TestDemoType1.create)
    ..e<TestDemoEnum>(9, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..aOM<TestDemoDynamic>(10, _omitFieldNames ? '' : 'x14', subBuilder: TestDemoDynamic.create)
    ..p<$core.int>(11, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(12, _omitFieldNames ? '' : 'k8', entryClassName: 'TestExcelFromJson.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(13, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..pc<TestDemoDynamic>(14, _omitFieldNames ? '' : 'k15', $pb.PbFieldType.PM, subBuilder: TestDemoDynamic.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestExcelFromJson clone() => TestExcelFromJson()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestExcelFromJson copyWith(void Function(TestExcelFromJson) updates) => super.copyWith((message) => updates(message as TestExcelFromJson)) as TestExcelFromJson;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestExcelFromJson create() => TestExcelFromJson._();
  TestExcelFromJson createEmptyInstance() => create();
  static $pb.PbList<TestExcelFromJson> createRepeated() => $pb.PbList<TestExcelFromJson>();
  @$core.pragma('dart2js:noInline')
  static TestExcelFromJson getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestExcelFromJson>(create);
  static TestExcelFromJson? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x4 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x4($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX4() => $_has(0);
  @$pb.TagNumber(1)
  void clearX4() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get x1 => $_getBF(1);
  @$pb.TagNumber(2)
  set x1($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get x5 => $_getI64(2);
  @$pb.TagNumber(3)
  set x5($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX5() => $_has(2);
  @$pb.TagNumber(3)
  void clearX5() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get x6 => $_getN(3);
  @$pb.TagNumber(4)
  set x6($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX6() => $_has(3);
  @$pb.TagNumber(4)
  void clearX6() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get s1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set s1($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasS1() => $_has(4);
  @$pb.TagNumber(5)
  void clearS1() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get s2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set s2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasS2() => $_has(5);
  @$pb.TagNumber(6)
  void clearS2() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get t1 => $_getI64(6);
  @$pb.TagNumber(7)
  set t1($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasT1() => $_has(6);
  @$pb.TagNumber(7)
  void clearT1() => clearField(7);

  @$pb.TagNumber(8)
  TestDemoType1 get x12 => $_getN(7);
  @$pb.TagNumber(8)
  set x12(TestDemoType1 v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasX12() => $_has(7);
  @$pb.TagNumber(8)
  void clearX12() => clearField(8);
  @$pb.TagNumber(8)
  TestDemoType1 ensureX12() => $_ensure(7);

  @$pb.TagNumber(9)
  TestDemoEnum get x13 => $_getN(8);
  @$pb.TagNumber(9)
  set x13(TestDemoEnum v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasX13() => $_has(8);
  @$pb.TagNumber(9)
  void clearX13() => clearField(9);

  @$pb.TagNumber(10)
  TestDemoDynamic get x14 => $_getN(9);
  @$pb.TagNumber(10)
  set x14(TestDemoDynamic v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasX14() => $_has(9);
  @$pb.TagNumber(10)
  void clearX14() => clearField(10);
  @$pb.TagNumber(10)
  TestDemoDynamic ensureX14() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get k1 => $_getList(10);

  @$pb.TagNumber(12)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(11);

  @$pb.TagNumber(13)
  $core.List<TestDemoE2> get k9 => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<TestDemoDynamic> get k15 => $_getList(13);
}

class TestExcelFromJsonMultiRow extends $pb.GeneratedMessage {
  factory TestExcelFromJsonMultiRow({
    $core.int? id,
    $core.int? x,
    $core.Iterable<TestTestRow>? items,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x != null) {
      $result.x = x;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  TestExcelFromJsonMultiRow._() : super();
  factory TestExcelFromJsonMultiRow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestExcelFromJsonMultiRow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestExcelFromJsonMultiRow', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..pc<TestTestRow>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TestTestRow.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestExcelFromJsonMultiRow clone() => TestExcelFromJsonMultiRow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestExcelFromJsonMultiRow copyWith(void Function(TestExcelFromJsonMultiRow) updates) => super.copyWith((message) => updates(message as TestExcelFromJsonMultiRow)) as TestExcelFromJsonMultiRow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestExcelFromJsonMultiRow create() => TestExcelFromJsonMultiRow._();
  TestExcelFromJsonMultiRow createEmptyInstance() => create();
  static $pb.PbList<TestExcelFromJsonMultiRow> createRepeated() => $pb.PbList<TestExcelFromJsonMultiRow>();
  @$core.pragma('dart2js:noInline')
  static TestExcelFromJsonMultiRow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestExcelFromJsonMultiRow>(create);
  static TestExcelFromJsonMultiRow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x => $_getIZ(1);
  @$pb.TagNumber(2)
  set x($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TestTestRow> get items => $_getList(2);
}

class TestFoo extends $pb.GeneratedMessage {
  factory TestFoo({
    $core.int? y1,
    $core.int? y2,
    $core.int? y3,
  }) {
    final $result = create();
    if (y1 != null) {
      $result.y1 = y1;
    }
    if (y2 != null) {
      $result.y2 = y2;
    }
    if (y3 != null) {
      $result.y3 = y3;
    }
    return $result;
  }
  TestFoo._() : super();
  factory TestFoo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestFoo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestFoo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'y1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'y3', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestFoo clone() => TestFoo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestFoo copyWith(void Function(TestFoo) updates) => super.copyWith((message) => updates(message as TestFoo)) as TestFoo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestFoo create() => TestFoo._();
  TestFoo createEmptyInstance() => create();
  static $pb.PbList<TestFoo> createRepeated() => $pb.PbList<TestFoo>();
  @$core.pragma('dart2js:noInline')
  static TestFoo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestFoo>(create);
  static TestFoo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get y1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set y1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasY1() => $_has(0);
  @$pb.TagNumber(1)
  void clearY1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set y2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY2() => $_has(1);
  @$pb.TagNumber(2)
  void clearY2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get y3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set y3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY3() => $_has(2);
  @$pb.TagNumber(3)
  void clearY3() => clearField(3);
}

class TestH1 extends $pb.GeneratedMessage {
  factory TestH1({
    TestH2? y2,
    $core.int? y3,
  }) {
    final $result = create();
    if (y2 != null) {
      $result.y2 = y2;
    }
    if (y3 != null) {
      $result.y3 = y3;
    }
    return $result;
  }
  TestH1._() : super();
  factory TestH1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestH1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestH1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOM<TestH2>(1, _omitFieldNames ? '' : 'y2', subBuilder: TestH2.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y3', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestH1 clone() => TestH1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestH1 copyWith(void Function(TestH1) updates) => super.copyWith((message) => updates(message as TestH1)) as TestH1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestH1 create() => TestH1._();
  TestH1 createEmptyInstance() => create();
  static $pb.PbList<TestH1> createRepeated() => $pb.PbList<TestH1>();
  @$core.pragma('dart2js:noInline')
  static TestH1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestH1>(create);
  static TestH1? _defaultInstance;

  @$pb.TagNumber(1)
  TestH2 get y2 => $_getN(0);
  @$pb.TagNumber(1)
  set y2(TestH2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasY2() => $_has(0);
  @$pb.TagNumber(1)
  void clearY2() => clearField(1);
  @$pb.TagNumber(1)
  TestH2 ensureY2() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get y3 => $_getIZ(1);
  @$pb.TagNumber(2)
  set y3($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY3() => $_has(1);
  @$pb.TagNumber(2)
  void clearY3() => clearField(2);
}

class TestH2 extends $pb.GeneratedMessage {
  factory TestH2({
    $core.int? z2,
    $core.int? z3,
  }) {
    final $result = create();
    if (z2 != null) {
      $result.z2 = z2;
    }
    if (z3 != null) {
      $result.z3 = z3;
    }
    return $result;
  }
  TestH2._() : super();
  factory TestH2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestH2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestH2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'z2', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'z3', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestH2 clone() => TestH2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestH2 copyWith(void Function(TestH2) updates) => super.copyWith((message) => updates(message as TestH2)) as TestH2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestH2 create() => TestH2._();
  TestH2 createEmptyInstance() => create();
  static $pb.PbList<TestH2> createRepeated() => $pb.PbList<TestH2>();
  @$core.pragma('dart2js:noInline')
  static TestH2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestH2>(create);
  static TestH2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get z2 => $_getIZ(0);
  @$pb.TagNumber(1)
  set z2($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasZ2() => $_has(0);
  @$pb.TagNumber(1)
  void clearZ2() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get z3 => $_getIZ(1);
  @$pb.TagNumber(2)
  set z3($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasZ3() => $_has(1);
  @$pb.TagNumber(2)
  void clearZ3() => clearField(2);
}

class TestInnerGroup extends $pb.GeneratedMessage {
  factory TestInnerGroup({
    $core.int? y1,
    $core.int? y2,
    $core.int? y3,
    $core.int? y4,
  }) {
    final $result = create();
    if (y1 != null) {
      $result.y1 = y1;
    }
    if (y2 != null) {
      $result.y2 = y2;
    }
    if (y3 != null) {
      $result.y3 = y3;
    }
    if (y4 != null) {
      $result.y4 = y4;
    }
    return $result;
  }
  TestInnerGroup._() : super();
  factory TestInnerGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestInnerGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestInnerGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'y1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'y3', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'y4', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestInnerGroup clone() => TestInnerGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestInnerGroup copyWith(void Function(TestInnerGroup) updates) => super.copyWith((message) => updates(message as TestInnerGroup)) as TestInnerGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestInnerGroup create() => TestInnerGroup._();
  TestInnerGroup createEmptyInstance() => create();
  static $pb.PbList<TestInnerGroup> createRepeated() => $pb.PbList<TestInnerGroup>();
  @$core.pragma('dart2js:noInline')
  static TestInnerGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestInnerGroup>(create);
  static TestInnerGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get y1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set y1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasY1() => $_has(0);
  @$pb.TagNumber(1)
  void clearY1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set y2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY2() => $_has(1);
  @$pb.TagNumber(2)
  void clearY2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get y3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set y3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY3() => $_has(2);
  @$pb.TagNumber(3)
  void clearY3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get y4 => $_getIZ(3);
  @$pb.TagNumber(4)
  set y4($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasY4() => $_has(3);
  @$pb.TagNumber(4)
  void clearY4() => clearField(4);
}

enum TestItemBase_Value {
  item, 
  equipment, 
  decorator, 
  notSet
}

class TestItemBase extends $pb.GeneratedMessage {
  factory TestItemBase({
    TestItem? item,
    TestEquipment? equipment,
    TestDecorator? decorator,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    if (equipment != null) {
      $result.equipment = equipment;
    }
    if (decorator != null) {
      $result.decorator = decorator;
    }
    return $result;
  }
  TestItemBase._() : super();
  factory TestItemBase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestItemBase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TestItemBase_Value> _TestItemBase_ValueByTag = {
    1 : TestItemBase_Value.item,
    2 : TestItemBase_Value.equipment,
    3 : TestItemBase_Value.decorator,
    0 : TestItemBase_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestItemBase', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<TestItem>(1, _omitFieldNames ? '' : 'Item', protoName: 'Item', subBuilder: TestItem.create)
    ..aOM<TestEquipment>(2, _omitFieldNames ? '' : 'Equipment', protoName: 'Equipment', subBuilder: TestEquipment.create)
    ..aOM<TestDecorator>(3, _omitFieldNames ? '' : 'Decorator', protoName: 'Decorator', subBuilder: TestDecorator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestItemBase clone() => TestItemBase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestItemBase copyWith(void Function(TestItemBase) updates) => super.copyWith((message) => updates(message as TestItemBase)) as TestItemBase;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestItemBase create() => TestItemBase._();
  TestItemBase createEmptyInstance() => create();
  static $pb.PbList<TestItemBase> createRepeated() => $pb.PbList<TestItemBase>();
  @$core.pragma('dart2js:noInline')
  static TestItemBase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestItemBase>(create);
  static TestItemBase? _defaultInstance;

  TestItemBase_Value whichValue() => _TestItemBase_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TestItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(TestItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  TestItem ensureItem() => $_ensure(0);

  @$pb.TagNumber(2)
  TestEquipment get equipment => $_getN(1);
  @$pb.TagNumber(2)
  set equipment(TestEquipment v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEquipment() => $_has(1);
  @$pb.TagNumber(2)
  void clearEquipment() => clearField(2);
  @$pb.TagNumber(2)
  TestEquipment ensureEquipment() => $_ensure(1);

  @$pb.TagNumber(3)
  TestDecorator get decorator => $_getN(2);
  @$pb.TagNumber(3)
  set decorator(TestDecorator v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecorator() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecorator() => clearField(3);
  @$pb.TagNumber(3)
  TestDecorator ensureDecorator() => $_ensure(2);
}

class TestDecorator extends $pb.GeneratedMessage {
  factory TestDecorator({
    $core.int? id,
    $core.String? name,
    $core.String? desc,
    $core.int? duration,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    return $result;
  }
  TestDecorator._() : super();
  factory TestDecorator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestDecorator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestDecorator', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestDecorator clone() => TestDecorator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestDecorator copyWith(void Function(TestDecorator) updates) => super.copyWith((message) => updates(message as TestDecorator)) as TestDecorator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestDecorator create() => TestDecorator._();
  TestDecorator createEmptyInstance() => create();
  static $pb.PbList<TestDecorator> createRepeated() => $pb.PbList<TestDecorator>();
  @$core.pragma('dart2js:noInline')
  static TestDecorator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestDecorator>(create);
  static TestDecorator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(4)
  set duration($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => clearField(4);
}

class TestEquipment extends $pb.GeneratedMessage {
  factory TestEquipment({
    $core.int? id,
    $core.String? name,
    $core.String? desc,
    TestDemoEnum? attr,
    $core.int? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (attr != null) {
      $result.attr = attr;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  TestEquipment._() : super();
  factory TestEquipment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestEquipment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestEquipment', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..e<TestDemoEnum>(4, _omitFieldNames ? '' : 'attr', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestEquipment clone() => TestEquipment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestEquipment copyWith(void Function(TestEquipment) updates) => super.copyWith((message) => updates(message as TestEquipment)) as TestEquipment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestEquipment create() => TestEquipment._();
  TestEquipment createEmptyInstance() => create();
  static $pb.PbList<TestEquipment> createRepeated() => $pb.PbList<TestEquipment>();
  @$core.pragma('dart2js:noInline')
  static TestEquipment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestEquipment>(create);
  static TestEquipment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  TestDemoEnum get attr => $_getN(3);
  @$pb.TagNumber(4)
  set attr(TestDemoEnum v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAttr() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttr() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get value => $_getIZ(4);
  @$pb.TagNumber(5)
  set value($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);
}

class TestItem extends $pb.GeneratedMessage {
  factory TestItem({
    $core.int? id,
    $core.String? name,
    $core.String? desc,
    $core.int? num,
    $core.int? price,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (num != null) {
      $result.num = num;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  TestItem._() : super();
  factory TestItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'num', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestItem clone() => TestItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestItem copyWith(void Function(TestItem) updates) => super.copyWith((message) => updates(message as TestItem)) as TestItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestItem create() => TestItem._();
  TestItem createEmptyInstance() => create();
  static $pb.PbList<TestItem> createRepeated() => $pb.PbList<TestItem>();
  @$core.pragma('dart2js:noInline')
  static TestItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestItem>(create);
  static TestItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get price => $_getIZ(4);
  @$pb.TagNumber(5)
  set price($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);
}

class TestMultiIndexList extends $pb.GeneratedMessage {
  factory TestMultiIndexList({
    $core.int? id1,
    $fixnum.Int64? id2,
    $core.String? id3,
    $core.int? num,
    $core.String? desc,
  }) {
    final $result = create();
    if (id1 != null) {
      $result.id1 = id1;
    }
    if (id2 != null) {
      $result.id2 = id2;
    }
    if (id3 != null) {
      $result.id3 = id3;
    }
    if (num != null) {
      $result.num = num;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  TestMultiIndexList._() : super();
  factory TestMultiIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id1', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'id2')
    ..aOS(3, _omitFieldNames ? '' : 'id3')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'num', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiIndexList clone() => TestMultiIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiIndexList copyWith(void Function(TestMultiIndexList) updates) => super.copyWith((message) => updates(message as TestMultiIndexList)) as TestMultiIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiIndexList create() => TestMultiIndexList._();
  TestMultiIndexList createEmptyInstance() => create();
  static $pb.PbList<TestMultiIndexList> createRepeated() => $pb.PbList<TestMultiIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestMultiIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiIndexList>(create);
  static TestMultiIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set id1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearId1() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id2 => $_getI64(1);
  @$pb.TagNumber(2)
  set id2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId2() => $_has(1);
  @$pb.TagNumber(2)
  void clearId2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set id3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId3() => $_has(2);
  @$pb.TagNumber(3)
  void clearId3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => clearField(5);
}

class TestMultiRowRecord extends $pb.GeneratedMessage {
  factory TestMultiRowRecord({
    $core.int? id,
    $core.String? name,
    $core.Iterable<TestMultiRowType1>? oneRows,
    $core.Iterable<TestMultiRowType1>? multiRows1,
    $core.Iterable<TestMultiRowType1>? multiRows2,
    $core.Map<$core.int, TestMultiRowType2>? multiRows4,
    $core.Iterable<TestMultiRowType3>? multiRows5,
    $core.Map<$core.int, TestMultiRowType2>? multiRows6,
    $core.Map<$core.int, $core.int>? multiRows7,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (oneRows != null) {
      $result.oneRows.addAll(oneRows);
    }
    if (multiRows1 != null) {
      $result.multiRows1.addAll(multiRows1);
    }
    if (multiRows2 != null) {
      $result.multiRows2.addAll(multiRows2);
    }
    if (multiRows4 != null) {
      $result.multiRows4.addAll(multiRows4);
    }
    if (multiRows5 != null) {
      $result.multiRows5.addAll(multiRows5);
    }
    if (multiRows6 != null) {
      $result.multiRows6.addAll(multiRows6);
    }
    if (multiRows7 != null) {
      $result.multiRows7.addAll(multiRows7);
    }
    return $result;
  }
  TestMultiRowRecord._() : super();
  factory TestMultiRowRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiRowRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiRowRecord', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<TestMultiRowType1>(3, _omitFieldNames ? '' : 'oneRows', $pb.PbFieldType.PM, subBuilder: TestMultiRowType1.create)
    ..pc<TestMultiRowType1>(4, _omitFieldNames ? '' : 'multiRows1', $pb.PbFieldType.PM, subBuilder: TestMultiRowType1.create)
    ..pc<TestMultiRowType1>(5, _omitFieldNames ? '' : 'multiRows2', $pb.PbFieldType.PM, subBuilder: TestMultiRowType1.create)
    ..m<$core.int, TestMultiRowType2>(6, _omitFieldNames ? '' : 'multiRows4', entryClassName: 'TestMultiRowRecord.MultiRows4Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: TestMultiRowType2.create, valueDefaultOrMaker: TestMultiRowType2.getDefault, packageName: const $pb.PackageName('cfg'))
    ..pc<TestMultiRowType3>(7, _omitFieldNames ? '' : 'multiRows5', $pb.PbFieldType.PM, subBuilder: TestMultiRowType3.create)
    ..m<$core.int, TestMultiRowType2>(8, _omitFieldNames ? '' : 'multiRows6', entryClassName: 'TestMultiRowRecord.MultiRows6Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: TestMultiRowType2.create, valueDefaultOrMaker: TestMultiRowType2.getDefault, packageName: const $pb.PackageName('cfg'))
    ..m<$core.int, $core.int>(9, _omitFieldNames ? '' : 'multiRows7', entryClassName: 'TestMultiRowRecord.MultiRows7Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiRowRecord clone() => TestMultiRowRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiRowRecord copyWith(void Function(TestMultiRowRecord) updates) => super.copyWith((message) => updates(message as TestMultiRowRecord)) as TestMultiRowRecord;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiRowRecord create() => TestMultiRowRecord._();
  TestMultiRowRecord createEmptyInstance() => create();
  static $pb.PbList<TestMultiRowRecord> createRepeated() => $pb.PbList<TestMultiRowRecord>();
  @$core.pragma('dart2js:noInline')
  static TestMultiRowRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiRowRecord>(create);
  static TestMultiRowRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TestMultiRowType1> get oneRows => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<TestMultiRowType1> get multiRows1 => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<TestMultiRowType1> get multiRows2 => $_getList(4);

  @$pb.TagNumber(6)
  $core.Map<$core.int, TestMultiRowType2> get multiRows4 => $_getMap(5);

  @$pb.TagNumber(7)
  $core.List<TestMultiRowType3> get multiRows5 => $_getList(6);

  @$pb.TagNumber(8)
  $core.Map<$core.int, TestMultiRowType2> get multiRows6 => $_getMap(7);

  @$pb.TagNumber(9)
  $core.Map<$core.int, $core.int> get multiRows7 => $_getMap(8);
}

class TestMultiRowTitle extends $pb.GeneratedMessage {
  factory TestMultiRowTitle({
    $core.int? id,
    $core.String? name,
    TestH1? x1,
    TestH2? x20,
    $core.Iterable<TestH2>? x2,
    $core.Iterable<TestH2>? x3,
    $core.Iterable<TestH2>? x4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x20 != null) {
      $result.x20 = x20;
    }
    if (x2 != null) {
      $result.x2.addAll(x2);
    }
    if (x3 != null) {
      $result.x3.addAll(x3);
    }
    if (x4 != null) {
      $result.x4.addAll(x4);
    }
    return $result;
  }
  TestMultiRowTitle._() : super();
  factory TestMultiRowTitle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiRowTitle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiRowTitle', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<TestH1>(3, _omitFieldNames ? '' : 'x1', subBuilder: TestH1.create)
    ..aOM<TestH2>(4, _omitFieldNames ? '' : 'x20', protoName: 'x2_0', subBuilder: TestH2.create)
    ..pc<TestH2>(5, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.PM, subBuilder: TestH2.create)
    ..pc<TestH2>(6, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.PM, subBuilder: TestH2.create)
    ..pc<TestH2>(7, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.PM, subBuilder: TestH2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiRowTitle clone() => TestMultiRowTitle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiRowTitle copyWith(void Function(TestMultiRowTitle) updates) => super.copyWith((message) => updates(message as TestMultiRowTitle)) as TestMultiRowTitle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiRowTitle create() => TestMultiRowTitle._();
  TestMultiRowTitle createEmptyInstance() => create();
  static $pb.PbList<TestMultiRowTitle> createRepeated() => $pb.PbList<TestMultiRowTitle>();
  @$core.pragma('dart2js:noInline')
  static TestMultiRowTitle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiRowTitle>(create);
  static TestMultiRowTitle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  TestH1 get x1 => $_getN(2);
  @$pb.TagNumber(3)
  set x1(TestH1 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasX1() => $_has(2);
  @$pb.TagNumber(3)
  void clearX1() => clearField(3);
  @$pb.TagNumber(3)
  TestH1 ensureX1() => $_ensure(2);

  @$pb.TagNumber(4)
  TestH2 get x20 => $_getN(3);
  @$pb.TagNumber(4)
  set x20(TestH2 v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasX20() => $_has(3);
  @$pb.TagNumber(4)
  void clearX20() => clearField(4);
  @$pb.TagNumber(4)
  TestH2 ensureX20() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<TestH2> get x2 => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<TestH2> get x3 => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<TestH2> get x4 => $_getList(6);
}

class TestMultiRowType1 extends $pb.GeneratedMessage {
  factory TestMultiRowType1({
    $core.int? id,
    $core.int? x,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x != null) {
      $result.x = x;
    }
    return $result;
  }
  TestMultiRowType1._() : super();
  factory TestMultiRowType1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiRowType1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiRowType1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiRowType1 clone() => TestMultiRowType1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiRowType1 copyWith(void Function(TestMultiRowType1) updates) => super.copyWith((message) => updates(message as TestMultiRowType1)) as TestMultiRowType1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiRowType1 create() => TestMultiRowType1._();
  TestMultiRowType1 createEmptyInstance() => create();
  static $pb.PbList<TestMultiRowType1> createRepeated() => $pb.PbList<TestMultiRowType1>();
  @$core.pragma('dart2js:noInline')
  static TestMultiRowType1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiRowType1>(create);
  static TestMultiRowType1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x => $_getIZ(1);
  @$pb.TagNumber(2)
  set x($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);
}

class TestMultiRowType2 extends $pb.GeneratedMessage {
  factory TestMultiRowType2({
    $core.int? id,
    $core.int? x,
    $core.double? y,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  TestMultiRowType2._() : super();
  factory TestMultiRowType2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiRowType2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiRowType2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiRowType2 clone() => TestMultiRowType2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiRowType2 copyWith(void Function(TestMultiRowType2) updates) => super.copyWith((message) => updates(message as TestMultiRowType2)) as TestMultiRowType2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiRowType2 create() => TestMultiRowType2._();
  TestMultiRowType2 createEmptyInstance() => create();
  static $pb.PbList<TestMultiRowType2> createRepeated() => $pb.PbList<TestMultiRowType2>();
  @$core.pragma('dart2js:noInline')
  static TestMultiRowType2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiRowType2>(create);
  static TestMultiRowType2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x => $_getIZ(1);
  @$pb.TagNumber(2)
  set x($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get y => $_getN(2);
  @$pb.TagNumber(3)
  set y($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => clearField(3);
}

class TestMultiRowType3 extends $pb.GeneratedMessage {
  factory TestMultiRowType3({
    $core.int? id,
    $core.Iterable<TestMultiRowType1>? items,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  TestMultiRowType3._() : super();
  factory TestMultiRowType3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiRowType3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiRowType3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<TestMultiRowType1>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TestMultiRowType1.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiRowType3 clone() => TestMultiRowType3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiRowType3 copyWith(void Function(TestMultiRowType3) updates) => super.copyWith((message) => updates(message as TestMultiRowType3)) as TestMultiRowType3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiRowType3 create() => TestMultiRowType3._();
  TestMultiRowType3 createEmptyInstance() => create();
  static $pb.PbList<TestMultiRowType3> createRepeated() => $pb.PbList<TestMultiRowType3>();
  @$core.pragma('dart2js:noInline')
  static TestMultiRowType3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiRowType3>(create);
  static TestMultiRowType3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TestMultiRowType1> get items => $_getList(1);
}

class TestMultiUnionIndexList extends $pb.GeneratedMessage {
  factory TestMultiUnionIndexList({
    $core.int? id1,
    $fixnum.Int64? id2,
    $core.String? id3,
    $core.int? num,
    $core.String? desc,
  }) {
    final $result = create();
    if (id1 != null) {
      $result.id1 = id1;
    }
    if (id2 != null) {
      $result.id2 = id2;
    }
    if (id3 != null) {
      $result.id3 = id3;
    }
    if (num != null) {
      $result.num = num;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  TestMultiUnionIndexList._() : super();
  factory TestMultiUnionIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMultiUnionIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestMultiUnionIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id1', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'id2')
    ..aOS(3, _omitFieldNames ? '' : 'id3')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'num', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMultiUnionIndexList clone() => TestMultiUnionIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMultiUnionIndexList copyWith(void Function(TestMultiUnionIndexList) updates) => super.copyWith((message) => updates(message as TestMultiUnionIndexList)) as TestMultiUnionIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMultiUnionIndexList create() => TestMultiUnionIndexList._();
  TestMultiUnionIndexList createEmptyInstance() => create();
  static $pb.PbList<TestMultiUnionIndexList> createRepeated() => $pb.PbList<TestMultiUnionIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestMultiUnionIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMultiUnionIndexList>(create);
  static TestMultiUnionIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set id1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearId1() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id2 => $_getI64(1);
  @$pb.TagNumber(2)
  set id2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId2() => $_has(1);
  @$pb.TagNumber(2)
  void clearId2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set id3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId3() => $_has(2);
  @$pb.TagNumber(3)
  void clearId3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => clearField(5);
}

class TestNotIndexList extends $pb.GeneratedMessage {
  factory TestNotIndexList({
    $core.int? x,
    $core.int? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  TestNotIndexList._() : super();
  factory TestNotIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestNotIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestNotIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestNotIndexList clone() => TestNotIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestNotIndexList copyWith(void Function(TestNotIndexList) updates) => super.copyWith((message) => updates(message as TestNotIndexList)) as TestNotIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestNotIndexList create() => TestNotIndexList._();
  TestNotIndexList createEmptyInstance() => create();
  static $pb.PbList<TestNotIndexList> createRepeated() => $pb.PbList<TestNotIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestNotIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestNotIndexList>(create);
  static TestNotIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class TestPath extends $pb.GeneratedMessage {
  factory TestPath({
    $core.int? id,
    $core.String? res,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (res != null) {
      $result.res = res;
    }
    return $result;
  }
  TestPath._() : super();
  factory TestPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestPath', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'res')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestPath clone() => TestPath()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestPath copyWith(void Function(TestPath) updates) => super.copyWith((message) => updates(message as TestPath)) as TestPath;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestPath create() => TestPath._();
  TestPath createEmptyInstance() => create();
  static $pb.PbList<TestPath> createRepeated() => $pb.PbList<TestPath>();
  @$core.pragma('dart2js:noInline')
  static TestPath getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestPath>(create);
  static TestPath? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get res => $_getSZ(1);
  @$pb.TagNumber(2)
  set res($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRes() => $_has(1);
  @$pb.TagNumber(2)
  void clearRes() => clearField(2);
}

enum TestRefDynamicBase_Value {
  refBean, 
  notSet
}

class TestRefDynamicBase extends $pb.GeneratedMessage {
  factory TestRefDynamicBase({
    TestRefBean? refBean,
  }) {
    final $result = create();
    if (refBean != null) {
      $result.refBean = refBean;
    }
    return $result;
  }
  TestRefDynamicBase._() : super();
  factory TestRefDynamicBase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestRefDynamicBase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TestRefDynamicBase_Value> _TestRefDynamicBase_ValueByTag = {
    1 : TestRefDynamicBase_Value.refBean,
    0 : TestRefDynamicBase_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestRefDynamicBase', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<TestRefBean>(1, _omitFieldNames ? '' : 'RefBean', protoName: 'RefBean', subBuilder: TestRefBean.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestRefDynamicBase clone() => TestRefDynamicBase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestRefDynamicBase copyWith(void Function(TestRefDynamicBase) updates) => super.copyWith((message) => updates(message as TestRefDynamicBase)) as TestRefDynamicBase;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestRefDynamicBase create() => TestRefDynamicBase._();
  TestRefDynamicBase createEmptyInstance() => create();
  static $pb.PbList<TestRefDynamicBase> createRepeated() => $pb.PbList<TestRefDynamicBase>();
  @$core.pragma('dart2js:noInline')
  static TestRefDynamicBase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestRefDynamicBase>(create);
  static TestRefDynamicBase? _defaultInstance;

  TestRefDynamicBase_Value whichValue() => _TestRefDynamicBase_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TestRefBean get refBean => $_getN(0);
  @$pb.TagNumber(1)
  set refBean(TestRefBean v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefBean() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefBean() => clearField(1);
  @$pb.TagNumber(1)
  TestRefBean ensureRefBean() => $_ensure(0);
}

class TestRefBean extends $pb.GeneratedMessage {
  factory TestRefBean({
    $core.int? x,
    $core.Iterable<$core.int>? arr,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (arr != null) {
      $result.arr.addAll(arr);
    }
    return $result;
  }
  TestRefBean._() : super();
  factory TestRefBean.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestRefBean.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestRefBean', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'arr', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestRefBean clone() => TestRefBean()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestRefBean copyWith(void Function(TestRefBean) updates) => super.copyWith((message) => updates(message as TestRefBean)) as TestRefBean;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestRefBean create() => TestRefBean._();
  TestRefBean createEmptyInstance() => create();
  static $pb.PbList<TestRefBean> createRepeated() => $pb.PbList<TestRefBean>();
  @$core.pragma('dart2js:noInline')
  static TestRefBean getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestRefBean>(create);
  static TestRefBean? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get arr => $_getList(1);
}

class TestSepBean1 extends $pb.GeneratedMessage {
  factory TestSepBean1({
    $core.int? a,
    $core.int? b,
    $core.String? c,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (c != null) {
      $result.c = c;
    }
    return $result;
  }
  TestSepBean1._() : super();
  factory TestSepBean1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestSepBean1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestSepBean1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'a', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'c')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestSepBean1 clone() => TestSepBean1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestSepBean1 copyWith(void Function(TestSepBean1) updates) => super.copyWith((message) => updates(message as TestSepBean1)) as TestSepBean1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestSepBean1 create() => TestSepBean1._();
  TestSepBean1 createEmptyInstance() => create();
  static $pb.PbList<TestSepBean1> createRepeated() => $pb.PbList<TestSepBean1>();
  @$core.pragma('dart2js:noInline')
  static TestSepBean1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestSepBean1>(create);
  static TestSepBean1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get c => $_getSZ(2);
  @$pb.TagNumber(3)
  set c($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => clearField(3);
}

class TestSepVector extends $pb.GeneratedMessage {
  factory TestSepVector({
    $core.int? x,
    $core.int? y,
    $core.int? z,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    return $result;
  }
  TestSepVector._() : super();
  factory TestSepVector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestSepVector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestSepVector', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestSepVector clone() => TestSepVector()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestSepVector copyWith(void Function(TestSepVector) updates) => super.copyWith((message) => updates(message as TestSepVector)) as TestSepVector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestSepVector create() => TestSepVector._();
  TestSepVector createEmptyInstance() => create();
  static $pb.PbList<TestSepVector> createRepeated() => $pb.PbList<TestSepVector>();
  @$core.pragma('dart2js:noInline')
  static TestSepVector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestSepVector>(create);
  static TestSepVector? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get z => $_getIZ(2);
  @$pb.TagNumber(3)
  set z($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

enum TestShape_Value {
  circle, 
  rectangle, 
  notSet
}

class TestShape extends $pb.GeneratedMessage {
  factory TestShape({
    TestCircle? circle,
    Test2Rectangle? rectangle,
  }) {
    final $result = create();
    if (circle != null) {
      $result.circle = circle;
    }
    if (rectangle != null) {
      $result.rectangle = rectangle;
    }
    return $result;
  }
  TestShape._() : super();
  factory TestShape.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestShape.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TestShape_Value> _TestShape_ValueByTag = {
    1 : TestShape_Value.circle,
    2 : TestShape_Value.rectangle,
    0 : TestShape_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestShape', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<TestCircle>(1, _omitFieldNames ? '' : 'Circle', protoName: 'Circle', subBuilder: TestCircle.create)
    ..aOM<Test2Rectangle>(2, _omitFieldNames ? '' : 'Rectangle', protoName: 'Rectangle', subBuilder: Test2Rectangle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestShape clone() => TestShape()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestShape copyWith(void Function(TestShape) updates) => super.copyWith((message) => updates(message as TestShape)) as TestShape;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestShape create() => TestShape._();
  TestShape createEmptyInstance() => create();
  static $pb.PbList<TestShape> createRepeated() => $pb.PbList<TestShape>();
  @$core.pragma('dart2js:noInline')
  static TestShape getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestShape>(create);
  static TestShape? _defaultInstance;

  TestShape_Value whichValue() => _TestShape_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TestCircle get circle => $_getN(0);
  @$pb.TagNumber(1)
  set circle(TestCircle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCircle() => $_has(0);
  @$pb.TagNumber(1)
  void clearCircle() => clearField(1);
  @$pb.TagNumber(1)
  TestCircle ensureCircle() => $_ensure(0);

  @$pb.TagNumber(2)
  Test2Rectangle get rectangle => $_getN(1);
  @$pb.TagNumber(2)
  set rectangle(Test2Rectangle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRectangle() => $_has(1);
  @$pb.TagNumber(2)
  void clearRectangle() => clearField(2);
  @$pb.TagNumber(2)
  Test2Rectangle ensureRectangle() => $_ensure(1);
}

class TestCircle extends $pb.GeneratedMessage {
  factory TestCircle({
    $core.double? radius,
  }) {
    final $result = create();
    if (radius != null) {
      $result.radius = radius;
    }
    return $result;
  }
  TestCircle._() : super();
  factory TestCircle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestCircle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestCircle', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestCircle clone() => TestCircle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestCircle copyWith(void Function(TestCircle) updates) => super.copyWith((message) => updates(message as TestCircle)) as TestCircle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestCircle create() => TestCircle._();
  TestCircle createEmptyInstance() => create();
  static $pb.PbList<TestCircle> createRepeated() => $pb.PbList<TestCircle>();
  @$core.pragma('dart2js:noInline')
  static TestCircle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestCircle>(create);
  static TestCircle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get radius => $_getN(0);
  @$pb.TagNumber(1)
  set radius($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRadius() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadius() => clearField(1);
}

class Test2Rectangle extends $pb.GeneratedMessage {
  factory Test2Rectangle({
    $core.double? width,
    $core.double? height,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  Test2Rectangle._() : super();
  factory Test2Rectangle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Test2Rectangle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Test2Rectangle', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Test2Rectangle clone() => Test2Rectangle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Test2Rectangle copyWith(void Function(Test2Rectangle) updates) => super.copyWith((message) => updates(message as Test2Rectangle)) as Test2Rectangle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Test2Rectangle create() => Test2Rectangle._();
  Test2Rectangle createEmptyInstance() => create();
  static $pb.PbList<Test2Rectangle> createRepeated() => $pb.PbList<Test2Rectangle>();
  @$core.pragma('dart2js:noInline')
  static Test2Rectangle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Test2Rectangle>(create);
  static Test2Rectangle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}

class TestTest3 extends $pb.GeneratedMessage {
  factory TestTest3({
    $core.int? x,
    $core.int? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  TestTest3._() : super();
  factory TestTest3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTest3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTest3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTest3 clone() => TestTest3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTest3 copyWith(void Function(TestTest3) updates) => super.copyWith((message) => updates(message as TestTest3)) as TestTest3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTest3 create() => TestTest3._();
  TestTest3 createEmptyInstance() => create();
  static $pb.PbList<TestTest3> createRepeated() => $pb.PbList<TestTest3>();
  @$core.pragma('dart2js:noInline')
  static TestTest3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTest3>(create);
  static TestTest3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class TestTestBeRef extends $pb.GeneratedMessage {
  factory TestTestBeRef({
    $core.int? id,
    $core.int? count,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  TestTestBeRef._() : super();
  factory TestTestBeRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestBeRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestBeRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestBeRef clone() => TestTestBeRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestBeRef copyWith(void Function(TestTestBeRef) updates) => super.copyWith((message) => updates(message as TestTestBeRef)) as TestTestBeRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestBeRef create() => TestTestBeRef._();
  TestTestBeRef createEmptyInstance() => create();
  static $pb.PbList<TestTestBeRef> createRepeated() => $pb.PbList<TestTestBeRef>();
  @$core.pragma('dart2js:noInline')
  static TestTestBeRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestBeRef>(create);
  static TestTestBeRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class TestTestExcelBean1 extends $pb.GeneratedMessage {
  factory TestTestExcelBean1({
    $core.int? x1,
    $core.String? x2,
    $core.int? x3,
    $core.double? x4,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    return $result;
  }
  TestTestExcelBean1._() : super();
  factory TestTestExcelBean1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestExcelBean1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestExcelBean1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'x2')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestExcelBean1 clone() => TestTestExcelBean1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestExcelBean1 copyWith(void Function(TestTestExcelBean1) updates) => super.copyWith((message) => updates(message as TestTestExcelBean1)) as TestTestExcelBean1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestExcelBean1 create() => TestTestExcelBean1._();
  TestTestExcelBean1 createEmptyInstance() => create();
  static $pb.PbList<TestTestExcelBean1> createRepeated() => $pb.PbList<TestTestExcelBean1>();
  @$core.pragma('dart2js:noInline')
  static TestTestExcelBean1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestExcelBean1>(create);
  static TestTestExcelBean1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set x1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get x2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set x2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX3() => $_has(2);
  @$pb.TagNumber(3)
  void clearX3() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get x4 => $_getN(3);
  @$pb.TagNumber(4)
  set x4($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX4() => $_has(3);
  @$pb.TagNumber(4)
  void clearX4() => clearField(4);
}

class TestTestExcelBean2 extends $pb.GeneratedMessage {
  factory TestTestExcelBean2({
    $core.int? y1,
    $core.String? y2,
    $core.double? y3,
  }) {
    final $result = create();
    if (y1 != null) {
      $result.y1 = y1;
    }
    if (y2 != null) {
      $result.y2 = y2;
    }
    if (y3 != null) {
      $result.y3 = y3;
    }
    return $result;
  }
  TestTestExcelBean2._() : super();
  factory TestTestExcelBean2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestExcelBean2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestExcelBean2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'y1', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'y2')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'y3', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestExcelBean2 clone() => TestTestExcelBean2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestExcelBean2 copyWith(void Function(TestTestExcelBean2) updates) => super.copyWith((message) => updates(message as TestTestExcelBean2)) as TestTestExcelBean2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestExcelBean2 create() => TestTestExcelBean2._();
  TestTestExcelBean2 createEmptyInstance() => create();
  static $pb.PbList<TestTestExcelBean2> createRepeated() => $pb.PbList<TestTestExcelBean2>();
  @$core.pragma('dart2js:noInline')
  static TestTestExcelBean2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestExcelBean2>(create);
  static TestTestExcelBean2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get y1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set y1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasY1() => $_has(0);
  @$pb.TagNumber(1)
  void clearY1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get y2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set y2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY2() => $_has(1);
  @$pb.TagNumber(2)
  void clearY2() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get y3 => $_getN(2);
  @$pb.TagNumber(3)
  set y3($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY3() => $_has(2);
  @$pb.TagNumber(3)
  void clearY3() => clearField(3);
}

class TestTestFieldAlias extends $pb.GeneratedMessage {
  factory TestTestFieldAlias({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TestTestFieldAlias._() : super();
  factory TestTestFieldAlias.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestFieldAlias.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestFieldAlias', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestFieldAlias clone() => TestTestFieldAlias()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestFieldAlias copyWith(void Function(TestTestFieldAlias) updates) => super.copyWith((message) => updates(message as TestTestFieldAlias)) as TestTestFieldAlias;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestFieldAlias create() => TestTestFieldAlias._();
  TestTestFieldAlias createEmptyInstance() => create();
  static $pb.PbList<TestTestFieldAlias> createRepeated() => $pb.PbList<TestTestFieldAlias>();
  @$core.pragma('dart2js:noInline')
  static TestTestFieldAlias getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestFieldAlias>(create);
  static TestTestFieldAlias? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TestTestFieldVariant extends $pb.GeneratedMessage {
  factory TestTestFieldVariant({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TestTestFieldVariant._() : super();
  factory TestTestFieldVariant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestFieldVariant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestFieldVariant', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestFieldVariant clone() => TestTestFieldVariant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestFieldVariant copyWith(void Function(TestTestFieldVariant) updates) => super.copyWith((message) => updates(message as TestTestFieldVariant)) as TestTestFieldVariant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestFieldVariant create() => TestTestFieldVariant._();
  TestTestFieldVariant createEmptyInstance() => create();
  static $pb.PbList<TestTestFieldVariant> createRepeated() => $pb.PbList<TestTestFieldVariant>();
  @$core.pragma('dart2js:noInline')
  static TestTestFieldVariant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestFieldVariant>(create);
  static TestTestFieldVariant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TestTestFieldVariant2 extends $pb.GeneratedMessage {
  factory TestTestFieldVariant2({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TestTestFieldVariant2._() : super();
  factory TestTestFieldVariant2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestFieldVariant2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestFieldVariant2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestFieldVariant2 clone() => TestTestFieldVariant2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestFieldVariant2 copyWith(void Function(TestTestFieldVariant2) updates) => super.copyWith((message) => updates(message as TestTestFieldVariant2)) as TestTestFieldVariant2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestFieldVariant2 create() => TestTestFieldVariant2._();
  TestTestFieldVariant2 createEmptyInstance() => create();
  static $pb.PbList<TestTestFieldVariant2> createRepeated() => $pb.PbList<TestTestFieldVariant2>();
  @$core.pragma('dart2js:noInline')
  static TestTestFieldVariant2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestFieldVariant2>(create);
  static TestTestFieldVariant2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TestTestGlobal extends $pb.GeneratedMessage {
  factory TestTestGlobal({
    $core.int? unlockEquip,
    $core.int? unlockHero,
  }) {
    final $result = create();
    if (unlockEquip != null) {
      $result.unlockEquip = unlockEquip;
    }
    if (unlockHero != null) {
      $result.unlockHero = unlockHero;
    }
    return $result;
  }
  TestTestGlobal._() : super();
  factory TestTestGlobal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestGlobal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestGlobal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unlockEquip', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'unlockHero', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestGlobal clone() => TestTestGlobal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestGlobal copyWith(void Function(TestTestGlobal) updates) => super.copyWith((message) => updates(message as TestTestGlobal)) as TestTestGlobal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestGlobal create() => TestTestGlobal._();
  TestTestGlobal createEmptyInstance() => create();
  static $pb.PbList<TestTestGlobal> createRepeated() => $pb.PbList<TestTestGlobal>();
  @$core.pragma('dart2js:noInline')
  static TestTestGlobal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestGlobal>(create);
  static TestTestGlobal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unlockEquip => $_getIZ(0);
  @$pb.TagNumber(1)
  set unlockEquip($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnlockEquip() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnlockEquip() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get unlockHero => $_getIZ(1);
  @$pb.TagNumber(2)
  set unlockHero($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnlockHero() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnlockHero() => clearField(2);
}

class TestTestIndex extends $pb.GeneratedMessage {
  factory TestTestIndex({
    $core.int? id,
    $core.Iterable<TestDemoType1>? eles,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (eles != null) {
      $result.eles.addAll(eles);
    }
    return $result;
  }
  TestTestIndex._() : super();
  factory TestTestIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<TestDemoType1>(2, _omitFieldNames ? '' : 'eles', $pb.PbFieldType.PM, subBuilder: TestDemoType1.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestIndex clone() => TestTestIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestIndex copyWith(void Function(TestTestIndex) updates) => super.copyWith((message) => updates(message as TestTestIndex)) as TestTestIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestIndex create() => TestTestIndex._();
  TestTestIndex createEmptyInstance() => create();
  static $pb.PbList<TestTestIndex> createRepeated() => $pb.PbList<TestTestIndex>();
  @$core.pragma('dart2js:noInline')
  static TestTestIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestIndex>(create);
  static TestTestIndex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TestDemoType1> get eles => $_getList(1);
}

class TestTestMap extends $pb.GeneratedMessage {
  factory TestTestMap({
    $core.int? id,
    $core.Map<$core.int, $core.int>? x1,
    $core.Map<$fixnum.Int64, $core.int>? x2,
    $core.Map<$core.String, $core.int>? x3,
    $core.Map<$core.int, $core.int>? x4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1.addAll(x1);
    }
    if (x2 != null) {
      $result.x2.addAll(x2);
    }
    if (x3 != null) {
      $result.x3.addAll(x3);
    }
    if (x4 != null) {
      $result.x4.addAll(x4);
    }
    return $result;
  }
  TestTestMap._() : super();
  factory TestTestMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..m<$core.int, $core.int>(2, _omitFieldNames ? '' : 'x1', entryClassName: 'TestTestMap.X1Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..m<$fixnum.Int64, $core.int>(3, _omitFieldNames ? '' : 'x2', entryClassName: 'TestTestMap.X2Entry', keyFieldType: $pb.PbFieldType.O6, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..m<$core.String, $core.int>(4, _omitFieldNames ? '' : 'x3', entryClassName: 'TestTestMap.X3Entry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..m<$core.int, $core.int>(5, _omitFieldNames ? '' : 'x4', entryClassName: 'TestTestMap.X4Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestMap clone() => TestTestMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestMap copyWith(void Function(TestTestMap) updates) => super.copyWith((message) => updates(message as TestTestMap)) as TestTestMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestMap create() => TestTestMap._();
  TestTestMap createEmptyInstance() => create();
  static $pb.PbList<TestTestMap> createRepeated() => $pb.PbList<TestTestMap>();
  @$core.pragma('dart2js:noInline')
  static TestTestMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestMap>(create);
  static TestTestMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.int, $core.int> get x1 => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$fixnum.Int64, $core.int> get x2 => $_getMap(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.int> get x3 => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.int, $core.int> get x4 => $_getMap(4);
}

class TestTestMapper extends $pb.GeneratedMessage {
  factory TestTestMapper({
    $core.int? id,
    AudioType? audioType,
    vec2? v2,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (audioType != null) {
      $result.audioType = audioType;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    return $result;
  }
  TestTestMapper._() : super();
  factory TestTestMapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestMapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestMapper', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..e<AudioType>(2, _omitFieldNames ? '' : 'audioType', $pb.PbFieldType.OE, defaultOrMaker: AudioType.AudioType_UNKNOWN, valueOf: AudioType.valueOf, enumValues: AudioType.values)
    ..aOM<vec2>(3, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestMapper clone() => TestTestMapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestMapper copyWith(void Function(TestTestMapper) updates) => super.copyWith((message) => updates(message as TestTestMapper)) as TestTestMapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestMapper create() => TestTestMapper._();
  TestTestMapper createEmptyInstance() => create();
  static $pb.PbList<TestTestMapper> createRepeated() => $pb.PbList<TestTestMapper>();
  @$core.pragma('dart2js:noInline')
  static TestTestMapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestMapper>(create);
  static TestTestMapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  AudioType get audioType => $_getN(1);
  @$pb.TagNumber(2)
  set audioType(AudioType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudioType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioType() => clearField(2);

  @$pb.TagNumber(3)
  vec2 get v2 => $_getN(2);
  @$pb.TagNumber(3)
  set v2(vec2 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasV2() => $_has(2);
  @$pb.TagNumber(3)
  void clearV2() => clearField(3);
  @$pb.TagNumber(3)
  vec2 ensureV2() => $_ensure(2);
}

class TestTestMultiColumn extends $pb.GeneratedMessage {
  factory TestTestMultiColumn({
    $core.int? id,
    TestFoo? a,
    TestFoo? b,
    TestFoo? c,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (c != null) {
      $result.c = c;
    }
    return $result;
  }
  TestTestMultiColumn._() : super();
  factory TestTestMultiColumn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestMultiColumn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestMultiColumn', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<TestFoo>(2, _omitFieldNames ? '' : 'a', subBuilder: TestFoo.create)
    ..aOM<TestFoo>(3, _omitFieldNames ? '' : 'b', subBuilder: TestFoo.create)
    ..aOM<TestFoo>(4, _omitFieldNames ? '' : 'c', subBuilder: TestFoo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestMultiColumn clone() => TestTestMultiColumn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestMultiColumn copyWith(void Function(TestTestMultiColumn) updates) => super.copyWith((message) => updates(message as TestTestMultiColumn)) as TestTestMultiColumn;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestMultiColumn create() => TestTestMultiColumn._();
  TestTestMultiColumn createEmptyInstance() => create();
  static $pb.PbList<TestTestMultiColumn> createRepeated() => $pb.PbList<TestTestMultiColumn>();
  @$core.pragma('dart2js:noInline')
  static TestTestMultiColumn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestMultiColumn>(create);
  static TestTestMultiColumn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  TestFoo get a => $_getN(1);
  @$pb.TagNumber(2)
  set a(TestFoo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasA() => $_has(1);
  @$pb.TagNumber(2)
  void clearA() => clearField(2);
  @$pb.TagNumber(2)
  TestFoo ensureA() => $_ensure(1);

  @$pb.TagNumber(3)
  TestFoo get b => $_getN(2);
  @$pb.TagNumber(3)
  set b(TestFoo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => clearField(3);
  @$pb.TagNumber(3)
  TestFoo ensureB() => $_ensure(2);

  @$pb.TagNumber(4)
  TestFoo get c => $_getN(3);
  @$pb.TagNumber(4)
  set c(TestFoo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasC() => $_has(3);
  @$pb.TagNumber(4)
  void clearC() => clearField(4);
  @$pb.TagNumber(4)
  TestFoo ensureC() => $_ensure(3);
}

class TestTestNull extends $pb.GeneratedMessage {
  factory TestTestNull({
    $core.int? id,
    $core.int? x1,
    TestDemoEnum? x2,
    TestDemoType1? x3,
    TestDemoDynamic? x4,
    $core.String? s1,
    $core.String? s2,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    return $result;
  }
  TestTestNull._() : super();
  factory TestTestNull.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestNull.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestNull', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..e<TestDemoEnum>(3, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.OE, defaultOrMaker: TestDemoEnum.TestDemoEnum_NONE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values)
    ..aOM<TestDemoType1>(4, _omitFieldNames ? '' : 'x3', subBuilder: TestDemoType1.create)
    ..aOM<TestDemoDynamic>(5, _omitFieldNames ? '' : 'x4', subBuilder: TestDemoDynamic.create)
    ..aOS(6, _omitFieldNames ? '' : 's1')
    ..aOS(7, _omitFieldNames ? '' : 's2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestNull clone() => TestTestNull()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestNull copyWith(void Function(TestTestNull) updates) => super.copyWith((message) => updates(message as TestTestNull)) as TestTestNull;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestNull create() => TestTestNull._();
  TestTestNull createEmptyInstance() => create();
  static $pb.PbList<TestTestNull> createRepeated() => $pb.PbList<TestTestNull>();
  @$core.pragma('dart2js:noInline')
  static TestTestNull getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestNull>(create);
  static TestTestNull? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  TestDemoEnum get x2 => $_getN(2);
  @$pb.TagNumber(3)
  set x2(TestDemoEnum v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasX2() => $_has(2);
  @$pb.TagNumber(3)
  void clearX2() => clearField(3);

  @$pb.TagNumber(4)
  TestDemoType1 get x3 => $_getN(3);
  @$pb.TagNumber(4)
  set x3(TestDemoType1 v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasX3() => $_has(3);
  @$pb.TagNumber(4)
  void clearX3() => clearField(4);
  @$pb.TagNumber(4)
  TestDemoType1 ensureX3() => $_ensure(3);

  @$pb.TagNumber(5)
  TestDemoDynamic get x4 => $_getN(4);
  @$pb.TagNumber(5)
  set x4(TestDemoDynamic v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasX4() => $_has(4);
  @$pb.TagNumber(5)
  void clearX4() => clearField(5);
  @$pb.TagNumber(5)
  TestDemoDynamic ensureX4() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get s1 => $_getSZ(5);
  @$pb.TagNumber(6)
  set s1($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasS1() => $_has(5);
  @$pb.TagNumber(6)
  void clearS1() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get s2 => $_getSZ(6);
  @$pb.TagNumber(7)
  set s2($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasS2() => $_has(6);
  @$pb.TagNumber(7)
  void clearS2() => clearField(7);
}

class TestTestRange extends $pb.GeneratedMessage {
  factory TestTestRange({
    $core.int? id,
    $core.double? f1,
    $core.double? f2,
    $core.double? d1,
    $core.double? d2,
    $core.int? i1,
    $core.int? i2,
    $core.int? i3,
    $core.int? i4,
    $fixnum.Int64? l1,
    $fixnum.Int64? l2,
    $fixnum.Int64? l3,
    $fixnum.Int64? l4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (f1 != null) {
      $result.f1 = f1;
    }
    if (f2 != null) {
      $result.f2 = f2;
    }
    if (d1 != null) {
      $result.d1 = d1;
    }
    if (d2 != null) {
      $result.d2 = d2;
    }
    if (i1 != null) {
      $result.i1 = i1;
    }
    if (i2 != null) {
      $result.i2 = i2;
    }
    if (i3 != null) {
      $result.i3 = i3;
    }
    if (i4 != null) {
      $result.i4 = i4;
    }
    if (l1 != null) {
      $result.l1 = l1;
    }
    if (l2 != null) {
      $result.l2 = l2;
    }
    if (l3 != null) {
      $result.l3 = l3;
    }
    if (l4 != null) {
      $result.l4 = l4;
    }
    return $result;
  }
  TestTestRange._() : super();
  factory TestTestRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'f1', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'f2', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'd1', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'd2', $pb.PbFieldType.OD)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'i1', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'i2', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'i3', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'i4', $pb.PbFieldType.O3)
    ..aInt64(10, _omitFieldNames ? '' : 'l1')
    ..aInt64(11, _omitFieldNames ? '' : 'l2')
    ..aInt64(12, _omitFieldNames ? '' : 'l3')
    ..aInt64(13, _omitFieldNames ? '' : 'l4')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestRange clone() => TestTestRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestRange copyWith(void Function(TestTestRange) updates) => super.copyWith((message) => updates(message as TestTestRange)) as TestTestRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestRange create() => TestTestRange._();
  TestTestRange createEmptyInstance() => create();
  static $pb.PbList<TestTestRange> createRepeated() => $pb.PbList<TestTestRange>();
  @$core.pragma('dart2js:noInline')
  static TestTestRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestRange>(create);
  static TestTestRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get f1 => $_getN(1);
  @$pb.TagNumber(2)
  set f1($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasF1() => $_has(1);
  @$pb.TagNumber(2)
  void clearF1() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get f2 => $_getN(2);
  @$pb.TagNumber(3)
  set f2($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasF2() => $_has(2);
  @$pb.TagNumber(3)
  void clearF2() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get d1 => $_getN(3);
  @$pb.TagNumber(4)
  set d1($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasD1() => $_has(3);
  @$pb.TagNumber(4)
  void clearD1() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get d2 => $_getN(4);
  @$pb.TagNumber(5)
  set d2($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasD2() => $_has(4);
  @$pb.TagNumber(5)
  void clearD2() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get i1 => $_getIZ(5);
  @$pb.TagNumber(6)
  set i1($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasI1() => $_has(5);
  @$pb.TagNumber(6)
  void clearI1() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get i2 => $_getIZ(6);
  @$pb.TagNumber(7)
  set i2($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasI2() => $_has(6);
  @$pb.TagNumber(7)
  void clearI2() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get i3 => $_getIZ(7);
  @$pb.TagNumber(8)
  set i3($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasI3() => $_has(7);
  @$pb.TagNumber(8)
  void clearI3() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get i4 => $_getIZ(8);
  @$pb.TagNumber(9)
  set i4($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasI4() => $_has(8);
  @$pb.TagNumber(9)
  void clearI4() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get l1 => $_getI64(9);
  @$pb.TagNumber(10)
  set l1($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasL1() => $_has(9);
  @$pb.TagNumber(10)
  void clearL1() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get l2 => $_getI64(10);
  @$pb.TagNumber(11)
  set l2($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasL2() => $_has(10);
  @$pb.TagNumber(11)
  void clearL2() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get l3 => $_getI64(11);
  @$pb.TagNumber(12)
  set l3($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasL3() => $_has(11);
  @$pb.TagNumber(12)
  void clearL3() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get l4 => $_getI64(12);
  @$pb.TagNumber(13)
  set l4($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasL4() => $_has(12);
  @$pb.TagNumber(13)
  void clearL4() => clearField(13);
}

class TestTestRef extends $pb.GeneratedMessage {
  factory TestTestRef({
    $core.int? id,
    $core.int? x1,
    $core.int? x12,
    $core.int? x2,
    $core.int? x3,
    $core.int? x4,
    $core.Iterable<$core.int>? a1,
    $core.Iterable<$core.int>? a2,
    $core.Iterable<$core.int>? b1,
    $core.Iterable<$core.int>? b2,
    $core.Iterable<$core.int>? c1,
    $core.Iterable<$core.int>? c2,
    $core.Map<$core.int, $core.int>? d1,
    $core.Map<$core.int, $core.int>? d2,
    $core.int? e1,
    $fixnum.Int64? e2,
    $core.String? e3,
    $core.int? f1,
    $fixnum.Int64? f2,
    $core.String? f3,
    TestRefDynamicBase? s1,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x12 != null) {
      $result.x12 = x12;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (a1 != null) {
      $result.a1.addAll(a1);
    }
    if (a2 != null) {
      $result.a2.addAll(a2);
    }
    if (b1 != null) {
      $result.b1.addAll(b1);
    }
    if (b2 != null) {
      $result.b2.addAll(b2);
    }
    if (c1 != null) {
      $result.c1.addAll(c1);
    }
    if (c2 != null) {
      $result.c2.addAll(c2);
    }
    if (d1 != null) {
      $result.d1.addAll(d1);
    }
    if (d2 != null) {
      $result.d2.addAll(d2);
    }
    if (e1 != null) {
      $result.e1 = e1;
    }
    if (e2 != null) {
      $result.e2 = e2;
    }
    if (e3 != null) {
      $result.e3 = e3;
    }
    if (f1 != null) {
      $result.f1 = f1;
    }
    if (f2 != null) {
      $result.f2 = f2;
    }
    if (f3 != null) {
      $result.f3 = f3;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    return $result;
  }
  TestTestRef._() : super();
  factory TestTestRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x12', $pb.PbFieldType.O3, protoName: 'x1_2')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'a1', $pb.PbFieldType.K3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'a2', $pb.PbFieldType.K3)
    ..p<$core.int>(9, _omitFieldNames ? '' : 'b1', $pb.PbFieldType.K3)
    ..p<$core.int>(10, _omitFieldNames ? '' : 'b2', $pb.PbFieldType.K3)
    ..p<$core.int>(11, _omitFieldNames ? '' : 'c1', $pb.PbFieldType.K3)
    ..p<$core.int>(12, _omitFieldNames ? '' : 'c2', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(13, _omitFieldNames ? '' : 'd1', entryClassName: 'TestTestRef.D1Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..m<$core.int, $core.int>(14, _omitFieldNames ? '' : 'd2', entryClassName: 'TestTestRef.D2Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..a<$core.int>(15, _omitFieldNames ? '' : 'e1', $pb.PbFieldType.O3)
    ..aInt64(16, _omitFieldNames ? '' : 'e2')
    ..aOS(17, _omitFieldNames ? '' : 'e3')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'f1', $pb.PbFieldType.O3)
    ..aInt64(19, _omitFieldNames ? '' : 'f2')
    ..aOS(20, _omitFieldNames ? '' : 'f3')
    ..aOM<TestRefDynamicBase>(21, _omitFieldNames ? '' : 's1', subBuilder: TestRefDynamicBase.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestRef clone() => TestTestRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestRef copyWith(void Function(TestTestRef) updates) => super.copyWith((message) => updates(message as TestTestRef)) as TestTestRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestRef create() => TestTestRef._();
  TestTestRef createEmptyInstance() => create();
  static $pb.PbList<TestTestRef> createRepeated() => $pb.PbList<TestTestRef>();
  @$core.pragma('dart2js:noInline')
  static TestTestRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestRef>(create);
  static TestTestRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX1() => $_has(1);
  @$pb.TagNumber(2)
  void clearX1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x12 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x12($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX12() => $_has(2);
  @$pb.TagNumber(3)
  void clearX12() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x2 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x2($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX2() => $_has(3);
  @$pb.TagNumber(4)
  void clearX2() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get x3 => $_getIZ(4);
  @$pb.TagNumber(5)
  set x3($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX3() => $_has(4);
  @$pb.TagNumber(5)
  void clearX3() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get x4 => $_getIZ(5);
  @$pb.TagNumber(6)
  set x4($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX4() => $_has(5);
  @$pb.TagNumber(6)
  void clearX4() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get a1 => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get a2 => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.int> get b1 => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get b2 => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get c1 => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.int> get c2 => $_getList(11);

  @$pb.TagNumber(13)
  $core.Map<$core.int, $core.int> get d1 => $_getMap(12);

  @$pb.TagNumber(14)
  $core.Map<$core.int, $core.int> get d2 => $_getMap(13);

  @$pb.TagNumber(15)
  $core.int get e1 => $_getIZ(14);
  @$pb.TagNumber(15)
  set e1($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasE1() => $_has(14);
  @$pb.TagNumber(15)
  void clearE1() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get e2 => $_getI64(15);
  @$pb.TagNumber(16)
  set e2($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasE2() => $_has(15);
  @$pb.TagNumber(16)
  void clearE2() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get e3 => $_getSZ(16);
  @$pb.TagNumber(17)
  set e3($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasE3() => $_has(16);
  @$pb.TagNumber(17)
  void clearE3() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get f1 => $_getIZ(17);
  @$pb.TagNumber(18)
  set f1($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasF1() => $_has(17);
  @$pb.TagNumber(18)
  void clearF1() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get f2 => $_getI64(18);
  @$pb.TagNumber(19)
  set f2($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasF2() => $_has(18);
  @$pb.TagNumber(19)
  void clearF2() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get f3 => $_getSZ(19);
  @$pb.TagNumber(20)
  set f3($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasF3() => $_has(19);
  @$pb.TagNumber(20)
  void clearF3() => clearField(20);

  @$pb.TagNumber(21)
  TestRefDynamicBase get s1 => $_getN(20);
  @$pb.TagNumber(21)
  set s1(TestRefDynamicBase v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasS1() => $_has(20);
  @$pb.TagNumber(21)
  void clearS1() => clearField(21);
  @$pb.TagNumber(21)
  TestRefDynamicBase ensureS1() => $_ensure(20);
}

class TestTestRow extends $pb.GeneratedMessage {
  factory TestTestRow({
    $core.int? x,
    $core.bool? y,
    $core.String? z,
    TestTest3? a,
    $core.Iterable<$core.int>? b,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b.addAll(b);
    }
    return $result;
  }
  TestTestRow._() : super();
  factory TestTestRow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestRow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestRow', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'y')
    ..aOS(3, _omitFieldNames ? '' : 'z')
    ..aOM<TestTest3>(4, _omitFieldNames ? '' : 'a', subBuilder: TestTest3.create)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'b', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestRow clone() => TestTestRow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestRow copyWith(void Function(TestTestRow) updates) => super.copyWith((message) => updates(message as TestTestRow)) as TestTestRow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestRow create() => TestTestRow._();
  TestTestRow createEmptyInstance() => create();
  static $pb.PbList<TestTestRow> createRepeated() => $pb.PbList<TestTestRow>();
  @$core.pragma('dart2js:noInline')
  static TestTestRow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestRow>(create);
  static TestTestRow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get y => $_getBF(1);
  @$pb.TagNumber(2)
  set y($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get z => $_getSZ(2);
  @$pb.TagNumber(3)
  set z($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);

  @$pb.TagNumber(4)
  TestTest3 get a => $_getN(3);
  @$pb.TagNumber(4)
  set a(TestTest3 v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasA() => $_has(3);
  @$pb.TagNumber(4)
  void clearA() => clearField(4);
  @$pb.TagNumber(4)
  TestTest3 ensureA() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get b => $_getList(4);
}

class TestTestScriptableObject extends $pb.GeneratedMessage {
  factory TestTestScriptableObject({
    $core.int? id,
    $core.String? desc,
    $core.double? rate,
    $core.int? num,
    vec2? v2,
    vec3? v3,
    vec4? v4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (rate != null) {
      $result.rate = rate;
    }
    if (num != null) {
      $result.num = num;
    }
    if (v2 != null) {
      $result.v2 = v2;
    }
    if (v3 != null) {
      $result.v3 = v3;
    }
    if (v4 != null) {
      $result.v4 = v4;
    }
    return $result;
  }
  TestTestScriptableObject._() : super();
  factory TestTestScriptableObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestScriptableObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestScriptableObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rate', $pb.PbFieldType.OF)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'num', $pb.PbFieldType.O3)
    ..aOM<vec2>(5, _omitFieldNames ? '' : 'v2', subBuilder: vec2.create)
    ..aOM<vec3>(6, _omitFieldNames ? '' : 'v3', subBuilder: vec3.create)
    ..aOM<vec4>(7, _omitFieldNames ? '' : 'v4', subBuilder: vec4.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestScriptableObject clone() => TestTestScriptableObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestScriptableObject copyWith(void Function(TestTestScriptableObject) updates) => super.copyWith((message) => updates(message as TestTestScriptableObject)) as TestTestScriptableObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestScriptableObject create() => TestTestScriptableObject._();
  TestTestScriptableObject createEmptyInstance() => create();
  static $pb.PbList<TestTestScriptableObject> createRepeated() => $pb.PbList<TestTestScriptableObject>();
  @$core.pragma('dart2js:noInline')
  static TestTestScriptableObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestScriptableObject>(create);
  static TestTestScriptableObject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rate => $_getN(2);
  @$pb.TagNumber(3)
  set rate($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);

  @$pb.TagNumber(5)
  vec2 get v2 => $_getN(4);
  @$pb.TagNumber(5)
  set v2(vec2 v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasV2() => $_has(4);
  @$pb.TagNumber(5)
  void clearV2() => clearField(5);
  @$pb.TagNumber(5)
  vec2 ensureV2() => $_ensure(4);

  @$pb.TagNumber(6)
  vec3 get v3 => $_getN(5);
  @$pb.TagNumber(6)
  set v3(vec3 v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasV3() => $_has(5);
  @$pb.TagNumber(6)
  void clearV3() => clearField(6);
  @$pb.TagNumber(6)
  vec3 ensureV3() => $_ensure(5);

  @$pb.TagNumber(7)
  vec4 get v4 => $_getN(6);
  @$pb.TagNumber(7)
  set v4(vec4 v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasV4() => $_has(6);
  @$pb.TagNumber(7)
  void clearV4() => clearField(7);
  @$pb.TagNumber(7)
  vec4 ensureV4() => $_ensure(6);
}

class TestTestSet extends $pb.GeneratedMessage {
  factory TestTestSet({
    $core.int? id,
    $core.String? x0,
    $core.Iterable<$core.int>? x1,
    $core.Iterable<$fixnum.Int64>? x2,
    $core.Iterable<$core.String>? x3,
    $core.Iterable<TestDemoEnum>? x4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x0 != null) {
      $result.x0 = x0;
    }
    if (x1 != null) {
      $result.x1.addAll(x1);
    }
    if (x2 != null) {
      $result.x2.addAll(x2);
    }
    if (x3 != null) {
      $result.x3.addAll(x3);
    }
    if (x4 != null) {
      $result.x4.addAll(x4);
    }
    return $result;
  }
  TestTestSet._() : super();
  factory TestTestSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'x0')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.K3)
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.K6)
    ..pPS(5, _omitFieldNames ? '' : 'x3')
    ..pc<TestDemoEnum>(6, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.PE, valueOf: TestDemoEnum.valueOf, enumValues: TestDemoEnum.values, defaultEnumValue: TestDemoEnum.TestDemoEnum_NONE)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestSet clone() => TestTestSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestSet copyWith(void Function(TestTestSet) updates) => super.copyWith((message) => updates(message as TestTestSet)) as TestTestSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestSet create() => TestTestSet._();
  TestTestSet createEmptyInstance() => create();
  static $pb.PbList<TestTestSet> createRepeated() => $pb.PbList<TestTestSet>();
  @$core.pragma('dart2js:noInline')
  static TestTestSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestSet>(create);
  static TestTestSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get x0 => $_getSZ(1);
  @$pb.TagNumber(2)
  set x0($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX0() => $_has(1);
  @$pb.TagNumber(2)
  void clearX0() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get x1 => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get x2 => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get x3 => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<TestDemoEnum> get x4 => $_getList(5);
}

class TestTestSize extends $pb.GeneratedMessage {
  factory TestTestSize({
    $core.int? id,
    $core.Iterable<$core.int>? x1,
    $core.Iterable<$core.int>? x2,
    $core.Iterable<$core.int>? x3,
    $core.Map<$core.int, $core.int>? x4,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (x1 != null) {
      $result.x1.addAll(x1);
    }
    if (x2 != null) {
      $result.x2.addAll(x2);
    }
    if (x3 != null) {
      $result.x3.addAll(x3);
    }
    if (x4 != null) {
      $result.x4.addAll(x4);
    }
    return $result;
  }
  TestTestSize._() : super();
  factory TestTestSize.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestSize.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestSize', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'x1', $pb.PbFieldType.K3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.K3)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(5, _omitFieldNames ? '' : 'x4', entryClassName: 'TestTestSize.X4Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestSize clone() => TestTestSize()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestSize copyWith(void Function(TestTestSize) updates) => super.copyWith((message) => updates(message as TestTestSize)) as TestTestSize;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestSize create() => TestTestSize._();
  TestTestSize createEmptyInstance() => create();
  static $pb.PbList<TestTestSize> createRepeated() => $pb.PbList<TestTestSize>();
  @$core.pragma('dart2js:noInline')
  static TestTestSize getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestSize>(create);
  static TestTestSize? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get x1 => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get x2 => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get x3 => $_getList(3);

  @$pb.TagNumber(5)
  $core.Map<$core.int, $core.int> get x4 => $_getMap(4);
}

class TestTestString extends $pb.GeneratedMessage {
  factory TestTestString({
    $core.String? id,
    $core.String? s1,
    $core.String? s2,
    TestCompactString? cs1,
    TestCompactString? cs2,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    if (cs1 != null) {
      $result.cs1 = cs1;
    }
    if (cs2 != null) {
      $result.cs2 = cs2;
    }
    return $result;
  }
  TestTestString._() : super();
  factory TestTestString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestString', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 's1')
    ..aOS(3, _omitFieldNames ? '' : 's2')
    ..aOM<TestCompactString>(4, _omitFieldNames ? '' : 'cs1', subBuilder: TestCompactString.create)
    ..aOM<TestCompactString>(5, _omitFieldNames ? '' : 'cs2', subBuilder: TestCompactString.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestString clone() => TestTestString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestString copyWith(void Function(TestTestString) updates) => super.copyWith((message) => updates(message as TestTestString)) as TestTestString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestString create() => TestTestString._();
  TestTestString createEmptyInstance() => create();
  static $pb.PbList<TestTestString> createRepeated() => $pb.PbList<TestTestString>();
  @$core.pragma('dart2js:noInline')
  static TestTestString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestString>(create);
  static TestTestString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get s1 => $_getSZ(1);
  @$pb.TagNumber(2)
  set s1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasS1() => $_has(1);
  @$pb.TagNumber(2)
  void clearS1() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get s2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set s2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasS2() => $_has(2);
  @$pb.TagNumber(3)
  void clearS2() => clearField(3);

  @$pb.TagNumber(4)
  TestCompactString get cs1 => $_getN(3);
  @$pb.TagNumber(4)
  set cs1(TestCompactString v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCs1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCs1() => clearField(4);
  @$pb.TagNumber(4)
  TestCompactString ensureCs1() => $_ensure(3);

  @$pb.TagNumber(5)
  TestCompactString get cs2 => $_getN(4);
  @$pb.TagNumber(5)
  set cs2(TestCompactString v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCs2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCs2() => clearField(5);
  @$pb.TagNumber(5)
  TestCompactString ensureCs2() => $_ensure(4);
}

class TestTestUeType extends $pb.GeneratedMessage {
  factory TestTestUeType({
    $core.bool? x1,
    $core.int? x2,
    $core.int? x3,
    $core.int? x4,
    $fixnum.Int64? x5,
    $core.double? x6,
    $core.String? x10,
    TestDemoType1? x12,
    TestETestUeType? x13,
    $fixnum.Int64? t1,
    $core.Iterable<$core.int>? k1,
    $core.Iterable<$core.int>? k2,
    $core.Iterable<$core.int>? k5,
    $core.Map<$core.int, $core.int>? k8,
    $core.Iterable<TestDemoE2>? k9,
  }) {
    final $result = create();
    if (x1 != null) {
      $result.x1 = x1;
    }
    if (x2 != null) {
      $result.x2 = x2;
    }
    if (x3 != null) {
      $result.x3 = x3;
    }
    if (x4 != null) {
      $result.x4 = x4;
    }
    if (x5 != null) {
      $result.x5 = x5;
    }
    if (x6 != null) {
      $result.x6 = x6;
    }
    if (x10 != null) {
      $result.x10 = x10;
    }
    if (x12 != null) {
      $result.x12 = x12;
    }
    if (x13 != null) {
      $result.x13 = x13;
    }
    if (t1 != null) {
      $result.t1 = t1;
    }
    if (k1 != null) {
      $result.k1.addAll(k1);
    }
    if (k2 != null) {
      $result.k2.addAll(k2);
    }
    if (k5 != null) {
      $result.k5.addAll(k5);
    }
    if (k8 != null) {
      $result.k8.addAll(k8);
    }
    if (k9 != null) {
      $result.k9.addAll(k9);
    }
    return $result;
  }
  TestTestUeType._() : super();
  factory TestTestUeType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTestUeType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTestUeType', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'x1')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'x2', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'x3', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'x4', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'x5')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'x6', $pb.PbFieldType.OF)
    ..aOS(7, _omitFieldNames ? '' : 'x10')
    ..aOM<TestDemoType1>(8, _omitFieldNames ? '' : 'x12', subBuilder: TestDemoType1.create)
    ..e<TestETestUeType>(9, _omitFieldNames ? '' : 'x13', $pb.PbFieldType.OE, defaultOrMaker: TestETestUeType.TestETestUeType_WHITE, valueOf: TestETestUeType.valueOf, enumValues: TestETestUeType.values)
    ..aInt64(10, _omitFieldNames ? '' : 't1')
    ..p<$core.int>(11, _omitFieldNames ? '' : 'k1', $pb.PbFieldType.K3)
    ..p<$core.int>(12, _omitFieldNames ? '' : 'k2', $pb.PbFieldType.K3)
    ..p<$core.int>(13, _omitFieldNames ? '' : 'k5', $pb.PbFieldType.K3)
    ..m<$core.int, $core.int>(14, _omitFieldNames ? '' : 'k8', entryClassName: 'TestTestUeType.K8Entry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('cfg'))
    ..pc<TestDemoE2>(15, _omitFieldNames ? '' : 'k9', $pb.PbFieldType.PM, subBuilder: TestDemoE2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTestUeType clone() => TestTestUeType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTestUeType copyWith(void Function(TestTestUeType) updates) => super.copyWith((message) => updates(message as TestTestUeType)) as TestTestUeType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTestUeType create() => TestTestUeType._();
  TestTestUeType createEmptyInstance() => create();
  static $pb.PbList<TestTestUeType> createRepeated() => $pb.PbList<TestTestUeType>();
  @$core.pragma('dart2js:noInline')
  static TestTestUeType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTestUeType>(create);
  static TestTestUeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get x1 => $_getBF(0);
  @$pb.TagNumber(1)
  set x1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX1() => $_has(0);
  @$pb.TagNumber(1)
  void clearX1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set x2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX2() => $_has(1);
  @$pb.TagNumber(2)
  void clearX2() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get x3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set x3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX3() => $_has(2);
  @$pb.TagNumber(3)
  void clearX3() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get x4 => $_getIZ(3);
  @$pb.TagNumber(4)
  set x4($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX4() => $_has(3);
  @$pb.TagNumber(4)
  void clearX4() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get x5 => $_getI64(4);
  @$pb.TagNumber(5)
  set x5($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasX5() => $_has(4);
  @$pb.TagNumber(5)
  void clearX5() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get x6 => $_getN(5);
  @$pb.TagNumber(6)
  set x6($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX6() => $_has(5);
  @$pb.TagNumber(6)
  void clearX6() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get x10 => $_getSZ(6);
  @$pb.TagNumber(7)
  set x10($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasX10() => $_has(6);
  @$pb.TagNumber(7)
  void clearX10() => clearField(7);

  @$pb.TagNumber(8)
  TestDemoType1 get x12 => $_getN(7);
  @$pb.TagNumber(8)
  set x12(TestDemoType1 v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasX12() => $_has(7);
  @$pb.TagNumber(8)
  void clearX12() => clearField(8);
  @$pb.TagNumber(8)
  TestDemoType1 ensureX12() => $_ensure(7);

  @$pb.TagNumber(9)
  TestETestUeType get x13 => $_getN(8);
  @$pb.TagNumber(9)
  set x13(TestETestUeType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasX13() => $_has(8);
  @$pb.TagNumber(9)
  void clearX13() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get t1 => $_getI64(9);
  @$pb.TagNumber(10)
  set t1($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasT1() => $_has(9);
  @$pb.TagNumber(10)
  void clearT1() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get k1 => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.int> get k2 => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get k5 => $_getList(12);

  @$pb.TagNumber(14)
  $core.Map<$core.int, $core.int> get k8 => $_getMap(13);

  @$pb.TagNumber(15)
  $core.List<TestDemoE2> get k9 => $_getList(14);
}

class vec2 extends $pb.GeneratedMessage {
  factory vec2({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  vec2._() : super();
  factory vec2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory vec2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'vec2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  vec2 clone() => vec2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  vec2 copyWith(void Function(vec2) updates) => super.copyWith((message) => updates(message as vec2)) as vec2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static vec2 create() => vec2._();
  vec2 createEmptyInstance() => create();
  static $pb.PbList<vec2> createRepeated() => $pb.PbList<vec2>();
  @$core.pragma('dart2js:noInline')
  static vec2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<vec2>(create);
  static vec2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class vec3 extends $pb.GeneratedMessage {
  factory vec3({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    return $result;
  }
  vec3._() : super();
  factory vec3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory vec3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'vec3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  vec3 clone() => vec3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  vec3 copyWith(void Function(vec3) updates) => super.copyWith((message) => updates(message as vec3)) as vec3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static vec3 create() => vec3._();
  vec3 createEmptyInstance() => create();
  static $pb.PbList<vec3> createRepeated() => $pb.PbList<vec3>();
  @$core.pragma('dart2js:noInline')
  static vec3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<vec3>(create);
  static vec3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class vec4 extends $pb.GeneratedMessage {
  factory vec4({
    $core.double? x,
    $core.double? y,
    $core.double? z,
    $core.double? w,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    if (w != null) {
      $result.w = w;
    }
    return $result;
  }
  vec4._() : super();
  factory vec4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory vec4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'vec4', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'w', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  vec4 clone() => vec4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  vec4 copyWith(void Function(vec4) updates) => super.copyWith((message) => updates(message as vec4)) as vec4;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static vec4 create() => vec4._();
  vec4 createEmptyInstance() => create();
  static $pb.PbList<vec4> createRepeated() => $pb.PbList<vec4>();
  @$core.pragma('dart2js:noInline')
  static vec4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<vec4>(create);
  static vec4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get w => $_getN(3);
  @$pb.TagNumber(4)
  set w($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasW() => $_has(3);
  @$pb.TagNumber(4)
  void clearW() => clearField(4);
}

class AiTbBlackboard extends $pb.GeneratedMessage {
  factory AiTbBlackboard({
    $core.Iterable<AiBlackboard>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  AiTbBlackboard._() : super();
  factory AiTbBlackboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiTbBlackboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiTbBlackboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<AiBlackboard>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: AiBlackboard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiTbBlackboard clone() => AiTbBlackboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiTbBlackboard copyWith(void Function(AiTbBlackboard) updates) => super.copyWith((message) => updates(message as AiTbBlackboard)) as AiTbBlackboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiTbBlackboard create() => AiTbBlackboard._();
  AiTbBlackboard createEmptyInstance() => create();
  static $pb.PbList<AiTbBlackboard> createRepeated() => $pb.PbList<AiTbBlackboard>();
  @$core.pragma('dart2js:noInline')
  static AiTbBlackboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiTbBlackboard>(create);
  static AiTbBlackboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AiBlackboard> get dataList => $_getList(0);
}

class AiTbBehaviorTree extends $pb.GeneratedMessage {
  factory AiTbBehaviorTree({
    $core.Iterable<AiBehaviorTree>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  AiTbBehaviorTree._() : super();
  factory AiTbBehaviorTree.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiTbBehaviorTree.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiTbBehaviorTree', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<AiBehaviorTree>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: AiBehaviorTree.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiTbBehaviorTree clone() => AiTbBehaviorTree()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiTbBehaviorTree copyWith(void Function(AiTbBehaviorTree) updates) => super.copyWith((message) => updates(message as AiTbBehaviorTree)) as AiTbBehaviorTree;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiTbBehaviorTree create() => AiTbBehaviorTree._();
  AiTbBehaviorTree createEmptyInstance() => create();
  static $pb.PbList<AiTbBehaviorTree> createRepeated() => $pb.PbList<AiTbBehaviorTree>();
  @$core.pragma('dart2js:noInline')
  static AiTbBehaviorTree getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiTbBehaviorTree>(create);
  static AiTbBehaviorTree? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AiBehaviorTree> get dataList => $_getList(0);
}

class CommonTbGlobalConfig extends $pb.GeneratedMessage {
  factory CommonTbGlobalConfig({
    $core.Iterable<CommonGlobalConfig>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  CommonTbGlobalConfig._() : super();
  factory CommonTbGlobalConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonTbGlobalConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonTbGlobalConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<CommonGlobalConfig>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: CommonGlobalConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonTbGlobalConfig clone() => CommonTbGlobalConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonTbGlobalConfig copyWith(void Function(CommonTbGlobalConfig) updates) => super.copyWith((message) => updates(message as CommonTbGlobalConfig)) as CommonTbGlobalConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonTbGlobalConfig create() => CommonTbGlobalConfig._();
  CommonTbGlobalConfig createEmptyInstance() => create();
  static $pb.PbList<CommonTbGlobalConfig> createRepeated() => $pb.PbList<CommonTbGlobalConfig>();
  @$core.pragma('dart2js:noInline')
  static CommonTbGlobalConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonTbGlobalConfig>(create);
  static CommonTbGlobalConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CommonGlobalConfig> get dataList => $_getList(0);
}

class ItemTbItem extends $pb.GeneratedMessage {
  factory ItemTbItem({
    $core.Iterable<ItemItem>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  ItemTbItem._() : super();
  factory ItemTbItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemTbItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ItemTbItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<ItemItem>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: ItemItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemTbItem clone() => ItemTbItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemTbItem copyWith(void Function(ItemTbItem) updates) => super.copyWith((message) => updates(message as ItemTbItem)) as ItemTbItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemTbItem create() => ItemTbItem._();
  ItemTbItem createEmptyInstance() => create();
  static $pb.PbList<ItemTbItem> createRepeated() => $pb.PbList<ItemTbItem>();
  @$core.pragma('dart2js:noInline')
  static ItemTbItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemTbItem>(create);
  static ItemTbItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ItemItem> get dataList => $_getList(0);
}

class L10nTbL10NDemo extends $pb.GeneratedMessage {
  factory L10nTbL10NDemo({
    $core.Iterable<L10nL10NDemo>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  L10nTbL10NDemo._() : super();
  factory L10nTbL10NDemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory L10nTbL10NDemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'L10nTbL10NDemo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<L10nL10NDemo>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: L10nL10NDemo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  L10nTbL10NDemo clone() => L10nTbL10NDemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  L10nTbL10NDemo copyWith(void Function(L10nTbL10NDemo) updates) => super.copyWith((message) => updates(message as L10nTbL10NDemo)) as L10nTbL10NDemo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static L10nTbL10NDemo create() => L10nTbL10NDemo._();
  L10nTbL10NDemo createEmptyInstance() => create();
  static $pb.PbList<L10nTbL10NDemo> createRepeated() => $pb.PbList<L10nTbL10NDemo>();
  @$core.pragma('dart2js:noInline')
  static L10nTbL10NDemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<L10nTbL10NDemo>(create);
  static L10nTbL10NDemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<L10nL10NDemo> get dataList => $_getList(0);
}

class L10nTbPatchDemo extends $pb.GeneratedMessage {
  factory L10nTbPatchDemo({
    $core.Iterable<L10nPatchDemo>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  L10nTbPatchDemo._() : super();
  factory L10nTbPatchDemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory L10nTbPatchDemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'L10nTbPatchDemo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<L10nPatchDemo>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: L10nPatchDemo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  L10nTbPatchDemo clone() => L10nTbPatchDemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  L10nTbPatchDemo copyWith(void Function(L10nTbPatchDemo) updates) => super.copyWith((message) => updates(message as L10nTbPatchDemo)) as L10nTbPatchDemo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static L10nTbPatchDemo create() => L10nTbPatchDemo._();
  L10nTbPatchDemo createEmptyInstance() => create();
  static $pb.PbList<L10nTbPatchDemo> createRepeated() => $pb.PbList<L10nTbPatchDemo>();
  @$core.pragma('dart2js:noInline')
  static L10nTbPatchDemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<L10nTbPatchDemo>(create);
  static L10nTbPatchDemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<L10nPatchDemo> get dataList => $_getList(0);
}

class TagTbTestTag extends $pb.GeneratedMessage {
  factory TagTbTestTag({
    $core.Iterable<TagTestTag>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TagTbTestTag._() : super();
  factory TagTbTestTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagTbTestTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TagTbTestTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TagTestTag>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TagTestTag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagTbTestTag clone() => TagTbTestTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagTbTestTag copyWith(void Function(TagTbTestTag) updates) => super.copyWith((message) => updates(message as TagTbTestTag)) as TagTbTestTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagTbTestTag create() => TagTbTestTag._();
  TagTbTestTag createEmptyInstance() => create();
  static $pb.PbList<TagTbTestTag> createRepeated() => $pb.PbList<TagTbTestTag>();
  @$core.pragma('dart2js:noInline')
  static TagTbTestTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagTbTestTag>(create);
  static TagTbTestTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TagTestTag> get dataList => $_getList(0);
}

class TestTbFullTypes extends $pb.GeneratedMessage {
  factory TestTbFullTypes({
    $core.Iterable<TestDemoType2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbFullTypes._() : super();
  factory TestTbFullTypes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbFullTypes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbFullTypes', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoType2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoType2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbFullTypes clone() => TestTbFullTypes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbFullTypes copyWith(void Function(TestTbFullTypes) updates) => super.copyWith((message) => updates(message as TestTbFullTypes)) as TestTbFullTypes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbFullTypes create() => TestTbFullTypes._();
  TestTbFullTypes createEmptyInstance() => create();
  static $pb.PbList<TestTbFullTypes> createRepeated() => $pb.PbList<TestTbFullTypes>();
  @$core.pragma('dart2js:noInline')
  static TestTbFullTypes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbFullTypes>(create);
  static TestTbFullTypes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoType2> get dataList => $_getList(0);
}

class TestTbSingleton extends $pb.GeneratedMessage {
  factory TestTbSingleton({
    $core.Iterable<TestDemoSingletonType>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbSingleton._() : super();
  factory TestTbSingleton.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbSingleton.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbSingleton', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoSingletonType>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoSingletonType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbSingleton clone() => TestTbSingleton()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbSingleton copyWith(void Function(TestTbSingleton) updates) => super.copyWith((message) => updates(message as TestTbSingleton)) as TestTbSingleton;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbSingleton create() => TestTbSingleton._();
  TestTbSingleton createEmptyInstance() => create();
  static $pb.PbList<TestTbSingleton> createRepeated() => $pb.PbList<TestTbSingleton>();
  @$core.pragma('dart2js:noInline')
  static TestTbSingleton getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbSingleton>(create);
  static TestTbSingleton? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoSingletonType> get dataList => $_getList(0);
}

class TestTbNotIndexList extends $pb.GeneratedMessage {
  factory TestTbNotIndexList({
    $core.Iterable<TestNotIndexList>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbNotIndexList._() : super();
  factory TestTbNotIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbNotIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbNotIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestNotIndexList>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestNotIndexList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbNotIndexList clone() => TestTbNotIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbNotIndexList copyWith(void Function(TestTbNotIndexList) updates) => super.copyWith((message) => updates(message as TestTbNotIndexList)) as TestTbNotIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbNotIndexList create() => TestTbNotIndexList._();
  TestTbNotIndexList createEmptyInstance() => create();
  static $pb.PbList<TestTbNotIndexList> createRepeated() => $pb.PbList<TestTbNotIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestTbNotIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbNotIndexList>(create);
  static TestTbNotIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestNotIndexList> get dataList => $_getList(0);
}

class TestTbMultiUnionIndexList extends $pb.GeneratedMessage {
  factory TestTbMultiUnionIndexList({
    $core.Iterable<TestMultiUnionIndexList>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbMultiUnionIndexList._() : super();
  factory TestTbMultiUnionIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbMultiUnionIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbMultiUnionIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestMultiUnionIndexList>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestMultiUnionIndexList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbMultiUnionIndexList clone() => TestTbMultiUnionIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbMultiUnionIndexList copyWith(void Function(TestTbMultiUnionIndexList) updates) => super.copyWith((message) => updates(message as TestTbMultiUnionIndexList)) as TestTbMultiUnionIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbMultiUnionIndexList create() => TestTbMultiUnionIndexList._();
  TestTbMultiUnionIndexList createEmptyInstance() => create();
  static $pb.PbList<TestTbMultiUnionIndexList> createRepeated() => $pb.PbList<TestTbMultiUnionIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestTbMultiUnionIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbMultiUnionIndexList>(create);
  static TestTbMultiUnionIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestMultiUnionIndexList> get dataList => $_getList(0);
}

class TestTbMultiIndexList extends $pb.GeneratedMessage {
  factory TestTbMultiIndexList({
    $core.Iterable<TestMultiIndexList>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbMultiIndexList._() : super();
  factory TestTbMultiIndexList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbMultiIndexList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbMultiIndexList', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestMultiIndexList>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestMultiIndexList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbMultiIndexList clone() => TestTbMultiIndexList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbMultiIndexList copyWith(void Function(TestTbMultiIndexList) updates) => super.copyWith((message) => updates(message as TestTbMultiIndexList)) as TestTbMultiIndexList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbMultiIndexList create() => TestTbMultiIndexList._();
  TestTbMultiIndexList createEmptyInstance() => create();
  static $pb.PbList<TestTbMultiIndexList> createRepeated() => $pb.PbList<TestTbMultiIndexList>();
  @$core.pragma('dart2js:noInline')
  static TestTbMultiIndexList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbMultiIndexList>(create);
  static TestTbMultiIndexList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestMultiIndexList> get dataList => $_getList(0);
}

class TestTbDataFromMisc extends $pb.GeneratedMessage {
  factory TestTbDataFromMisc({
    $core.Iterable<TestDemoType2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDataFromMisc._() : super();
  factory TestTbDataFromMisc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDataFromMisc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDataFromMisc', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoType2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoType2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDataFromMisc clone() => TestTbDataFromMisc()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDataFromMisc copyWith(void Function(TestTbDataFromMisc) updates) => super.copyWith((message) => updates(message as TestTbDataFromMisc)) as TestTbDataFromMisc;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDataFromMisc create() => TestTbDataFromMisc._();
  TestTbDataFromMisc createEmptyInstance() => create();
  static $pb.PbList<TestTbDataFromMisc> createRepeated() => $pb.PbList<TestTbDataFromMisc>();
  @$core.pragma('dart2js:noInline')
  static TestTbDataFromMisc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDataFromMisc>(create);
  static TestTbDataFromMisc? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoType2> get dataList => $_getList(0);
}

class TestTbMultiRowRecord extends $pb.GeneratedMessage {
  factory TestTbMultiRowRecord({
    $core.Iterable<TestMultiRowRecord>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbMultiRowRecord._() : super();
  factory TestTbMultiRowRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbMultiRowRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbMultiRowRecord', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestMultiRowRecord>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestMultiRowRecord.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbMultiRowRecord clone() => TestTbMultiRowRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbMultiRowRecord copyWith(void Function(TestTbMultiRowRecord) updates) => super.copyWith((message) => updates(message as TestTbMultiRowRecord)) as TestTbMultiRowRecord;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbMultiRowRecord create() => TestTbMultiRowRecord._();
  TestTbMultiRowRecord createEmptyInstance() => create();
  static $pb.PbList<TestTbMultiRowRecord> createRepeated() => $pb.PbList<TestTbMultiRowRecord>();
  @$core.pragma('dart2js:noInline')
  static TestTbMultiRowRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbMultiRowRecord>(create);
  static TestTbMultiRowRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestMultiRowRecord> get dataList => $_getList(0);
}

class TestTbTestMultiColumn extends $pb.GeneratedMessage {
  factory TestTbTestMultiColumn({
    $core.Iterable<TestTestMultiColumn>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestMultiColumn._() : super();
  factory TestTbTestMultiColumn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestMultiColumn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestMultiColumn', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestMultiColumn>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestMultiColumn.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestMultiColumn clone() => TestTbTestMultiColumn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestMultiColumn copyWith(void Function(TestTbTestMultiColumn) updates) => super.copyWith((message) => updates(message as TestTbTestMultiColumn)) as TestTbTestMultiColumn;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestMultiColumn create() => TestTbTestMultiColumn._();
  TestTbTestMultiColumn createEmptyInstance() => create();
  static $pb.PbList<TestTbTestMultiColumn> createRepeated() => $pb.PbList<TestTbTestMultiColumn>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestMultiColumn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestMultiColumn>(create);
  static TestTbTestMultiColumn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestMultiColumn> get dataList => $_getList(0);
}

class TestTbMultiRowTitle extends $pb.GeneratedMessage {
  factory TestTbMultiRowTitle({
    $core.Iterable<TestMultiRowTitle>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbMultiRowTitle._() : super();
  factory TestTbMultiRowTitle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbMultiRowTitle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbMultiRowTitle', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestMultiRowTitle>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestMultiRowTitle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbMultiRowTitle clone() => TestTbMultiRowTitle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbMultiRowTitle copyWith(void Function(TestTbMultiRowTitle) updates) => super.copyWith((message) => updates(message as TestTbMultiRowTitle)) as TestTbMultiRowTitle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbMultiRowTitle create() => TestTbMultiRowTitle._();
  TestTbMultiRowTitle createEmptyInstance() => create();
  static $pb.PbList<TestTbMultiRowTitle> createRepeated() => $pb.PbList<TestTbMultiRowTitle>();
  @$core.pragma('dart2js:noInline')
  static TestTbMultiRowTitle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbMultiRowTitle>(create);
  static TestTbMultiRowTitle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestMultiRowTitle> get dataList => $_getList(0);
}

class TestTbTestNull extends $pb.GeneratedMessage {
  factory TestTbTestNull({
    $core.Iterable<TestTestNull>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestNull._() : super();
  factory TestTbTestNull.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestNull.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestNull', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestNull>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestNull.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestNull clone() => TestTbTestNull()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestNull copyWith(void Function(TestTbTestNull) updates) => super.copyWith((message) => updates(message as TestTbTestNull)) as TestTbTestNull;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestNull create() => TestTbTestNull._();
  TestTbTestNull createEmptyInstance() => create();
  static $pb.PbList<TestTbTestNull> createRepeated() => $pb.PbList<TestTbTestNull>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestNull getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestNull>(create);
  static TestTbTestNull? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestNull> get dataList => $_getList(0);
}

class TestTbDemoPrimitive extends $pb.GeneratedMessage {
  factory TestTbDemoPrimitive({
    $core.Iterable<TestDemoPrimitiveTypesTable>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDemoPrimitive._() : super();
  factory TestTbDemoPrimitive.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDemoPrimitive.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDemoPrimitive', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoPrimitiveTypesTable>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoPrimitiveTypesTable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDemoPrimitive clone() => TestTbDemoPrimitive()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDemoPrimitive copyWith(void Function(TestTbDemoPrimitive) updates) => super.copyWith((message) => updates(message as TestTbDemoPrimitive)) as TestTbDemoPrimitive;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDemoPrimitive create() => TestTbDemoPrimitive._();
  TestTbDemoPrimitive createEmptyInstance() => create();
  static $pb.PbList<TestTbDemoPrimitive> createRepeated() => $pb.PbList<TestTbDemoPrimitive>();
  @$core.pragma('dart2js:noInline')
  static TestTbDemoPrimitive getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDemoPrimitive>(create);
  static TestTbDemoPrimitive? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoPrimitiveTypesTable> get dataList => $_getList(0);
}

class TestTbTestString extends $pb.GeneratedMessage {
  factory TestTbTestString({
    $core.Iterable<TestTestString>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestString._() : super();
  factory TestTbTestString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestString', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestString>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestString.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestString clone() => TestTbTestString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestString copyWith(void Function(TestTbTestString) updates) => super.copyWith((message) => updates(message as TestTbTestString)) as TestTbTestString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestString create() => TestTbTestString._();
  TestTbTestString createEmptyInstance() => create();
  static $pb.PbList<TestTbTestString> createRepeated() => $pb.PbList<TestTbTestString>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestString>(create);
  static TestTbTestString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestString> get dataList => $_getList(0);
}

class TestTbDemoGroup extends $pb.GeneratedMessage {
  factory TestTbDemoGroup({
    $core.Iterable<TestDemoGroup>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDemoGroup._() : super();
  factory TestTbDemoGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDemoGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDemoGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoGroup>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup clone() => TestTbDemoGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup copyWith(void Function(TestTbDemoGroup) updates) => super.copyWith((message) => updates(message as TestTbDemoGroup)) as TestTbDemoGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup create() => TestTbDemoGroup._();
  TestTbDemoGroup createEmptyInstance() => create();
  static $pb.PbList<TestTbDemoGroup> createRepeated() => $pb.PbList<TestTbDemoGroup>();
  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDemoGroup>(create);
  static TestTbDemoGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoGroup> get dataList => $_getList(0);
}

class TestTbDemoGroup_C extends $pb.GeneratedMessage {
  factory TestTbDemoGroup_C({
    $core.Iterable<TestDemoGroup>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDemoGroup_C._() : super();
  factory TestTbDemoGroup_C.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDemoGroup_C.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDemoGroup_C', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoGroup>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_C clone() => TestTbDemoGroup_C()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_C copyWith(void Function(TestTbDemoGroup_C) updates) => super.copyWith((message) => updates(message as TestTbDemoGroup_C)) as TestTbDemoGroup_C;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_C create() => TestTbDemoGroup_C._();
  TestTbDemoGroup_C createEmptyInstance() => create();
  static $pb.PbList<TestTbDemoGroup_C> createRepeated() => $pb.PbList<TestTbDemoGroup_C>();
  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_C getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDemoGroup_C>(create);
  static TestTbDemoGroup_C? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoGroup> get dataList => $_getList(0);
}

class TestTbDemoGroup_S extends $pb.GeneratedMessage {
  factory TestTbDemoGroup_S({
    $core.Iterable<TestDemoGroup>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDemoGroup_S._() : super();
  factory TestTbDemoGroup_S.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDemoGroup_S.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDemoGroup_S', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoGroup>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_S clone() => TestTbDemoGroup_S()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_S copyWith(void Function(TestTbDemoGroup_S) updates) => super.copyWith((message) => updates(message as TestTbDemoGroup_S)) as TestTbDemoGroup_S;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_S create() => TestTbDemoGroup_S._();
  TestTbDemoGroup_S createEmptyInstance() => create();
  static $pb.PbList<TestTbDemoGroup_S> createRepeated() => $pb.PbList<TestTbDemoGroup_S>();
  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_S getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDemoGroup_S>(create);
  static TestTbDemoGroup_S? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoGroup> get dataList => $_getList(0);
}

class TestTbDemoGroup_E extends $pb.GeneratedMessage {
  factory TestTbDemoGroup_E({
    $core.Iterable<TestDemoGroup>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDemoGroup_E._() : super();
  factory TestTbDemoGroup_E.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDemoGroup_E.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDemoGroup_E', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDemoGroup>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDemoGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_E clone() => TestTbDemoGroup_E()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDemoGroup_E copyWith(void Function(TestTbDemoGroup_E) updates) => super.copyWith((message) => updates(message as TestTbDemoGroup_E)) as TestTbDemoGroup_E;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_E create() => TestTbDemoGroup_E._();
  TestTbDemoGroup_E createEmptyInstance() => create();
  static $pb.PbList<TestTbDemoGroup_E> createRepeated() => $pb.PbList<TestTbDemoGroup_E>();
  @$core.pragma('dart2js:noInline')
  static TestTbDemoGroup_E getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDemoGroup_E>(create);
  static TestTbDemoGroup_E? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDemoGroup> get dataList => $_getList(0);
}

class TestTbTestGlobal extends $pb.GeneratedMessage {
  factory TestTbTestGlobal({
    $core.Iterable<TestTestGlobal>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestGlobal._() : super();
  factory TestTbTestGlobal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestGlobal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestGlobal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestGlobal>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestGlobal.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestGlobal clone() => TestTbTestGlobal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestGlobal copyWith(void Function(TestTbTestGlobal) updates) => super.copyWith((message) => updates(message as TestTbTestGlobal)) as TestTbTestGlobal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestGlobal create() => TestTbTestGlobal._();
  TestTbTestGlobal createEmptyInstance() => create();
  static $pb.PbList<TestTbTestGlobal> createRepeated() => $pb.PbList<TestTbTestGlobal>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestGlobal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestGlobal>(create);
  static TestTbTestGlobal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestGlobal> get dataList => $_getList(0);
}

class TestTbTestBeRef extends $pb.GeneratedMessage {
  factory TestTbTestBeRef({
    $core.Iterable<TestTestBeRef>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestBeRef._() : super();
  factory TestTbTestBeRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestBeRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestBeRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestBeRef>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestBeRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestBeRef clone() => TestTbTestBeRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestBeRef copyWith(void Function(TestTbTestBeRef) updates) => super.copyWith((message) => updates(message as TestTbTestBeRef)) as TestTbTestBeRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestBeRef create() => TestTbTestBeRef._();
  TestTbTestBeRef createEmptyInstance() => create();
  static $pb.PbList<TestTbTestBeRef> createRepeated() => $pb.PbList<TestTbTestBeRef>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestBeRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestBeRef>(create);
  static TestTbTestBeRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestBeRef> get dataList => $_getList(0);
}

class TestTbTestBeRef2 extends $pb.GeneratedMessage {
  factory TestTbTestBeRef2({
    $core.Iterable<TestTestBeRef>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestBeRef2._() : super();
  factory TestTbTestBeRef2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestBeRef2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestBeRef2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestBeRef>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestBeRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestBeRef2 clone() => TestTbTestBeRef2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestBeRef2 copyWith(void Function(TestTbTestBeRef2) updates) => super.copyWith((message) => updates(message as TestTbTestBeRef2)) as TestTbTestBeRef2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestBeRef2 create() => TestTbTestBeRef2._();
  TestTbTestBeRef2 createEmptyInstance() => create();
  static $pb.PbList<TestTbTestBeRef2> createRepeated() => $pb.PbList<TestTbTestBeRef2>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestBeRef2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestBeRef2>(create);
  static TestTbTestBeRef2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestBeRef> get dataList => $_getList(0);
}

class TestTbTestRef extends $pb.GeneratedMessage {
  factory TestTbTestRef({
    $core.Iterable<TestTestRef>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestRef._() : super();
  factory TestTbTestRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestRef>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestRef clone() => TestTbTestRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestRef copyWith(void Function(TestTbTestRef) updates) => super.copyWith((message) => updates(message as TestTbTestRef)) as TestTbTestRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestRef create() => TestTbTestRef._();
  TestTbTestRef createEmptyInstance() => create();
  static $pb.PbList<TestTbTestRef> createRepeated() => $pb.PbList<TestTbTestRef>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestRef>(create);
  static TestTbTestRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestRef> get dataList => $_getList(0);
}

class TestTbTestSize extends $pb.GeneratedMessage {
  factory TestTbTestSize({
    $core.Iterable<TestTestSize>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestSize._() : super();
  factory TestTbTestSize.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestSize.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestSize', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestSize>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestSize.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestSize clone() => TestTbTestSize()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestSize copyWith(void Function(TestTbTestSize) updates) => super.copyWith((message) => updates(message as TestTbTestSize)) as TestTbTestSize;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestSize create() => TestTbTestSize._();
  TestTbTestSize createEmptyInstance() => create();
  static $pb.PbList<TestTbTestSize> createRepeated() => $pb.PbList<TestTbTestSize>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestSize getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestSize>(create);
  static TestTbTestSize? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestSize> get dataList => $_getList(0);
}

class TestTbTestSet extends $pb.GeneratedMessage {
  factory TestTbTestSet({
    $core.Iterable<TestTestSet>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestSet._() : super();
  factory TestTbTestSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestSet>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestSet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestSet clone() => TestTbTestSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestSet copyWith(void Function(TestTbTestSet) updates) => super.copyWith((message) => updates(message as TestTbTestSet)) as TestTbTestSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestSet create() => TestTbTestSet._();
  TestTbTestSet createEmptyInstance() => create();
  static $pb.PbList<TestTbTestSet> createRepeated() => $pb.PbList<TestTbTestSet>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestSet>(create);
  static TestTbTestSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestSet> get dataList => $_getList(0);
}

class TestTbTestRange extends $pb.GeneratedMessage {
  factory TestTbTestRange({
    $core.Iterable<TestTestRange>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestRange._() : super();
  factory TestTbTestRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestRange>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestRange.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestRange clone() => TestTbTestRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestRange copyWith(void Function(TestTbTestRange) updates) => super.copyWith((message) => updates(message as TestTbTestRange)) as TestTbTestRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestRange create() => TestTbTestRange._();
  TestTbTestRange createEmptyInstance() => create();
  static $pb.PbList<TestTbTestRange> createRepeated() => $pb.PbList<TestTbTestRange>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestRange>(create);
  static TestTbTestRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestRange> get dataList => $_getList(0);
}

class TestTbDetectCsvEncoding extends $pb.GeneratedMessage {
  factory TestTbDetectCsvEncoding({
    $core.Iterable<TestDetectEncoding>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDetectCsvEncoding._() : super();
  factory TestTbDetectCsvEncoding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDetectCsvEncoding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDetectCsvEncoding', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDetectEncoding>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDetectEncoding.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDetectCsvEncoding clone() => TestTbDetectCsvEncoding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDetectCsvEncoding copyWith(void Function(TestTbDetectCsvEncoding) updates) => super.copyWith((message) => updates(message as TestTbDetectCsvEncoding)) as TestTbDetectCsvEncoding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDetectCsvEncoding create() => TestTbDetectCsvEncoding._();
  TestTbDetectCsvEncoding createEmptyInstance() => create();
  static $pb.PbList<TestTbDetectCsvEncoding> createRepeated() => $pb.PbList<TestTbDetectCsvEncoding>();
  @$core.pragma('dart2js:noInline')
  static TestTbDetectCsvEncoding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDetectCsvEncoding>(create);
  static TestTbDetectCsvEncoding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDetectEncoding> get dataList => $_getList(0);
}

class TestTbItem2 extends $pb.GeneratedMessage {
  factory TestTbItem2({
    $core.Iterable<TestItemBase>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbItem2._() : super();
  factory TestTbItem2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbItem2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbItem2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestItemBase>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestItemBase.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbItem2 clone() => TestTbItem2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbItem2 copyWith(void Function(TestTbItem2) updates) => super.copyWith((message) => updates(message as TestTbItem2)) as TestTbItem2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbItem2 create() => TestTbItem2._();
  TestTbItem2 createEmptyInstance() => create();
  static $pb.PbList<TestTbItem2> createRepeated() => $pb.PbList<TestTbItem2>();
  @$core.pragma('dart2js:noInline')
  static TestTbItem2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbItem2>(create);
  static TestTbItem2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestItemBase> get dataList => $_getList(0);
}

class TestTbTestIndex extends $pb.GeneratedMessage {
  factory TestTbTestIndex({
    $core.Iterable<TestTestIndex>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestIndex._() : super();
  factory TestTbTestIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestIndex>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestIndex.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestIndex clone() => TestTbTestIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestIndex copyWith(void Function(TestTbTestIndex) updates) => super.copyWith((message) => updates(message as TestTbTestIndex)) as TestTbTestIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestIndex create() => TestTbTestIndex._();
  TestTbTestIndex createEmptyInstance() => create();
  static $pb.PbList<TestTbTestIndex> createRepeated() => $pb.PbList<TestTbTestIndex>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestIndex>(create);
  static TestTbTestIndex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestIndex> get dataList => $_getList(0);
}

class TestTbTestMap extends $pb.GeneratedMessage {
  factory TestTbTestMap({
    $core.Iterable<TestTestMap>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestMap._() : super();
  factory TestTbTestMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestMap>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestMap.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestMap clone() => TestTbTestMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestMap copyWith(void Function(TestTbTestMap) updates) => super.copyWith((message) => updates(message as TestTbTestMap)) as TestTbTestMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestMap create() => TestTbTestMap._();
  TestTbTestMap createEmptyInstance() => create();
  static $pb.PbList<TestTbTestMap> createRepeated() => $pb.PbList<TestTbTestMap>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestMap>(create);
  static TestTbTestMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestMap> get dataList => $_getList(0);
}

class TestTbExcelFromJson extends $pb.GeneratedMessage {
  factory TestTbExcelFromJson({
    $core.Iterable<TestExcelFromJson>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbExcelFromJson._() : super();
  factory TestTbExcelFromJson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbExcelFromJson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbExcelFromJson', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestExcelFromJson>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestExcelFromJson.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbExcelFromJson clone() => TestTbExcelFromJson()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbExcelFromJson copyWith(void Function(TestTbExcelFromJson) updates) => super.copyWith((message) => updates(message as TestTbExcelFromJson)) as TestTbExcelFromJson;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbExcelFromJson create() => TestTbExcelFromJson._();
  TestTbExcelFromJson createEmptyInstance() => create();
  static $pb.PbList<TestTbExcelFromJson> createRepeated() => $pb.PbList<TestTbExcelFromJson>();
  @$core.pragma('dart2js:noInline')
  static TestTbExcelFromJson getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbExcelFromJson>(create);
  static TestTbExcelFromJson? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestExcelFromJson> get dataList => $_getList(0);
}

class TestTbCompositeJsonTable1 extends $pb.GeneratedMessage {
  factory TestTbCompositeJsonTable1({
    $core.Iterable<TestCompositeJsonTable1>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbCompositeJsonTable1._() : super();
  factory TestTbCompositeJsonTable1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbCompositeJsonTable1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbCompositeJsonTable1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestCompositeJsonTable1>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestCompositeJsonTable1.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable1 clone() => TestTbCompositeJsonTable1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable1 copyWith(void Function(TestTbCompositeJsonTable1) updates) => super.copyWith((message) => updates(message as TestTbCompositeJsonTable1)) as TestTbCompositeJsonTable1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable1 create() => TestTbCompositeJsonTable1._();
  TestTbCompositeJsonTable1 createEmptyInstance() => create();
  static $pb.PbList<TestTbCompositeJsonTable1> createRepeated() => $pb.PbList<TestTbCompositeJsonTable1>();
  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbCompositeJsonTable1>(create);
  static TestTbCompositeJsonTable1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestCompositeJsonTable1> get dataList => $_getList(0);
}

class TestTbCompositeJsonTable2 extends $pb.GeneratedMessage {
  factory TestTbCompositeJsonTable2({
    $core.Iterable<TestCompositeJsonTable2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbCompositeJsonTable2._() : super();
  factory TestTbCompositeJsonTable2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbCompositeJsonTable2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbCompositeJsonTable2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestCompositeJsonTable2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestCompositeJsonTable2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable2 clone() => TestTbCompositeJsonTable2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable2 copyWith(void Function(TestTbCompositeJsonTable2) updates) => super.copyWith((message) => updates(message as TestTbCompositeJsonTable2)) as TestTbCompositeJsonTable2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable2 create() => TestTbCompositeJsonTable2._();
  TestTbCompositeJsonTable2 createEmptyInstance() => create();
  static $pb.PbList<TestTbCompositeJsonTable2> createRepeated() => $pb.PbList<TestTbCompositeJsonTable2>();
  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbCompositeJsonTable2>(create);
  static TestTbCompositeJsonTable2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestCompositeJsonTable2> get dataList => $_getList(0);
}

class TestTbCompositeJsonTable3 extends $pb.GeneratedMessage {
  factory TestTbCompositeJsonTable3({
    $core.Iterable<TestCompositeJsonTable3>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbCompositeJsonTable3._() : super();
  factory TestTbCompositeJsonTable3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbCompositeJsonTable3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbCompositeJsonTable3', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestCompositeJsonTable3>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestCompositeJsonTable3.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable3 clone() => TestTbCompositeJsonTable3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbCompositeJsonTable3 copyWith(void Function(TestTbCompositeJsonTable3) updates) => super.copyWith((message) => updates(message as TestTbCompositeJsonTable3)) as TestTbCompositeJsonTable3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable3 create() => TestTbCompositeJsonTable3._();
  TestTbCompositeJsonTable3 createEmptyInstance() => create();
  static $pb.PbList<TestTbCompositeJsonTable3> createRepeated() => $pb.PbList<TestTbCompositeJsonTable3>();
  @$core.pragma('dart2js:noInline')
  static TestTbCompositeJsonTable3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbCompositeJsonTable3>(create);
  static TestTbCompositeJsonTable3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestCompositeJsonTable3> get dataList => $_getList(0);
}

class TestTbExcelFromJsonMultiRow extends $pb.GeneratedMessage {
  factory TestTbExcelFromJsonMultiRow({
    $core.Iterable<TestExcelFromJsonMultiRow>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbExcelFromJsonMultiRow._() : super();
  factory TestTbExcelFromJsonMultiRow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbExcelFromJsonMultiRow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbExcelFromJsonMultiRow', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestExcelFromJsonMultiRow>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestExcelFromJsonMultiRow.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbExcelFromJsonMultiRow clone() => TestTbExcelFromJsonMultiRow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbExcelFromJsonMultiRow copyWith(void Function(TestTbExcelFromJsonMultiRow) updates) => super.copyWith((message) => updates(message as TestTbExcelFromJsonMultiRow)) as TestTbExcelFromJsonMultiRow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbExcelFromJsonMultiRow create() => TestTbExcelFromJsonMultiRow._();
  TestTbExcelFromJsonMultiRow createEmptyInstance() => create();
  static $pb.PbList<TestTbExcelFromJsonMultiRow> createRepeated() => $pb.PbList<TestTbExcelFromJsonMultiRow>();
  @$core.pragma('dart2js:noInline')
  static TestTbExcelFromJsonMultiRow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbExcelFromJsonMultiRow>(create);
  static TestTbExcelFromJsonMultiRow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestExcelFromJsonMultiRow> get dataList => $_getList(0);
}

class TestTbTestScriptableObject extends $pb.GeneratedMessage {
  factory TestTbTestScriptableObject({
    $core.Iterable<TestTestScriptableObject>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestScriptableObject._() : super();
  factory TestTbTestScriptableObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestScriptableObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestScriptableObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestScriptableObject>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestScriptableObject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestScriptableObject clone() => TestTbTestScriptableObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestScriptableObject copyWith(void Function(TestTbTestScriptableObject) updates) => super.copyWith((message) => updates(message as TestTbTestScriptableObject)) as TestTbTestScriptableObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestScriptableObject create() => TestTbTestScriptableObject._();
  TestTbTestScriptableObject createEmptyInstance() => create();
  static $pb.PbList<TestTbTestScriptableObject> createRepeated() => $pb.PbList<TestTbTestScriptableObject>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestScriptableObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestScriptableObject>(create);
  static TestTbTestScriptableObject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestScriptableObject> get dataList => $_getList(0);
}

class TestTbPath extends $pb.GeneratedMessage {
  factory TestTbPath({
    $core.Iterable<TestPath>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbPath._() : super();
  factory TestTbPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbPath', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestPath>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestPath.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbPath clone() => TestTbPath()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbPath copyWith(void Function(TestTbPath) updates) => super.copyWith((message) => updates(message as TestTbPath)) as TestTbPath;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbPath create() => TestTbPath._();
  TestTbPath createEmptyInstance() => create();
  static $pb.PbList<TestTbPath> createRepeated() => $pb.PbList<TestTbPath>();
  @$core.pragma('dart2js:noInline')
  static TestTbPath getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbPath>(create);
  static TestTbPath? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestPath> get dataList => $_getList(0);
}

class TestTbTestFieldAlias extends $pb.GeneratedMessage {
  factory TestTbTestFieldAlias({
    $core.Iterable<TestTestFieldAlias>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestFieldAlias._() : super();
  factory TestTbTestFieldAlias.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestFieldAlias.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestFieldAlias', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestFieldAlias>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestFieldAlias.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestFieldAlias clone() => TestTbTestFieldAlias()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestFieldAlias copyWith(void Function(TestTbTestFieldAlias) updates) => super.copyWith((message) => updates(message as TestTbTestFieldAlias)) as TestTbTestFieldAlias;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldAlias create() => TestTbTestFieldAlias._();
  TestTbTestFieldAlias createEmptyInstance() => create();
  static $pb.PbList<TestTbTestFieldAlias> createRepeated() => $pb.PbList<TestTbTestFieldAlias>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldAlias getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestFieldAlias>(create);
  static TestTbTestFieldAlias? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestFieldAlias> get dataList => $_getList(0);
}

class TestTbTestFieldVariant extends $pb.GeneratedMessage {
  factory TestTbTestFieldVariant({
    $core.Iterable<TestTestFieldVariant>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestFieldVariant._() : super();
  factory TestTbTestFieldVariant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestFieldVariant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestFieldVariant', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestFieldVariant>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestFieldVariant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestFieldVariant clone() => TestTbTestFieldVariant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestFieldVariant copyWith(void Function(TestTbTestFieldVariant) updates) => super.copyWith((message) => updates(message as TestTbTestFieldVariant)) as TestTbTestFieldVariant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldVariant create() => TestTbTestFieldVariant._();
  TestTbTestFieldVariant createEmptyInstance() => create();
  static $pb.PbList<TestTbTestFieldVariant> createRepeated() => $pb.PbList<TestTbTestFieldVariant>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldVariant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestFieldVariant>(create);
  static TestTbTestFieldVariant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestFieldVariant> get dataList => $_getList(0);
}

class TestTbTestFieldVariant2 extends $pb.GeneratedMessage {
  factory TestTbTestFieldVariant2({
    $core.Iterable<TestTestFieldVariant2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestFieldVariant2._() : super();
  factory TestTbTestFieldVariant2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestFieldVariant2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestFieldVariant2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestFieldVariant2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestFieldVariant2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestFieldVariant2 clone() => TestTbTestFieldVariant2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestFieldVariant2 copyWith(void Function(TestTbTestFieldVariant2) updates) => super.copyWith((message) => updates(message as TestTbTestFieldVariant2)) as TestTbTestFieldVariant2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldVariant2 create() => TestTbTestFieldVariant2._();
  TestTbTestFieldVariant2 createEmptyInstance() => create();
  static $pb.PbList<TestTbTestFieldVariant2> createRepeated() => $pb.PbList<TestTbTestFieldVariant2>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestFieldVariant2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestFieldVariant2>(create);
  static TestTbTestFieldVariant2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestFieldVariant2> get dataList => $_getList(0);
}

class TestTbTestMapper extends $pb.GeneratedMessage {
  factory TestTbTestMapper({
    $core.Iterable<TestTestMapper>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbTestMapper._() : super();
  factory TestTbTestMapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbTestMapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbTestMapper', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestTestMapper>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestTestMapper.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbTestMapper clone() => TestTbTestMapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbTestMapper copyWith(void Function(TestTbTestMapper) updates) => super.copyWith((message) => updates(message as TestTbTestMapper)) as TestTbTestMapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbTestMapper create() => TestTbTestMapper._();
  TestTbTestMapper createEmptyInstance() => create();
  static $pb.PbList<TestTbTestMapper> createRepeated() => $pb.PbList<TestTbTestMapper>();
  @$core.pragma('dart2js:noInline')
  static TestTbTestMapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbTestMapper>(create);
  static TestTbTestMapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestTestMapper> get dataList => $_getList(0);
}

class TestTbDefineFromExcel2 extends $pb.GeneratedMessage {
  factory TestTbDefineFromExcel2({
    $core.Iterable<TestDefineFromExcel2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbDefineFromExcel2._() : super();
  factory TestTbDefineFromExcel2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbDefineFromExcel2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbDefineFromExcel2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestDefineFromExcel2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestDefineFromExcel2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbDefineFromExcel2 clone() => TestTbDefineFromExcel2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbDefineFromExcel2 copyWith(void Function(TestTbDefineFromExcel2) updates) => super.copyWith((message) => updates(message as TestTbDefineFromExcel2)) as TestTbDefineFromExcel2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbDefineFromExcel2 create() => TestTbDefineFromExcel2._();
  TestTbDefineFromExcel2 createEmptyInstance() => create();
  static $pb.PbList<TestTbDefineFromExcel2> createRepeated() => $pb.PbList<TestTbDefineFromExcel2>();
  @$core.pragma('dart2js:noInline')
  static TestTbDefineFromExcel2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbDefineFromExcel2>(create);
  static TestTbDefineFromExcel2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestDefineFromExcel2> get dataList => $_getList(0);
}

class TbAutoImport1 extends $pb.GeneratedMessage {
  factory TbAutoImport1({
    $core.Iterable<AutoImport1>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TbAutoImport1._() : super();
  factory TbAutoImport1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TbAutoImport1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TbAutoImport1', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<AutoImport1>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: AutoImport1.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TbAutoImport1 clone() => TbAutoImport1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TbAutoImport1 copyWith(void Function(TbAutoImport1) updates) => super.copyWith((message) => updates(message as TbAutoImport1)) as TbAutoImport1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TbAutoImport1 create() => TbAutoImport1._();
  TbAutoImport1 createEmptyInstance() => create();
  static $pb.PbList<TbAutoImport1> createRepeated() => $pb.PbList<TbAutoImport1>();
  @$core.pragma('dart2js:noInline')
  static TbAutoImport1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TbAutoImport1>(create);
  static TbAutoImport1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AutoImport1> get dataList => $_getList(0);
}

class TestTbAutoImport2 extends $pb.GeneratedMessage {
  factory TestTbAutoImport2({
    $core.Iterable<TestAutoImport2>? dataList,
  }) {
    final $result = create();
    if (dataList != null) {
      $result.dataList.addAll(dataList);
    }
    return $result;
  }
  TestTbAutoImport2._() : super();
  factory TestTbAutoImport2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestTbAutoImport2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestTbAutoImport2', package: const $pb.PackageName(_omitMessageNames ? '' : 'cfg'), createEmptyInstance: create)
    ..pc<TestAutoImport2>(1, _omitFieldNames ? '' : 'dataList', $pb.PbFieldType.PM, subBuilder: TestAutoImport2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestTbAutoImport2 clone() => TestTbAutoImport2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestTbAutoImport2 copyWith(void Function(TestTbAutoImport2) updates) => super.copyWith((message) => updates(message as TestTbAutoImport2)) as TestTbAutoImport2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestTbAutoImport2 create() => TestTbAutoImport2._();
  TestTbAutoImport2 createEmptyInstance() => create();
  static $pb.PbList<TestTbAutoImport2> createRepeated() => $pb.PbList<TestTbAutoImport2>();
  @$core.pragma('dart2js:noInline')
  static TestTbAutoImport2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestTbAutoImport2>(create);
  static TestTbAutoImport2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestAutoImport2> get dataList => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
