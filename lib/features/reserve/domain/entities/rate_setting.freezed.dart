// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RateSetting {
  Rate get rate => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateSettingCopyWith<RateSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateSettingCopyWith<$Res> {
  factory $RateSettingCopyWith(
          RateSetting value, $Res Function(RateSetting) then) =
      _$RateSettingCopyWithImpl<$Res, RateSetting>;
  @useResult
  $Res call({Rate rate, bool show});

  $RateCopyWith<$Res> get rate;
}

/// @nodoc
class _$RateSettingCopyWithImpl<$Res, $Val extends RateSetting>
    implements $RateSettingCopyWith<$Res> {
  _$RateSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateCopyWith<$Res> get rate {
    return $RateCopyWith<$Res>(_value.rate, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateSettingImplCopyWith<$Res>
    implements $RateSettingCopyWith<$Res> {
  factory _$$RateSettingImplCopyWith(
          _$RateSettingImpl value, $Res Function(_$RateSettingImpl) then) =
      __$$RateSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Rate rate, bool show});

  @override
  $RateCopyWith<$Res> get rate;
}

/// @nodoc
class __$$RateSettingImplCopyWithImpl<$Res>
    extends _$RateSettingCopyWithImpl<$Res, _$RateSettingImpl>
    implements _$$RateSettingImplCopyWith<$Res> {
  __$$RateSettingImplCopyWithImpl(
      _$RateSettingImpl _value, $Res Function(_$RateSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? show = null,
  }) {
    return _then(_$RateSettingImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RateSettingImpl implements _RateSetting {
  const _$RateSettingImpl({required this.rate, this.show = true});

  @override
  final Rate rate;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'RateSetting(rate: $rate, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateSettingImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateSettingImplCopyWith<_$RateSettingImpl> get copyWith =>
      __$$RateSettingImplCopyWithImpl<_$RateSettingImpl>(this, _$identity);
}

abstract class _RateSetting implements RateSetting {
  const factory _RateSetting({required final Rate rate, final bool show}) =
      _$RateSettingImpl;

  @override
  Rate get rate;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$$RateSettingImplCopyWith<_$RateSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
