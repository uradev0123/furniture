// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'designer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Designer _$DesignerFromJson(Map<String, dynamic> json) {
  return _Designer.fromJson(json);
}

/// @nodoc
mixin _$Designer {
  String get enName => throw _privateConstructorUsedError;
  String get jaName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get culture => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  DateTime? get deathday => throw _privateConstructorUsedError;
  String get faceUrl => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignerCopyWith<Designer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignerCopyWith<$Res> {
  factory $DesignerCopyWith(Designer value, $Res Function(Designer) then) =
      _$DesignerCopyWithImpl<$Res, Designer>;
  @useResult
  $Res call(
      {String enName,
      String jaName,
      String country,
      String culture,
      DateTime birthday,
      DateTime? deathday,
      String faceUrl,
      String memo});
}

/// @nodoc
class _$DesignerCopyWithImpl<$Res, $Val extends Designer>
    implements $DesignerCopyWith<$Res> {
  _$DesignerCopyWithImpl(this._value, this._then);

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
    Object? culture = null,
    Object? birthday = null,
    Object? deathday = freezed,
    Object? faceUrl = null,
    Object? memo = null,
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
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      faceUrl: null == faceUrl
          ? _value.faceUrl
          : faceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignerImplCopyWith<$Res>
    implements $DesignerCopyWith<$Res> {
  factory _$$DesignerImplCopyWith(
          _$DesignerImpl value, $Res Function(_$DesignerImpl) then) =
      __$$DesignerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String enName,
      String jaName,
      String country,
      String culture,
      DateTime birthday,
      DateTime? deathday,
      String faceUrl,
      String memo});
}

/// @nodoc
class __$$DesignerImplCopyWithImpl<$Res>
    extends _$DesignerCopyWithImpl<$Res, _$DesignerImpl>
    implements _$$DesignerImplCopyWith<$Res> {
  __$$DesignerImplCopyWithImpl(
      _$DesignerImpl _value, $Res Function(_$DesignerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enName = null,
    Object? jaName = null,
    Object? country = null,
    Object? culture = null,
    Object? birthday = null,
    Object? deathday = freezed,
    Object? faceUrl = null,
    Object? memo = null,
  }) {
    return _then(_$DesignerImpl(
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
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      faceUrl: null == faceUrl
          ? _value.faceUrl
          : faceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignerImpl extends _Designer with DiagnosticableTreeMixin {
  const _$DesignerImpl(
      {required this.enName,
      required this.jaName,
      required this.country,
      required this.culture,
      required this.birthday,
      this.deathday,
      required this.faceUrl,
      required this.memo})
      : super._();

  factory _$DesignerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignerImplFromJson(json);

  @override
  final String enName;
  @override
  final String jaName;
  @override
  final String country;
  @override
  final String culture;
  @override
  final DateTime birthday;
  @override
  final DateTime? deathday;
  @override
  final String faceUrl;
  @override
  final String memo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Designer(enName: $enName, jaName: $jaName, country: $country, culture: $culture, birthday: $birthday, deathday: $deathday, faceUrl: $faceUrl, memo: $memo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Designer'))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('jaName', jaName))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('culture', culture))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('deathday', deathday))
      ..add(DiagnosticsProperty('faceUrl', faceUrl))
      ..add(DiagnosticsProperty('memo', memo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignerImpl &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.jaName, jaName) || other.jaName == jaName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.culture, culture) || other.culture == culture) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.deathday, deathday) ||
                other.deathday == deathday) &&
            (identical(other.faceUrl, faceUrl) || other.faceUrl == faceUrl) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enName, jaName, country, culture,
      birthday, deathday, faceUrl, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignerImplCopyWith<_$DesignerImpl> get copyWith =>
      __$$DesignerImplCopyWithImpl<_$DesignerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignerImplToJson(
      this,
    );
  }
}

abstract class _Designer extends Designer {
  const factory _Designer(
      {required final String enName,
      required final String jaName,
      required final String country,
      required final String culture,
      required final DateTime birthday,
      final DateTime? deathday,
      required final String faceUrl,
      required final String memo}) = _$DesignerImpl;
  const _Designer._() : super._();

  factory _Designer.fromJson(Map<String, dynamic> json) =
      _$DesignerImpl.fromJson;

  @override
  String get enName;
  @override
  String get jaName;
  @override
  String get country;
  @override
  String get culture;
  @override
  DateTime get birthday;
  @override
  DateTime? get deathday;
  @override
  String get faceUrl;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$DesignerImplCopyWith<_$DesignerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
