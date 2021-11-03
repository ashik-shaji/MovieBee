// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i10;
import 'application/auth/signin_form/signin_form_bloc.dart' as _i8;
import 'application/booking/bloc/booking_bloc.dart' as _i11;
import 'application/movie/bloc/movie_bloc_bloc.dart' as _i7;
import 'application/tickets/bloc/tickets_bloc.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/movie/i_movie_repository.dart' as _i5;
import 'infrastructure/auth/sql_auth_facade.dart' as _i4;
import 'infrastructure/movie/movie_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.SqlAuthFacade());
  gh.lazySingleton<_i5.IMovieRepository>(() => _i6.MovieRepository());
  gh.factory<_i7.MovieBlocBloc>(
      () => _i7.MovieBlocBloc(get<_i5.IMovieRepository>()));
  gh.factory<_i8.SigninFormBloc>(
      () => _i8.SigninFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i9.TicketsBloc>(
      () => _i9.TicketsBloc(get<_i5.IMovieRepository>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i11.BookingBloc>(() =>
      _i11.BookingBloc(get<_i5.IMovieRepository>(), get<_i3.IAuthFacade>()));
  return get;
}
