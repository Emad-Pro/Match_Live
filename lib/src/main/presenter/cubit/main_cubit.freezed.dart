// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MainModel mainModel) success,
    required TResult Function(String errorMessage) erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MainModel mainModel)? success,
    TResult? Function(String errorMessage)? erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MainModel mainModel)? success,
    TResult Function(String errorMessage)? erorr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MainModel mainModel) success,
    required TResult Function(String errorMessage) erorr,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MainModel mainModel)? success,
    TResult? Function(String errorMessage)? erorr,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MainModel mainModel)? success,
    TResult Function(String errorMessage)? erorr,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements MainState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainModel mainModel});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainModel = null,
  }) {
    return _then(_$successImpl(
      null == mainModel
          ? _value.mainModel
          : mainModel // ignore: cast_nullable_to_non_nullable
              as MainModel,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(this.mainModel);

  @override
  final MainModel mainModel;

  @override
  String toString() {
    return 'MainState.success(mainModel: $mainModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            (identical(other.mainModel, mainModel) ||
                other.mainModel == mainModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainModel);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MainModel mainModel) success,
    required TResult Function(String errorMessage) erorr,
  }) {
    return success(mainModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MainModel mainModel)? success,
    TResult? Function(String errorMessage)? erorr,
  }) {
    return success?.call(mainModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MainModel mainModel)? success,
    TResult Function(String errorMessage)? erorr,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mainModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements MainState {
  const factory _success(final MainModel mainModel) = _$successImpl;

  MainModel get mainModel;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$erorrImplCopyWith<$Res> {
  factory _$$erorrImplCopyWith(
          _$erorrImpl value, $Res Function(_$erorrImpl) then) =
      __$$erorrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$erorrImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$erorrImpl>
    implements _$$erorrImplCopyWith<$Res> {
  __$$erorrImplCopyWithImpl(
      _$erorrImpl _value, $Res Function(_$erorrImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$erorrImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$erorrImpl implements _erorr {
  const _$erorrImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MainState.erorr(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$erorrImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$erorrImplCopyWith<_$erorrImpl> get copyWith =>
      __$$erorrImplCopyWithImpl<_$erorrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MainModel mainModel) success,
    required TResult Function(String errorMessage) erorr,
  }) {
    return erorr(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MainModel mainModel)? success,
    TResult? Function(String errorMessage)? erorr,
  }) {
    return erorr?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MainModel mainModel)? success,
    TResult Function(String errorMessage)? erorr,
    required TResult orElse(),
  }) {
    if (erorr != null) {
      return erorr(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return erorr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return erorr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) {
    if (erorr != null) {
      return erorr(this);
    }
    return orElse();
  }
}

abstract class _erorr implements MainState {
  const factory _erorr(final String errorMessage) = _$erorrImpl;

  String get errorMessage;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$erorrImplCopyWith<_$erorrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
