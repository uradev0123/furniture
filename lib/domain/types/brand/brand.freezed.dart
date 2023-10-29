// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String get enName => throw _privateConstructorUsedError;
  String get jaName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get foundedYear => throw _privateConstructorUsedError;
  int? get bankruptcyYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {String enName,
      String jaName,
      String country,
      int foundedYear,
      int? bankruptcyYear});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enName = null,
    Object? jaName = null,
    Object? country = null,
    Object? foundedYear = null,
    Object? bankruptcyYear = freezed,
  }) {
    return _then(_value.copyWith(
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      jaName: null == jaName
          ? _value.jaName
          : jaName // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      foundedYear: null == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int,
      bankruptcyYear: freezed == bankruptcyYear
          ? _value.bankruptcyYear
          : bankruptcyYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String enName,
      String jaName,
      String country,
      int foundedYear,
      int? bankruptcyYear});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enName = null,
    Object? jaName = null,
    Object? country = null,
    Object? foundedYear = null,
    Object? bankruptcyYear = freezed,
  }) {
    return _then(_$BrandImpl(
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      jaName: null == jaName
          ? _value.jaName
          : jaName // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      foundedYear: null == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int,
      bankruptcyYear: freezed == bankruptcyYear
          ? _value.bankruptcyYear
          : bankruptcyYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl extends _Brand with DiagnosticableTreeMixin {
  const _$BrandImpl(
      {required this.enName,
      required this.jaName,
      required this.country,
      required this.foundedYear,
      this.bankruptcyYear})
      : super._();

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final String enName;
  @override
  final String jaName;
  @override
  final String country;
  @override
  final int foundedYear;
  @override
  final int? bankruptcyYear;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Brand(enName: $enName, jaName: $jaName, country: $country, foundedYear: $foundedYear, bankruptcyYear: $bankruptcyYear)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Brand'))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('jaName', jaName))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('foundedYear', foundedYear))
      ..add(DiagnosticsProperty('bankruptcyYear', bankruptcyYear));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.jaName, jaName) || other.jaName == jaName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.foundedYear, foundedYear) ||
                other.foundedYear == foundedYear) &&
            (identical(other.bankruptcyYear, bankruptcyYear) ||
                other.bankruptcyYear == bankruptcyYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, enName, jaName, country, foundedYear, bankruptcyYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand extends Brand {
  const factory _Brand(
      {required final String enName,
      required final String jaName,
      required final String country,
      required final int foundedYear,
      final int? bankruptcyYear}) = _$BrandImpl;
  const _Brand._() : super._();

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String get enName;
  @override
  String get jaName;
  @override
  String get country;
  @override
  int get foundedYear;
  @override
  int? get bankruptcyYear;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
