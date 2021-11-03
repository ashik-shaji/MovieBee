// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingEventTearOff {
  const _$BookingEventTearOff();

  _BookingPressed bookingPressed(
      String moviename,
      String movieimage,
      String rating,
      String stars,
      String genre,
      String movieday,
      String movietime,
      String theater,
      String seatname,
      String updatedSeatsList,
      int totalAmount) {
    return _BookingPressed(
      moviename,
      movieimage,
      rating,
      stars,
      genre,
      movieday,
      movietime,
      theater,
      seatname,
      updatedSeatsList,
      totalAmount,
    );
  }
}

/// @nodoc
const $BookingEvent = _$BookingEventTearOff();

/// @nodoc
mixin _$BookingEvent {
  String get moviename => throw _privateConstructorUsedError;
  String get movieimage => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get stars => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get movieday => throw _privateConstructorUsedError;
  String get movietime => throw _privateConstructorUsedError;
  String get theater => throw _privateConstructorUsedError;
  String get seatname => throw _privateConstructorUsedError;
  String get updatedSeatsList => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String moviename,
            String movieimage,
            String rating,
            String stars,
            String genre,
            String movieday,
            String movietime,
            String theater,
            String seatname,
            String updatedSeatsList,
            int totalAmount)
        bookingPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String moviename,
            String movieimage,
            String rating,
            String stars,
            String genre,
            String movieday,
            String movietime,
            String theater,
            String seatname,
            String updatedSeatsList,
            int totalAmount)?
        bookingPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingPressed value) bookingPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingPressed value)? bookingPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingEventCopyWith<BookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res>;
  $Res call(
      {String moviename,
      String movieimage,
      String rating,
      String stars,
      String genre,
      String movieday,
      String movietime,
      String theater,
      String seatname,
      String updatedSeatsList,
      int totalAmount});
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res> implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  final BookingEvent _value;
  // ignore: unused_field
  final $Res Function(BookingEvent) _then;

  @override
  $Res call({
    Object? moviename = freezed,
    Object? movieimage = freezed,
    Object? rating = freezed,
    Object? stars = freezed,
    Object? genre = freezed,
    Object? movieday = freezed,
    Object? movietime = freezed,
    Object? theater = freezed,
    Object? seatname = freezed,
    Object? updatedSeatsList = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      moviename: moviename == freezed
          ? _value.moviename
          : moviename // ignore: cast_nullable_to_non_nullable
              as String,
      movieimage: movieimage == freezed
          ? _value.movieimage
          : movieimage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      movieday: movieday == freezed
          ? _value.movieday
          : movieday // ignore: cast_nullable_to_non_nullable
              as String,
      movietime: movietime == freezed
          ? _value.movietime
          : movietime // ignore: cast_nullable_to_non_nullable
              as String,
      theater: theater == freezed
          ? _value.theater
          : theater // ignore: cast_nullable_to_non_nullable
              as String,
      seatname: seatname == freezed
          ? _value.seatname
          : seatname // ignore: cast_nullable_to_non_nullable
              as String,
      updatedSeatsList: updatedSeatsList == freezed
          ? _value.updatedSeatsList
          : updatedSeatsList // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BookingPressedCopyWith<$Res>
    implements $BookingEventCopyWith<$Res> {
  factory _$BookingPressedCopyWith(
          _BookingPressed value, $Res Function(_BookingPressed) then) =
      __$BookingPressedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String moviename,
      String movieimage,
      String rating,
      String stars,
      String genre,
      String movieday,
      String movietime,
      String theater,
      String seatname,
      String updatedSeatsList,
      int totalAmount});
}

