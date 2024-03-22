// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Rate {
  String get meigaraId => throw _privateConstructorUsedError;
  String get meigaraMei => throw _privateConstructorUsedError; //高値
  String get high => throw _privateConstructorUsedError; //安値
  String get low => throw _privateConstructorUsedError; //現在値
  String get offer => throw _privateConstructorUsedError; //前日比
  String get diff => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateCopyWith<Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateCopyWith<$Res> {
  factory $RateCopyWith(Rate value, $Res Function(Rate) then) =
      _$RateCopyWithImpl<$Res, Rate>;
  @useResult
  $Res call(
      {String meigaraId,
      String meigaraMei,
      String high,
      String low,
      String offer,
      String diff});
}

/// @nodoc
class _$RateCopyWithImpl<$Res, $Val extends Rate>
    implements $RateCopyWith<$Res> {
  _$RateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigaraId = null,
    Object? meigaraMei = null,
    Object? high = null,
    Object? low = null,
    Object? offer = null,
    Object? diff = null,
  }) {
    return _then(_value.copyWith(
      meigaraId: null == meigaraId
          ? _value.meigaraId
          : meigaraId // ignore: cast_nullable_to_non_nullable
              as String,
      meigaraMei: null == meigaraMei
          ? _value.meigaraMei
          : meigaraMei // ignore: cast_nullable_to_non_nullable
              as String,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as String,
      diff: null == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateImplCopyWith<$Res> implements $RateCopyWith<$Res> {
  factory _$$RateImplCopyWith(
          _$RateImpl value, $Res Function(_$RateImpl) then) =
      __$$RateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String meigaraId,
      String meigaraMei,
      String high,
      String low,
      String offer,
      String diff});
}

/// @nodoc
class __$$RateImplCopyWithImpl<$Res>
    extends _$RateCopyWithImpl<$Res, _$RateImpl>
    implements _$$RateImplCopyWith<$Res> {
  __$$RateImplCopyWithImpl(_$RateImpl _value, $Res Function(_$RateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigaraId = null,
    Object? meigaraMei = null,
    Object? high = null,
    Object? low = null,
    Object? offer = null,
    Object? diff = null,
  }) {
    return _then(_$RateImpl(
      meigaraId: null == meigaraId
          ? _value.meigaraId
          : meigaraId // ignore: cast_nullable_to_non_nullable
              as String,
      meigaraMei: null == meigaraMei
          ? _value.meigaraMei
          : meigaraMei // ignore: cast_nullable_to_non_nullable
              as String,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as String,
      diff: null == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateImpl implements _Rate {
  const _$RateImpl(
      {required this.meigaraId,
      required this.meigaraMei,
      required this.high,
      required this.low,
      required this.offer,
      required this.diff});

  @override
  final String meigaraId;
  @override
  final String meigaraMei;
//高値
  @override
  final String high;
//安値
  @override
  final String low;
//現在値
  @override
  final String offer;
//前日比
  @override
  final String diff;

  @override
  String toString() {
    return 'Rate(meigaraId: $meigaraId, meigaraMei: $meigaraMei, high: $high, low: $low, offer: $offer, diff: $diff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateImpl &&
            (identical(other.meigaraId, meigaraId) ||
                other.meigaraId == meigaraId) &&
            (identical(other.meigaraMei, meigaraMei) ||
                other.meigaraMei == meigaraMei) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.diff, diff) || other.diff == diff));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, meigaraId, meigaraMei, high, low, offer, diff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      __$$RateImplCopyWithImpl<_$RateImpl>(this, _$identity);
}

abstract class _Rate implements Rate {
  const factory _Rate(
      {required final String meigaraId,
      required final String meigaraMei,
      required final String high,
      required final String low,
      required final String offer,
      required final String diff}) = _$RateImpl;

  @override
  String get meigaraId;
  @override
  String get meigaraMei;
  @override //高値
  String get high;
  @override //安値
  String get low;
  @override //現在値
  String get offer;
  @override //前日比
  String get diff;
  @override
  @JsonKey(ignore: true)
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
