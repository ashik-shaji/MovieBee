// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({String? failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({String? failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _EmptyCredential<T> emptyCredential<T>({String? failedValue}) {
    return _EmptyCredential<T>(
      failedValue: failedValue,
    );
  }

  _InvalidAmount<T> invalidAmount<T>({String? failedValue}) {
    return _InvalidAmount<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  String? get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) shortPassword,
    required TResult Function(String? failedValue) emptyCredential,
    required TResult Function(String? failedValue) invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? shortPassword,
    TResult Function(String? failedValue)? emptyCredential,
    TResult Function(String? failedValue)? invalidAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_EmptyCredential<T> value) emptyCredential,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_EmptyCredential<T> value)? emptyCredential,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) shortPassword,
    required TResult Function(String? failedValue) emptyCredential,
    required TResult Function(String? failedValue) invalidAmount,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? shortPassword,
    TResult Function(String? failedValue)? emptyCredential,
    TResult Function(String? failedValue)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_EmptyCredential<T> value) emptyCredential,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_EmptyCredential<T> value)? emptyCredential,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({String? failedValue}) = _$InvalidEmail<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) shortPassword,
    required TResult Function(String? failedValue) emptyCredential,
    required TResult Function(String? failedValue) invalidAmount,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? shortPassword,
    TResult Function(String? failedValue)? emptyCredential,
    TResult Function(String? failedValue)? invalidAmount,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_EmptyCredential<T> value) emptyCredential,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_EmptyCredential<T> value)? emptyCredential,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({String? failedValue}) = _$ShortPassword<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCredentialCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$EmptyCredentialCopyWith(
          _EmptyCredential<T> value, $Res Function(_EmptyCredential<T>) then) =
      __$EmptyCredentialCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$EmptyCredentialCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyCredentialCopyWith<T, $Res> {
  __$EmptyCredentialCopyWithImpl(
      _EmptyCredential<T> _value, $Res Function(_EmptyCredential<T>) _then)
      : super(_value, (v) => _then(v as _EmptyCredential<T>));

  @override
  _EmptyCredential<T> get _value => super._value as _EmptyCredential<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_EmptyCredential<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EmptyCredential<T> implements _EmptyCredential<T> {
  const _$_EmptyCredential({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyCredential(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyCredential<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyCredentialCopyWith<T, _EmptyCredential<T>> get copyWith =>
      __$EmptyCredentialCopyWithImpl<T, _EmptyCredential<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) shortPassword,
    required TResult Function(String? failedValue) emptyCredential,
    required TResult Function(String? failedValue) invalidAmount,
  }) {
    return emptyCredential(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? shortPassword,
    TResult Function(String? failedValue)? emptyCredential,
    TResult Function(String? failedValue)? invalidAmount,
    required TResult orElse(),
  }) {
    if (emptyCredential != null) {
      return emptyCredential(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_EmptyCredential<T> value) emptyCredential,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
  }) {
    return emptyCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_EmptyCredential<T> value)? emptyCredential,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (emptyCredential != null) {
      return emptyCredential(this);
    }
    return orElse();
  }
}

abstract class _EmptyCredential<T> implements ValueFailure<T> {
  const factory _EmptyCredential({String? failedValue}) = _$_EmptyCredential<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCredentialCopyWith<T, _EmptyCredential<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidAmountCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidAmountCopyWith(
          _InvalidAmount<T> value, $Res Function(_InvalidAmount<T>) then) =
      __$InvalidAmountCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$InvalidAmountCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidAmountCopyWith<T, $Res> {
  __$InvalidAmountCopyWithImpl(
      _InvalidAmount<T> _value, $Res Function(_InvalidAmount<T>) _then)
      : super(_value, (v) => _then(v as _InvalidAmount<T>));

  @override
  _InvalidAmount<T> get _value => super._value as _InvalidAmount<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidAmount<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InvalidAmount<T> implements _InvalidAmount<T> {
  const _$_InvalidAmount({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAmount(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidAmount<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidAmountCopyWith<T, _InvalidAmount<T>> get copyWith =>
      __$InvalidAmountCopyWithImpl<T, _InvalidAmount<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) shortPassword,
    required TResult Function(String? failedValue) emptyCredential,
    required TResult Function(String? failedValue) invalidAmount,
  }) {
    return invalidAmount(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? shortPassword,
    TResult Function(String? failedValue)? emptyCredential,
    TResult Function(String? failedValue)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_EmptyCredential<T> value) emptyCredential,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_EmptyCredential<T> value)? emptyCredential,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(this);
    }
    return orElse();
  }
}

abstract class _InvalidAmount<T> implements ValueFailure<T> {
  const factory _InvalidAmount({String? failedValue}) = _$_InvalidAmount<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidAmountCopyWith<T, _InvalidAmount<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
