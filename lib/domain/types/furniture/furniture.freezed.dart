// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'furniture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Furniture _$FurnitureFromJson(Map<String, dynamic> json) {
  return _Furniture.fromJson(json);
}

/// @nodoc
mixin _$Furniture {
  String get enName => throw _privateConstructorUsedError;
  String get jaName => throw _privateConstructorUsedError;
  int get designedYear => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Designer get designer => throw _privateConstructorUsedError; // まだ
  Brand get brand => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FurnitureCopyWith<Furniture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FurnitureCopyWith<$Res> {
  factory $FurnitureCopyWith(Furniture value, $Res Function(Furniture) then) =
      _$FurnitureCopyWithImpl<$Res, Furniture>;
  @useResult
  $Res call(
      {String enName,
      String jaName,
      int designedYear,
      String type,
      Designer designer,
      Brand brand,
      String imageUrl,
      String memo});

  $DesignerCopyWith<$Res> get designer;
  $BrandCopyWith<$Res> get brand;
}

/// @nodoc
class _$FurnitureCopyWithImpl<$Res, $Val extends Furniture>
    implements $FurnitureCopyWith<$Res> {
  _$FurnitureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enName = null,
    Object? jaName = null,
    Object? designedYear = null,
    Object? type = null,
    Object? designer = null,
    Object? brand = null,
    Object? imageUrl = null,
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
      designedYear: null == designedYear
          ? _value.designedYear
          : designedYear // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      designer: null == designer
          ? _value.designer
          : designer // ignore: cast_nullable_to_non_nullable
              as Designer,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignerCopyWith<$Res> get designer {
    return $DesignerCopyWith<$Res>(_value.designer, (value) {
      return _then(_value.copyWith(designer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get brand {
    return $BrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FurnitureImplCopyWith<$Res>
    implements $FurnitureCopyWith<$Res> {
  factory _$$FurnitureImplCopyWith(
          _$FurnitureImpl value, $Res Function(_$FurnitureImpl) then) =
      __$$FurnitureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String enName,
      String jaName,
      int designedYear,
      String type,
      Designer designer,
      Brand brand,
      String imageUrl,
      String memo});

  @override
  $DesignerCopyWith<$Res> get designer;
  @override
  $BrandCopyWith<$Res> get brand;
}

/// @nodoc
class __$$FurnitureImplCopyWithImpl<$Res>
    extends _$FurnitureCopyWithImpl<$Res, _$FurnitureImpl>
    implements _$$FurnitureImplCopyWith<$Res> {
  __$$FurnitureImplCopyWithImpl(
      _$FurnitureImpl _value, $Res Function(_$FurnitureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enName = null,
    Object? jaName = null,
    Object? designedYear = null,
    Object? type = null,
    Object? designer = null,
    Object? brand = null,
    Object? imageUrl = null,
    Object? memo = null,
  }) {
    return _then(_$FurnitureImpl(
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      jaName: null == jaName
          ? _value.jaName
          : jaName // ignore: cast_nullable_to_non_nullable
              as String,
      designedYear: null == designedYear
          ? _value.designedYear
          : designedYear // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      designer: null == designer
          ? _value.designer
          : designer // ignore: cast_nullable_to_non_nullable
              as Designer,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
class _$FurnitureImpl with DiagnosticableTreeMixin implements _Furniture {
  const _$FurnitureImpl(
      {required this.enName,
      required this.jaName,
      required this.designedYear,
      required this.type,
      required this.designer,
      required this.brand,
      required this.imageUrl,
      required this.memo});

  factory _$FurnitureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FurnitureImplFromJson(json);

  @override
  final String enName;
  @override
  final String jaName;
  @override
  final int designedYear;
  @override
  final String type;
  @override
  final Designer designer;
// まだ
  @override
  final Brand brand;
  @override
  final String imageUrl;
  @override
  final String memo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Furniture(enName: $enName, jaName: $jaName, designedYear: $designedYear, type: $type, designer: $designer, brand: $brand, imageUrl: $imageUrl, memo: $memo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Furniture'))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('jaName', jaName))
      ..add(DiagnosticsProperty('designedYear', designedYear))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('designer', designer))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('memo', memo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FurnitureImpl &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.jaName, jaName) || other.jaName == jaName) &&
            (identical(other.designedYear, designedYear) ||
                other.designedYear == designedYear) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.designer, designer) ||
                other.designer == designer) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enName, jaName, designedYear,
      type, designer, brand, imageUrl, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FurnitureImplCopyWith<_$FurnitureImpl> get copyWith =>
      __$$FurnitureImplCopyWithImpl<_$FurnitureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FurnitureImplToJson(
      this,
    );
  }
}

abstract class _Furniture implements Furniture {
  const factory _Furniture(
      {required final String enName,
      required final String jaName,
      required final int designedYear,
      required final String type,
      required final Designer designer,
      required final Brand brand,
      required final String imageUrl,
      required final String memo}) = _$FurnitureImpl;

  factory _Furniture.fromJson(Map<String, dynamic> json) =
      _$FurnitureImpl.fromJson;

  @override
  String get enName;
  @override
  String get jaName;
  @override
  int get designedYear;
  @override
  String get type;
  @override
  Designer get designer;
  @override // まだ
  Brand get brand;
  @override
  String get imageUrl;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$FurnitureImplCopyWith<_$FurnitureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
