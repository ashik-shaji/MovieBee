// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieBlocEventTearOff {
  const _$MovieBlocEventTearOff();

  GetMovieSeats getMovieSeats(String movieNameStr, String theater) {
    return GetMovieSeats(
      movieNameStr,
      theater,
    );
  }
}

/// @nodoc
const $MovieBlocEvent = _$MovieBlocEventTearOff();

/// @nodoc
mixin _$MovieBlocEvent {
  String get movieNameStr => throw _privateConstructorUsedError;
  String get theater => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieNameStr, String theater)
        getMovieSeats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieNameStr, String theater)? getMovieSeats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieSeats value) getMovieSeats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieSeats value)? getMovieSeats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieBlocEventCopyWith<MovieBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieBlocEventCopyWith<$Res> {
  factory $MovieBlocEventCopyWith(
          MovieBlocEvent value, $Res Function(MovieBlocEvent) then) =
      _$MovieBlocEventCopyWithImpl<$Res>;
  $Res call({String movieNameStr, String theater});
}

/// @nodoc
class _$MovieBlocEventCopyWithImpl<$Res>
    implements $MovieBlocEventCopyWith<$Res> {
  _$MovieBlocEventCopyWithImpl(this._value, this._then);

  final MovieBlocEvent _value;
  // ignore: unused_field
  final $Res Function(MovieBlocEvent) _then;

  @override
  $Res call({
    Object? movieNameStr = freezed,
    Object? theater = freezed,
  }) {
    return _then(_value.copyWith(
      movieNameStr: movieNameStr == freezed
          ? _value.movieNameStr
          : movieNameStr // ignore: cast_nullable_to_non_nullable
              as String,
      theater: theater == freezed
          ? _value.theater
          : theater // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetMovieSeatsCopyWith<$Res>
    implements $MovieBlocEventCopyWith<$Res> {
  factory $GetMovieSeatsCopyWith(
          GetMovieSeats value, $Res Function(GetMovieSeats) then) =
      _$GetMovieSeatsCopyWithImpl<$Res>;
  @override
  $Res call({String movieNameStr, String theater});
}

/// @nodoc
class _$GetMovieSeatsCopyWithImpl<$Res>
    extends _$MovieBlocEventCopyWithImpl<$Res>
    implements $GetMovieSeatsCopyWith<$Res> {
  _$GetMovieSeatsCopyWithImpl(
      GetMovieSeats _value, $Res Function(GetMovieSeats) _then)
      : super(_value, (v) => _then(v as GetMovieSeats));

  @override
  GetMovieSeats get _value => super._value as GetMovieSeats;

  @override
  $Res call({
    Object? movieNameStr = freezed,
    Object? theater = freezed,
  }) {
    return _then(GetMovieSeats(
      movieNameStr == freezed
          ? _value.movieNameStr
          : movieNameStr // ignore: cast_nullable_to_non_nullable
              as String,
      theater == freezed
          ? _value.theater
          : theater // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieSeats implements GetMovieSeats {
  const _$GetMovieSeats(this.movieNameStr, this.theater);

  @override
  final String movieNameStr;
  @override
  final String theater;

  @override
  String toString() {
    return 'MovieBlocEvent.getMovieSeats(movieNameStr: $movieNameStr, theater: $theater)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMovieSeats &&
            (identical(other.movieNameStr, movieNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.movieNameStr, movieNameStr)) &&
            (identical(other.theater, theater) ||
                const DeepCollectionEquality().equals(other.theater, theater)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieNameStr) ^
      const DeepCollectionEquality().hash(theater);

  @JsonKey(ignore: true)
  @override
  $GetMovieSeatsCopyWith<GetMovieSeats> get copyWith =>
      _$GetMovieSeatsCopyWithImpl<GetMovieSeats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieNameStr, String theater)
        getMovieSeats,
  }) {
    return getMovieSeats(movieNameStr, theater);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieNameStr, String theater)? getMovieSeats,
    required TResult orElse(),
  }) {
    if (getMovieSeats != null) {
      return getMovieSeats(movieNameStr, theater);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieSeats value) getMovieSeats,
  }) {
    return getMovieSeats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieSeats value)? getMovieSeats,
    required TResult orElse(),
  }) {
    if (getMovieSeats != null) {
      return getMovieSeats(this);
    }
    return orElse();
  }
}

