///
//  Generated code. Do not modify.
//  source: ImageProcessing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'ImageProcessing.pb.dart' as $0;
export 'ImageProcessing.pb.dart';

class ImageProcessingClient extends $grpc.Client {
  static final _$predict =
      $grpc.ClientMethod<$0.PredictionRequest, $0.PredictionResult>(
          '/ImageProcessing/Predict',
          ($0.PredictionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PredictionResult.fromBuffer(value));

  ImageProcessingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PredictionResult> predict(
      $0.PredictionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predict, request, options: options);
  }
}

abstract class ImageProcessingServiceBase extends $grpc.Service {
  $core.String get $name => 'ImageProcessing';

  ImageProcessingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PredictionRequest, $0.PredictionResult>(
        'Predict',
        predict_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PredictionRequest.fromBuffer(value),
        ($0.PredictionResult value) => value.writeToBuffer()));
  }

  $async.Future<$0.PredictionResult> predict_Pre($grpc.ServiceCall call,
      $async.Future<$0.PredictionRequest> request) async {
    return predict(call, await request);
  }

  $async.Future<$0.PredictionResult> predict(
      $grpc.ServiceCall call, $0.PredictionRequest request);
}
