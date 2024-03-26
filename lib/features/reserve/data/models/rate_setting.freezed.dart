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
  String get meigaraId => throw _privateConstructorUsedError;
  String get meigaraMei => throw _privateConstructorUsedError;
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
  $Res call({String meigaraId, String meigaraMei, bool show});
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
    Object? meigaraId = null,
    Object? meigaraMei = null,
    Object? show = null,
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
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
  $Res call({String meigaraId, String meigaraMei, bool show});
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
    Object? meigaraId = null,
    Object? meigaraMei = null,
    Object? show = null,
  }) {
    return _then(_$RateSettingImpl(
      meigaraId: null == meigaraId
          ? _value.meigaraId
          : meigaraId // ignore: cast_nullable_to_non_nullable
              as String,
      meigaraMei: null == meigaraMei
          ? _value.meigaraMei
          : meigaraMei // ignore: cast_nullable_to_non_nullable
              as String,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RateSettingImpl implements _RateSetting {
  const _$RateSettingImpl(
      {required this.meigaraId, required this.meigaraMei, this.show = true});

  @override
  final String meigaraId;
  @override
  final String meigaraMei;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'RateSetting(meigaraId: $meigaraId, meigaraMei: $meigaraMei, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateSettingImpl &&
            (identical(other.meigaraId, meigaraId) ||
                other.meigaraId == meigaraId) &&
            (identical(other.meigaraMei, meigaraMei) ||
                other.meigaraMei == meigaraMei) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meigaraId, meigaraMei, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateSettingImplCopyWith<_$RateSettingImpl> get copyWith =>
      __$$RateSettingImplCopyWithImpl<_$RateSettingImpl>(this, _$identity);
}

abstract class _RateSetting implements RateSetting {
  const factory _RateSetting(
      {required final String meigaraId,
      required final String meigaraMei,
      final bool show}) = _$RateSettingImpl;

  @override
  String get meigaraId;
  @override
  String get meigaraMei;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$$RateSettingImplCopyWith<_$RateSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
