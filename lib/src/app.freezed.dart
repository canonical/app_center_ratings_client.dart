// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rating {
  String get snapId => throw _privateConstructorUsedError;
  int get totalVotes => throw _privateConstructorUsedError;
  RatingsBand get ratingsBand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({String snapId, int totalVotes, RatingsBand ratingsBand});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapId = null,
    Object? totalVotes = null,
    Object? ratingsBand = null,
  }) {
    return _then(_value.copyWith(
      snapId: null == snapId
          ? _value.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingsBand: null == ratingsBand
          ? _value.ratingsBand
          : ratingsBand // ignore: cast_nullable_to_non_nullable
              as RatingsBand,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapId, int totalVotes, RatingsBand ratingsBand});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapId = null,
    Object? totalVotes = null,
    Object? ratingsBand = null,
  }) {
    return _then(_$_Rating(
      snapId: null == snapId
          ? _value.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingsBand: null == ratingsBand
          ? _value.ratingsBand
          : ratingsBand // ignore: cast_nullable_to_non_nullable
              as RatingsBand,
    ));
  }
}

/// @nodoc

class _$_Rating implements _Rating {
  const _$_Rating(
      {required this.snapId,
      required this.totalVotes,
      required this.ratingsBand});

  @override
  final String snapId;
  @override
  final int totalVotes;
  @override
  final RatingsBand ratingsBand;

  @override
  String toString() {
    return 'Rating(snapId: $snapId, totalVotes: $totalVotes, ratingsBand: $ratingsBand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            (identical(other.snapId, snapId) || other.snapId == snapId) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.ratingsBand, ratingsBand) ||
                other.ratingsBand == ratingsBand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snapId, totalVotes, ratingsBand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required final String snapId,
      required final int totalVotes,
      required final RatingsBand ratingsBand}) = _$_Rating;

  @override
  String get snapId;
  @override
  int get totalVotes;
  @override
  RatingsBand get ratingsBand;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
