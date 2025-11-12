// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CurrentLoginInformationModel currentLoginInformationModel)
        success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitialState value) initial,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashSuccessState value) success,
    required TResult Function(SplashFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitialState value)? initial,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashSuccessState value)? success,
    TResult? Function(SplashFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitialState value)? initial,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashSuccessState value)? success,
    TResult Function(SplashFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SplashInitialStateImplCopyWith<$Res> {
  factory _$$SplashInitialStateImplCopyWith(_$SplashInitialStateImpl value,
          $Res Function(_$SplashInitialStateImpl) then) =
      __$$SplashInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashInitialStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashInitialStateImpl>
    implements _$$SplashInitialStateImplCopyWith<$Res> {
  __$$SplashInitialStateImplCopyWithImpl(_$SplashInitialStateImpl _value,
      $Res Function(_$SplashInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashInitialStateImpl implements SplashInitialState {
  const _$SplashInitialStateImpl();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CurrentLoginInformationModel currentLoginInformationModel)
        success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitialState value) initial,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashSuccessState value) success,
    required TResult Function(SplashFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitialState value)? initial,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashSuccessState value)? success,
    TResult? Function(SplashFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitialState value)? initial,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashSuccessState value)? success,
    TResult Function(SplashFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashInitialState implements SplashState {
  const factory SplashInitialState() = _$SplashInitialStateImpl;
}

/// @nodoc
abstract class _$$SplashLoadingStateImplCopyWith<$Res> {
  factory _$$SplashLoadingStateImplCopyWith(_$SplashLoadingStateImpl value,
          $Res Function(_$SplashLoadingStateImpl) then) =
      __$$SplashLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashLoadingStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashLoadingStateImpl>
    implements _$$SplashLoadingStateImplCopyWith<$Res> {
  __$$SplashLoadingStateImplCopyWithImpl(_$SplashLoadingStateImpl _value,
      $Res Function(_$SplashLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashLoadingStateImpl implements SplashLoadingState {
  const _$SplashLoadingStateImpl();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CurrentLoginInformationModel currentLoginInformationModel)
        success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult Function(String error)? failure,
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
    required TResult Function(SplashInitialState value) initial,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashSuccessState value) success,
    required TResult Function(SplashFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitialState value)? initial,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashSuccessState value)? success,
    TResult? Function(SplashFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitialState value)? initial,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashSuccessState value)? success,
    TResult Function(SplashFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SplashLoadingState implements SplashState {
  const factory SplashLoadingState() = _$SplashLoadingStateImpl;
}

/// @nodoc
abstract class _$$SplashSuccessStateImplCopyWith<$Res> {
  factory _$$SplashSuccessStateImplCopyWith(_$SplashSuccessStateImpl value,
          $Res Function(_$SplashSuccessStateImpl) then) =
      __$$SplashSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentLoginInformationModel currentLoginInformationModel});
}

/// @nodoc
class __$$SplashSuccessStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashSuccessStateImpl>
    implements _$$SplashSuccessStateImplCopyWith<$Res> {
  __$$SplashSuccessStateImplCopyWithImpl(_$SplashSuccessStateImpl _value,
      $Res Function(_$SplashSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLoginInformationModel = null,
  }) {
    return _then(_$SplashSuccessStateImpl(
      null == currentLoginInformationModel
          ? _value.currentLoginInformationModel
          : currentLoginInformationModel // ignore: cast_nullable_to_non_nullable
              as CurrentLoginInformationModel,
    ));
  }
}

/// @nodoc

class _$SplashSuccessStateImpl implements SplashSuccessState {
  const _$SplashSuccessStateImpl(this.currentLoginInformationModel);

  @override
  final CurrentLoginInformationModel currentLoginInformationModel;

  @override
  String toString() {
    return 'SplashState.success(currentLoginInformationModel: $currentLoginInformationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashSuccessStateImpl &&
            (identical(other.currentLoginInformationModel,
                    currentLoginInformationModel) ||
                other.currentLoginInformationModel ==
                    currentLoginInformationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLoginInformationModel);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashSuccessStateImplCopyWith<_$SplashSuccessStateImpl> get copyWith =>
      __$$SplashSuccessStateImplCopyWithImpl<_$SplashSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CurrentLoginInformationModel currentLoginInformationModel)
        success,
    required TResult Function(String error) failure,
  }) {
    return success(currentLoginInformationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(currentLoginInformationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(currentLoginInformationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitialState value) initial,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashSuccessState value) success,
    required TResult Function(SplashFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitialState value)? initial,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashSuccessState value)? success,
    TResult? Function(SplashFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitialState value)? initial,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashSuccessState value)? success,
    TResult Function(SplashFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SplashSuccessState implements SplashState {
  const factory SplashSuccessState(
          final CurrentLoginInformationModel currentLoginInformationModel) =
      _$SplashSuccessStateImpl;

  CurrentLoginInformationModel get currentLoginInformationModel;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashSuccessStateImplCopyWith<_$SplashSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SplashFailureStateImplCopyWith<$Res> {
  factory _$$SplashFailureStateImplCopyWith(_$SplashFailureStateImpl value,
          $Res Function(_$SplashFailureStateImpl) then) =
      __$$SplashFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SplashFailureStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashFailureStateImpl>
    implements _$$SplashFailureStateImplCopyWith<$Res> {
  __$$SplashFailureStateImplCopyWithImpl(_$SplashFailureStateImpl _value,
      $Res Function(_$SplashFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SplashFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashFailureStateImpl implements SplashFailureState {
  const _$SplashFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SplashState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashFailureStateImplCopyWith<_$SplashFailureStateImpl> get copyWith =>
      __$$SplashFailureStateImplCopyWithImpl<_$SplashFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CurrentLoginInformationModel currentLoginInformationModel)
        success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentLoginInformationModel currentLoginInformationModel)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitialState value) initial,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashSuccessState value) success,
    required TResult Function(SplashFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitialState value)? initial,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashSuccessState value)? success,
    TResult? Function(SplashFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitialState value)? initial,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashSuccessState value)? success,
    TResult Function(SplashFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SplashFailureState implements SplashState {
  const factory SplashFailureState(final String error) =
      _$SplashFailureStateImpl;

  String get error;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashFailureStateImplCopyWith<_$SplashFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
