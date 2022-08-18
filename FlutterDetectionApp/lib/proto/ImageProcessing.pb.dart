///
//  Generated code. Do not modify.
//  source: ImageProcessing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PredictionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PredictionRequest', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageArray', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileExtension')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  PredictionRequest._() : super();
  factory PredictionRequest({
    $core.List<$core.int>? imageArray,
    $core.String? fileExtension,
    $core.String? fileName,
  }) {
    final _result = create();
    if (imageArray != null) {
      _result.imageArray = imageArray;
    }
    if (fileExtension != null) {
      _result.fileExtension = fileExtension;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    return _result;
  }
  factory PredictionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictionRequest clone() => PredictionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictionRequest copyWith(void Function(PredictionRequest) updates) => super.copyWith((message) => updates(message as PredictionRequest)) as PredictionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PredictionRequest create() => PredictionRequest._();
  PredictionRequest createEmptyInstance() => create();
  static $pb.PbList<PredictionRequest> createRepeated() => $pb.PbList<PredictionRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictionRequest>(create);
  static PredictionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get imageArray => $_getN(0);
  @$pb.TagNumber(1)
  set imageArray($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageArray() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageArray() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileExtension => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileExtension($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileExtension() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileExtension() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => clearField(3);
}

class PredictionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PredictionResult', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detectedImage')
    ..hasRequiredFields = false
  ;

  PredictionResult._() : super();
  factory PredictionResult({
    $core.String? detectedImage,
  }) {
    final _result = create();
    if (detectedImage != null) {
      _result.detectedImage = detectedImage;
    }
    return _result;
  }
  factory PredictionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictionResult clone() => PredictionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictionResult copyWith(void Function(PredictionResult) updates) => super.copyWith((message) => updates(message as PredictionResult)) as PredictionResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PredictionResult create() => PredictionResult._();
  PredictionResult createEmptyInstance() => create();
  static $pb.PbList<PredictionResult> createRepeated() => $pb.PbList<PredictionResult>();
  @$core.pragma('dart2js:noInline')
  static PredictionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictionResult>(create);
  static PredictionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get detectedImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set detectedImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetectedImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetectedImage() => clearField(1);
}

