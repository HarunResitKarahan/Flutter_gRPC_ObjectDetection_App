///
//  Generated code. Do not modify.
//  source: ImageProcessing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use predictionRequestDescriptor instead')
const PredictionRequest$json = const {
  '1': 'PredictionRequest',
  '2': const [
    const {'1': 'image_array', '3': 1, '4': 1, '5': 12, '10': 'imageArray'},
    const {'1': 'file_extension', '3': 2, '4': 1, '5': 9, '10': 'fileExtension'},
    const {'1': 'file_name', '3': 3, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `PredictionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictionRequestDescriptor = $convert.base64Decode('ChFQcmVkaWN0aW9uUmVxdWVzdBIfCgtpbWFnZV9hcnJheRgBIAEoDFIKaW1hZ2VBcnJheRIlCg5maWxlX2V4dGVuc2lvbhgCIAEoCVINZmlsZUV4dGVuc2lvbhIbCglmaWxlX25hbWUYAyABKAlSCGZpbGVOYW1l');
@$core.Deprecated('Use predictionResultDescriptor instead')
const PredictionResult$json = const {
  '1': 'PredictionResult',
  '2': const [
    const {'1': 'detected_image', '3': 1, '4': 1, '5': 9, '10': 'detectedImage'},
  ],
};

/// Descriptor for `PredictionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictionResultDescriptor = $convert.base64Decode('ChBQcmVkaWN0aW9uUmVzdWx0EiUKDmRldGVjdGVkX2ltYWdlGAEgASgJUg1kZXRlY3RlZEltYWdl');
