// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkError _$NetworkErrorFromJson(Map<String, dynamic> json) {
  return _NetworkError.fromJson(json);
}

/// @nodoc
mixin _$NetworkError {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkErrorCopyWith<NetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res, NetworkError>;
  @useResult
  $Res call(
      {String title, String description, int? statusCode, bool isVisible});
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res, $Val extends NetworkError>
    implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? statusCode = freezed,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $NetworkErrorCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String description, int? statusCode, bool isVisible});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? statusCode = freezed,
    Object? isVisible = null,
  }) {
    return _then(_$NetworkErrorImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkErrorImpl implements _NetworkError {
  _$NetworkErrorImpl(
      {this.title = '',
      required this.description,
      this.statusCode,
      this.isVisible = false});

  factory _$NetworkErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkErrorImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  final String description;
  @override
  final int? statusCode;
  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'NetworkError(title: $title, description: $description, statusCode: $statusCode, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, statusCode, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkErrorImplToJson(
      this,
    );
  }
}

abstract class _NetworkError implements NetworkError {
  factory _NetworkError(
      {final String title,
      required final String description,
      final int? statusCode,
      final bool isVisible}) = _$NetworkErrorImpl;

  factory _NetworkError.fromJson(Map<String, dynamic> json) =
      _$NetworkErrorImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get statusCode;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