/// @nodoc
class __$BookingPressedCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res>
    implements _$BookingPressedCopyWith<$Res> {
  __$BookingPressedCopyWithImpl(
      _BookingPressed _value, $Res Function(_BookingPressed) _then)
      : super(_value, (v) => _then(v as _BookingPressed));

  @override
  _BookingPressed get _value => super._value as _BookingPressed;

  @override
  $Res call({
    Object? moviename = freezed,
    Object? movieimage = freezed,
    Object? rating = freezed,
    Object? stars = freezed,
    Object? genre = freezed,
    Object? movieday = freezed,
    Object? movietime = freezed,
    Object? theater = freezed,
    Object? seatname = freezed,
    Object? updatedSeatsList = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_BookingPressed(
      moviename == freezed
          ? _value.moviename
          : moviename // ignore: cast_nullable_to_non_nullable
              as String,
      movieimage == freezed
          ? _value.movieimage
          : movieimage // ignore: cast_nullable_to_non_nullable
              as String,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as String,
      genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      movieday == freezed
          ? _value.movieday
          : movieday // ignore: cast_nullable_to_non_nullable
              as String,
      movietime == freezed
          ? _value.movietime
          : movietime // ignore: cast_nullable_to_non_nullable
              as String,
      theater == freezed
          ? _value.theater
          : theater // ignore: cast_nullable_to_non_nullable
              as String,
      seatname == freezed
          ? _value.seatname
          : seatname // ignore: cast_nullable_to_non_nullable
              as String,
      updatedSeatsList == freezed
          ? _value.updatedSeatsList
          : updatedSeatsList // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BookingPressed implements _BookingPressed {
  const _$_BookingPressed(
      this.moviename,
      this.movieimage,
      this.rating,
      this.stars,
      this.genre,
      this.movieday,
      this.movietime,
      this.theater,
      this.seatname,
      this.updatedSeatsList,
      this.totalAmount);

  @override
  final String moviename;
  @override
  final String movieimage;
  @override
  final String rating;
  @override
  final String stars;
  @override
  final String genre;
  @override
  final String movieday;
  @override
  final String movietime;
  @override
  final String theater;
  @override
  final String seatname;
  @override
  final String updatedSeatsList;
  @override
  final int totalAmount;

  @override
  String toString() {
    return 'BookingEvent.bookingPressed(moviename: $moviename, movieimage: $movieimage, rating: $rating, stars: $stars, genre: $genre, movieday: $movieday, movietime: $movietime, theater: $theater, seatname: $seatname, updatedSeatsList: $updatedSeatsList, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingPressed &&
            (identical(other.moviename, moviename) ||
                const DeepCollectionEquality()
                    .equals(other.moviename, moviename)) &&
            (identical(other.movieimage, movieimage) ||
                const DeepCollectionEquality()
                    .equals(other.movieimage, movieimage)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.stars, stars) ||
                const DeepCollectionEquality().equals(other.stars, stars)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.movieday, movieday) ||
                const DeepCollectionEquality()
                    .equals(other.movieday, movieday)) &&
            (identical(other.movietime, movietime) ||
                const DeepCollectionEquality()
                    .equals(other.movietime, movietime)) &&
            (identical(other.theater, theater) ||
                const DeepCollectionEquality()
                    .equals(other.theater, theater)) &&
            (identical(other.seatname, seatname) ||
                const DeepCollectionEquality()
                    .equals(other.seatname, seatname)) &&
            (identical(other.updatedSeatsList, updatedSeatsList) ||
                const DeepCollectionEquality()
                    .equals(other.updatedSeatsList, updatedSeatsList)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moviename) ^
      const DeepCollectionEquality().hash(movieimage) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(stars) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(movieday) ^
      const DeepCollectionEquality().hash(movietime) ^
      const DeepCollectionEquality().hash(theater) ^
      const DeepCollectionEquality().hash(seatname) ^
      const DeepCollectionEquality().hash(updatedSeatsList) ^
      const DeepCollectionEquality().hash(totalAmount);

  @JsonKey(ignore: true)
  @override
  _$BookingPressedCopyWith<_BookingPressed> get copyWith =>
      __$BookingPressedCopyWithImpl<_BookingPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String moviename,
            String movieimage,
            String rating,
            String stars,
            String genre,
            String movieday,
            String movietime,
            String theater,
            String seatname,
            String updatedSeatsList,
            int totalAmount)
        bookingPressed,
  }) {
    return bookingPressed(moviename, movieimage, rating, stars, genre, movieday,
        movietime, theater, seatname, updatedSeatsList, totalAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String moviename,
            String movieimage,
            String rating,
            String stars,
            String genre,
            String movieday,
            String movietime,
            String theater,
            String seatname,
            String updatedSeatsList,
            int totalAmount)?
        bookingPressed,
    required TResult orElse(),
  }) {
    if (bookingPressed != null) {
      return bookingPressed(
          moviename,
          movieimage,
          rating,
          stars,
          genre,
          movieday,
          movietime,
          theater,
          seatname,
          updatedSeatsList,
          totalAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingPressed value) bookingPressed,
  }) {
    return bookingPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingPressed value)? bookingPressed,
    required TResult orElse(),
  }) {
    if (bookingPressed != null) {
      return bookingPressed(this);
    }
    return orElse();
  }
}

