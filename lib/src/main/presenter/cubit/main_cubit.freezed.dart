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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
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
abstract class _$$MainStateImplCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying, Duration currentPosition, Duration totalDuration});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? currentPosition = null,
    Object? totalDuration = null,
  }) {
    return _then(_$MainStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {required this.isPlaying,
      required this.currentPosition,
      required this.totalDuration});

  @override
  final bool isPlaying;
  @override
  final Duration currentPosition;
  @override
  final Duration totalDuration;

  @override
  String toString() {
    return 'MainState(isPlaying: $isPlaying, currentPosition: $currentPosition, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPlaying, currentPosition, totalDuration);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) {
    return $default(isPlaying, currentPosition, totalDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) {
    return $default?.call(isPlaying, currentPosition, totalDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isPlaying, currentPosition, totalDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {required final bool isPlaying,
      required final Duration currentPosition,
      required final Duration totalDuration}) = _$MainStateImpl;

  bool get isPlaying;
  Duration get currentPosition;
  Duration get totalDuration;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_erorr value)? erorr,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
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
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl();

  @override
  String toString() {
    return 'MainState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$successImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
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
  const factory _success() = _$successImpl;
}

/// @nodoc
abstract class _$$erorrImplCopyWith<$Res> {
  factory _$$erorrImplCopyWith(
          _$erorrImpl value, $Res Function(_$erorrImpl) then) =
      __$$erorrImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$erorrImpl implements _erorr {
  const _$erorrImpl();

  @override
  String toString() {
    return 'MainState.erorr()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$erorrImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() erorr,
  }) {
    return erorr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? erorr,
  }) {
    return erorr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isPlaying, Duration currentPosition, Duration totalDuration)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? erorr,
    required TResult orElse(),
  }) {
    if (erorr != null) {
      return erorr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_erorr value) erorr,
  }) {
    return erorr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_erorr value)? erorr,
  }) {
    return erorr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(_Initial value)? initial,
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
  const factory _erorr() = _$erorrImpl;
}
