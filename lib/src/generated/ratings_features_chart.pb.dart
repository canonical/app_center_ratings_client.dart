//
//  Generated code. Do not modify.
//  source: ratings_features_chart.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ratings_features_chart.pbenum.dart';
import 'ratings_features_common.pb.dart' as $1;

export 'ratings_features_chart.pbenum.dart';

class GetChartRequest extends $pb.GeneratedMessage {
  factory GetChartRequest({
    Timeframe? timeframe,
  }) {
    final $result = create();
    if (timeframe != null) {
      $result.timeframe = timeframe;
    }
    return $result;
  }
  GetChartRequest._() : super();
  factory GetChartRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetChartRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetChartRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'ratings.features.chart'),
      createEmptyInstance: create)
    ..e<Timeframe>(1, _omitFieldNames ? '' : 'timeframe', $pb.PbFieldType.OE,
        defaultOrMaker: Timeframe.TIMEFRAME_UNSPECIFIED,
        valueOf: Timeframe.valueOf,
        enumValues: Timeframe.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetChartRequest clone() => GetChartRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetChartRequest copyWith(void Function(GetChartRequest) updates) =>
      super.copyWith((message) => updates(message as GetChartRequest))
          as GetChartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChartRequest create() => GetChartRequest._();
  GetChartRequest createEmptyInstance() => create();
  static $pb.PbList<GetChartRequest> createRepeated() =>
      $pb.PbList<GetChartRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChartRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChartRequest>(create);
  static GetChartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Timeframe get timeframe => $_getN(0);
  @$pb.TagNumber(1)
  set timeframe(Timeframe v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeframe() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeframe() => clearField(1);
}

class GetChartResponse extends $pb.GeneratedMessage {
  factory GetChartResponse({
    Timeframe? timeframe,
    $core.Iterable<ChartData>? orderedChartData,
  }) {
    final $result = create();
    if (timeframe != null) {
      $result.timeframe = timeframe;
    }
    if (orderedChartData != null) {
      $result.orderedChartData.addAll(orderedChartData);
    }
    return $result;
  }
  GetChartResponse._() : super();
  factory GetChartResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetChartResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetChartResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'ratings.features.chart'),
      createEmptyInstance: create)
    ..e<Timeframe>(1, _omitFieldNames ? '' : 'timeframe', $pb.PbFieldType.OE,
        defaultOrMaker: Timeframe.TIMEFRAME_UNSPECIFIED,
        valueOf: Timeframe.valueOf,
        enumValues: Timeframe.values)
    ..pc<ChartData>(
        2, _omitFieldNames ? '' : 'orderedChartData', $pb.PbFieldType.PM,
        subBuilder: ChartData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetChartResponse clone() => GetChartResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetChartResponse copyWith(void Function(GetChartResponse) updates) =>
      super.copyWith((message) => updates(message as GetChartResponse))
          as GetChartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChartResponse create() => GetChartResponse._();
  GetChartResponse createEmptyInstance() => create();
  static $pb.PbList<GetChartResponse> createRepeated() =>
      $pb.PbList<GetChartResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChartResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChartResponse>(create);
  static GetChartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Timeframe get timeframe => $_getN(0);
  @$pb.TagNumber(1)
  set timeframe(Timeframe v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeframe() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeframe() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ChartData> get orderedChartData => $_getList(1);
}

class ChartData extends $pb.GeneratedMessage {
  factory ChartData({
    $core.double? rawRating,
    $1.Rating? rating,
  }) {
    final $result = create();
    if (rawRating != null) {
      $result.rawRating = rawRating;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  ChartData._() : super();
  factory ChartData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChartData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChartData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'ratings.features.chart'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'rawRating', $pb.PbFieldType.OF)
    ..aOM<$1.Rating>(2, _omitFieldNames ? '' : 'rating',
        subBuilder: $1.Rating.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChartData clone() => ChartData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChartData copyWith(void Function(ChartData) updates) =>
      super.copyWith((message) => updates(message as ChartData)) as ChartData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChartData create() => ChartData._();
  ChartData createEmptyInstance() => create();
  static $pb.PbList<ChartData> createRepeated() => $pb.PbList<ChartData>();
  @$core.pragma('dart2js:noInline')
  static ChartData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChartData>(create);
  static ChartData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rawRating => $_getN(0);
  @$pb.TagNumber(1)
  set rawRating($core.double v) {
    $_setFloat(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRawRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawRating() => clearField(1);

  @$pb.TagNumber(2)
  $1.Rating get rating => $_getN(1);
  @$pb.TagNumber(2)
  set rating($1.Rating v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRating() => $_has(1);
  @$pb.TagNumber(2)
  void clearRating() => clearField(2);
  @$pb.TagNumber(2)
  $1.Rating ensureRating() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