abstract class GetMovieSeats implements MovieBlocEvent {
  const factory GetMovieSeats(String movieNameStr, String theater) =
      _$GetMovieSeats;

  @override
  String get movieNameStr => throw _privateConstructorUsedError;
  @override
  String get theater => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetMovieSeatsCopyWith<GetMovieSeats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieBlocStateTearOff {
  const _$MovieBlocStateTearOff();

  _MovieBlocState call({required UserName? movieSeats}) {
    return _MovieBlocState(
      movieSeats: movieSeats,
    );
  }
}

/// @nodoc
const $MovieBlocState = _$MovieBlocStateTearOff();

/// @nodoc
mixin _$MovieBlocState {
  UserName? get movieSeats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieBlocStateCopyWith<MovieBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieBlocStateCopyWith<$Res> {
  factory $MovieBlocStateCopyWith(
          MovieBlocState value, $Res Function(MovieBlocState) then) =
      _$MovieBlocStateCopyWithImpl<$Res>;
  $Res call({UserName? movieSeats});
}

/// @nodoc
class _$MovieBlocStateCopyWithImpl<$Res>
    implements $MovieBlocStateCopyWith<$Res> {
  _$MovieBlocStateCopyWithImpl(this._value, this._then);

  final MovieBlocState _value;
  // ignore: unused_field
  final $Res Function(MovieBlocState) _then;

  @override
  $Res call({
    Object? movieSeats = freezed,
  }) {
    return _then(_value.copyWith(
      movieSeats: movieSeats == freezed
          ? _value.movieSeats
          : movieSeats // ignore: cast_nullable_to_non_nullable
              as UserName?,
    ));
  }
}

/// @nodoc
abstract class _$MovieBlocStateCopyWith<$Res>
    implements $MovieBlocStateCopyWith<$Res> {
  factory _$MovieBlocStateCopyWith(
          _MovieBlocState value, $Res Function(_MovieBlocState) then) =
      __$MovieBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({UserName? movieSeats});
}

/// @nodoc
class __$MovieBlocStateCopyWithImpl<$Res>
    extends _$MovieBlocStateCopyWithImpl<$Res>
    implements _$MovieBlocStateCopyWith<$Res> {
  __$MovieBlocStateCopyWithImpl(
      _MovieBlocState _value, $Res Function(_MovieBlocState) _then)
      : super(_value, (v) => _then(v as _MovieBlocState));

  @override
  _MovieBlocState get _value => super._value as _MovieBlocState;

  @override
  $Res call({
    Object? movieSeats = freezed,
  }) {
    return _then(_MovieBlocState(
      movieSeats: movieSeats == freezed
          ? _value.movieSeats
          : movieSeats // ignore: cast_nullable_to_non_nullable
              as UserName?,
    ));
  }
}

/// @nodoc

class _$_MovieBlocState implements _MovieBlocState {
  const _$_MovieBlocState({required this.movieSeats});

  @override
  final UserName? movieSeats;

  @override
  String toString() {
    return 'MovieBlocState(movieSeats: $movieSeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieBlocState &&
            (identical(other.movieSeats, movieSeats) ||
                const DeepCollectionEquality()
                    .equals(other.movieSeats, movieSeats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieSeats);

  @JsonKey(ignore: true)
  @override
  _$MovieBlocStateCopyWith<_MovieBlocState> get copyWith =>
      __$MovieBlocStateCopyWithImpl<_MovieBlocState>(this, _$identity);
}

abstract class _MovieBlocState implements MovieBlocState {
  const factory _MovieBlocState({required UserName? movieSeats}) =
      _$_MovieBlocState;

  @override
  UserName? get movieSeats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieBlocStateCopyWith<_MovieBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
