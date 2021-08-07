// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieFailureTearOff {
  const _$MovieFailureTearOff();

  DatabaseError databaseError() {
    return const DatabaseError();
  }
}

/// @nodoc
const $MovieFailure = _$MovieFailureTearOff();

/// @nodoc
mixin _$MovieFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? databaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseError value) databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFailureCopyWith<$Res> {
  factory $MovieFailureCopyWith(
          MovieFailure value, $Res Function(MovieFailure) then) =
      _$MovieFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieFailureCopyWithImpl<$Res> implements $MovieFailureCopyWith<$Res> {
  _$MovieFailureCopyWithImpl(this._value, this._then);

  final MovieFailure _value;
  // ignore: unused_field
  final $Res Function(MovieFailure) _then;
}

/// @nodoc
abstract class $DatabaseErrorCopyWith<$Res> {
  factory $DatabaseErrorCopyWith(
          DatabaseError value, $Res Function(DatabaseError) then) =
      _$DatabaseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseErrorCopyWithImpl<$Res> extends _$MovieFailureCopyWithImpl<$Res>
    implements $DatabaseErrorCopyWith<$Res> {
  _$DatabaseErrorCopyWithImpl(
      DatabaseError _value, $Res Function(DatabaseError) _then)
      : super(_value, (v) => _then(v as DatabaseError));

  @override
  DatabaseError get _value => super._value as DatabaseError;
}

/// @nodoc

class _$DatabaseError implements DatabaseError {
  const _$DatabaseError();

  @override
  String toString() {
    return 'MovieFailure.databaseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DatabaseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() databaseError,
  }) {
    return databaseError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? databaseError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseError value) databaseError,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseError implements MovieFailure {
  const factory DatabaseError() = _$DatabaseError;
}
