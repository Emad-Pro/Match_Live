// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_schedule_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MatchScheduleState {
  DateTime get selectedDateMatch => throw _privateConstructorUsedError;

  /// Create a copy of MatchScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchScheduleStateCopyWith<MatchScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchScheduleStateCopyWith<$Res> {
  factory $MatchScheduleStateCopyWith(
          MatchScheduleState value, $Res Function(MatchScheduleState) then) =
      _$MatchScheduleStateCopyWithImpl<$Res, MatchScheduleState>;
  @useResult
  $Res call({DateTime selectedDateMatch});
}

/// @nodoc
class _$MatchScheduleStateCopyWithImpl<$Res, $Val extends MatchScheduleState>
    implements $MatchScheduleStateCopyWith<$Res> {
  _$MatchScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateMatch = null,
  }) {
    return _then(_value.copyWith(
      selectedDateMatch: null == selectedDateMatch
          ? _value.selectedDateMatch
          : selectedDateMatch // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchScheduleStateImplCopyWith<$Res>
    implements $MatchScheduleStateCopyWith<$Res> {
  factory _$$MatchScheduleStateImplCopyWith(_$MatchScheduleStateImpl value,
          $Res Function(_$MatchScheduleStateImpl) then) =
      __$$MatchScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDateMatch});
}

/// @nodoc
class __$$MatchScheduleStateImplCopyWithImpl<$Res>
    extends _$MatchScheduleStateCopyWithImpl<$Res, _$MatchScheduleStateImpl>
    implements _$$MatchScheduleStateImplCopyWith<$Res> {
  __$$MatchScheduleStateImplCopyWithImpl(_$MatchScheduleStateImpl _value,
      $Res Function(_$MatchScheduleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateMatch = null,
  }) {
    return _then(_$MatchScheduleStateImpl(
      selectedDateMatch: null == selectedDateMatch
          ? _value.selectedDateMatch
          : selectedDateMatch // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MatchScheduleStateImpl implements _MatchScheduleState {
  const _$MatchScheduleStateImpl({required this.selectedDateMatch});

  @override
  final DateTime selectedDateMatch;

  @override
  String toString() {
    return 'MatchScheduleState(selectedDateMatch: $selectedDateMatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchScheduleStateImpl &&
            (identical(other.selectedDateMatch, selectedDateMatch) ||
                other.selectedDateMatch == selectedDateMatch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateMatch);

  /// Create a copy of MatchScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchScheduleStateImplCopyWith<_$MatchScheduleStateImpl> get copyWith =>
      __$$MatchScheduleStateImplCopyWithImpl<_$MatchScheduleStateImpl>(
          this, _$identity);
}

abstract class _MatchScheduleState implements MatchScheduleState {
  const factory _MatchScheduleState(
      {required final DateTime selectedDateMatch}) = _$MatchScheduleStateImpl;

  @override
  DateTime get selectedDateMatch;

  /// Create a copy of MatchScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchScheduleStateImplCopyWith<_$MatchScheduleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
