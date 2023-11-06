// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DbQuery {
  String get collection => throw _privateConstructorUsedError;
  String get property => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DbQueryCopyWith<DbQuery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbQueryCopyWith<$Res> {
  factory $DbQueryCopyWith(DbQuery value, $Res Function(DbQuery) then) =
      _$DbQueryCopyWithImpl<$Res, DbQuery>;
  @useResult
  $Res call({String collection, String property, String target, int limit});
}

/// @nodoc
class _$DbQueryCopyWithImpl<$Res, $Val extends DbQuery>
    implements $DbQueryCopyWith<$Res> {
  _$DbQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? property = null,
    Object? target = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DbQueryImplCopyWith<$Res> implements $DbQueryCopyWith<$Res> {
  factory _$$DbQueryImplCopyWith(
          _$DbQueryImpl value, $Res Function(_$DbQueryImpl) then) =
      __$$DbQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String collection, String property, String target, int limit});
}

/// @nodoc
class __$$DbQueryImplCopyWithImpl<$Res>
    extends _$DbQueryCopyWithImpl<$Res, _$DbQueryImpl>
    implements _$$DbQueryImplCopyWith<$Res> {
  __$$DbQueryImplCopyWithImpl(
      _$DbQueryImpl _value, $Res Function(_$DbQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? property = null,
    Object? target = null,
    Object? limit = null,
  }) {
    return _then(_$DbQueryImpl(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DbQueryImpl with DiagnosticableTreeMixin implements _DbQuery {
  const _$DbQueryImpl(
      {required this.collection,
      required this.property,
      required this.target,
      required this.limit});

  @override
  final String collection;
  @override
  final String property;
  @override
  final String target;
  @override
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DbQuery(collection: $collection, property: $property, target: $target, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DbQuery'))
      ..add(DiagnosticsProperty('collection', collection))
      ..add(DiagnosticsProperty('property', property))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DbQueryImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, collection, property, target, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DbQueryImplCopyWith<_$DbQueryImpl> get copyWith =>
      __$$DbQueryImplCopyWithImpl<_$DbQueryImpl>(this, _$identity);
}

abstract class _DbQuery implements DbQuery {
  const factory _DbQuery(
      {required final String collection,
      required final String property,
      required final String target,
      required final int limit}) = _$DbQueryImpl;

  @override
  String get collection;
  @override
  String get property;
  @override
  String get target;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$DbQueryImplCopyWith<_$DbQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