abstract class _BookingPressed implements BookingEvent {
  const factory _BookingPressed(
      String moviename,
      String movieimage,
      String rating,
      String stars,
      String genre,
      String movieday,
      String movietime,
      String theater,
      String seatname,
      String updatedSeatsList,
      int totalAmount) = _$_BookingPressed;

  @override
  String get moviename => throw _privateConstructorUsedError;
  @override
  String get movieimage => throw _privateConstructorUsedError;
  @override
  String get rating => throw _privateConstructorUsedError;
  @override
  String get stars => throw _privateConstructorUsedError;
  @override
  String get genre => throw _privateConstructorUsedError;
  @override
  String get movieday => throw _privateConstructorUsedError;
  @override
  String get movietime => throw _privateConstructorUsedError;
  @override
  String get theater => throw _privateConstructorUsedError;
  @override
  String get seatname => throw _privateConstructorUsedError;
  @override
  String get updatedSeatsList => throw _privateConstructorUsedError;
  @override
  int get totalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookingPressedCopyWith<_BookingPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookingStateTearOff {
  const _$BookingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }

  _LoadFailure loadFailure(MovieFailure movieFailure) {
    return _LoadFailure(
      movieFailure,
    );
  }
}

/// @nodoc
const $BookingState = _$BookingStateTearOff();

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(MovieFailure movieFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(MovieFailure movieFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res> implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  final BookingState _value;
  // ignore: unused_field
  final $Res Function(BookingState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BookingStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(MovieFailure movieFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(MovieFailure movieFailure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BookingState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(MovieFailure movieFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(MovieFailure movieFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BookingState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$BookingStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'BookingState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(MovieFailure movieFailure) loadFailure,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(MovieFailure movieFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BookingState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({MovieFailure movieFailure});

  $MovieFailureCopyWith<$Res> get movieFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$BookingStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? movieFailure = freezed,
  }) {
    return _then(_LoadFailure(
      movieFailure == freezed
          ? _value.movieFailure
          : movieFailure // ignore: cast_nullable_to_non_nullable
              as MovieFailure,
    ));
  }

  @override
  $MovieFailureCopyWith<$Res> get movieFailure {
    return $MovieFailureCopyWith<$Res>(_value.movieFailure, (value) {
      return _then(_value.copyWith(movieFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.movieFailure);

  @override
  final MovieFailure movieFailure;

  @override
  String toString() {
    return 'BookingState.loadFailure(movieFailure: $movieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.movieFailure, movieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.movieFailure, movieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(MovieFailure movieFailure) loadFailure,
  }) {
    return loadFailure(movieFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(MovieFailure movieFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(movieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BookingState {
  const factory _LoadFailure(MovieFailure movieFailure) = _$_LoadFailure;

  MovieFailure get movieFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
