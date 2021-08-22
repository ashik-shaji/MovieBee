// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../movie/booking_sections/checkout_movie_page.dart' as _i14;
import '../movie/booking_sections/date_time_theater_selection_page.dart'
    as _i12;
import '../movie/booking_sections/seat_selection_page.dart' as _i13;
import '../movie/home/detailed_cs_view_page.dart' as _i11;
import '../movie/home/detailed_view_page.dart' as _i10;
import '../movie/home/home_page.dart' as _i5;
import '../movie/home/password_hint_page.dart' as _i9;
import '../movie/wallet/topup_wallet_page.dart' as _i16;
import '../movie/wallet/view_balance_page.dart' as _i15;
import '../sign_in_up/get_otp_page.dart' as _i7;
import '../sign_in_up/sign_in_page.dart' as _i4;
import '../sign_in_up/sign_up_page.dart' as _i6;
import '../sign_in_up/verify_otp_page.dart' as _i8;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        }),
    SignUpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignUpPage();
        }),
    GetOtpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.GetOtpPage();
        }),
    VerifyOtpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.VerifyOtpPage();
        }),
    PasswordHintPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.PasswordHintPage();
        }),
    DetailedViewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetailedViewPageRouteArgs>();
          return _i10.DetailedViewPage(
              movieName: args.movieName,
              movieImage: args.movieImage,
              rating: args.rating,
              stars: args.stars,
              gerne: args.gerne,
              storyLine: args.storyLine,
              person1: args.person1,
              person1Image: args.person1Image,
              person2: args.person2,
              person2Image: args.person2Image,
              person3: args.person3,
              person3Image: args.person3Image,
              person4: args.person4,
              person4Image: args.person4Image);
        }),
    DetailedCMViewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetailedCMViewPageRouteArgs>();
          return _i11.DetailedCMViewPage(
              movieName: args.movieName,
              movieImage: args.movieImage,
              rating: args.rating,
              stars: args.stars,
              gerne: args.gerne,
              storyLine: args.storyLine,
              person1: args.person1,
              person1Image: args.person1Image,
              person2: args.person2,
              person2Image: args.person2Image,
              person3: args.person3,
              person3Image: args.person3Image,
              person4: args.person4,
              person4Image: args.person4Image);
        }),
    DateTimeTheaterSelectionPageRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<DateTimeTheaterSelectionPageRouteArgs>();
              return _i12.DateTimeTheaterSelectionPage(
                  key: args.key,
                  movieName: args.movieName,
                  movieImage: args.movieImage,
                  rating: args.rating,
                  stars: args.stars,
                  gerne: args.gerne);
            }),
    SeatSelectionPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SeatSelectionPageRouteArgs>();
          return _i13.SeatSelectionPage(
              key: args.key,
              movieName: args.movieName,
              movieImage: args.movieImage,
              rating: args.rating,
              stars: args.stars,
              gerne: args.gerne,
              movieDay: args.movieDay,
              movieTime: args.movieTime,
              theater: args.theater);
        }),
    CheckoutMoviePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CheckoutMoviePageRouteArgs>();
          return _i14.CheckoutMoviePage(
              key: args.key,
              movieName: args.movieName,
              movieImage: args.movieImage,
              rating: args.rating,
              stars: args.stars,
              gerne: args.gerne,
              movieDay: args.movieDay,
              movieTime: args.movieTime,
              theater: args.theater,
              seatName: args.seatName,
              seatCount: args.seatCount,
              updatedSeatsList: args.updatedSeatsList);
        }),
    ViewBalancePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.ViewBalancePage();
        }),
    TopUpWalletPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TopUpWalletPageRouteArgs>();
          return _i16.TopUpWalletPage(key: args.key, balance: args.balance);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(GetOtpPageRoute.name, path: '/get-otp-page'),
        _i1.RouteConfig(VerifyOtpPageRoute.name, path: '/verify-otp-page'),
        _i1.RouteConfig(PasswordHintPageRoute.name,
            path: '/password-hint-page'),
        _i1.RouteConfig(DetailedViewPageRoute.name,
            path: '/detailed-view-page'),
        _i1.RouteConfig(DetailedCMViewPageRoute.name,
            path: '/detailed-cm-view-page'),
        _i1.RouteConfig(DateTimeTheaterSelectionPageRoute.name,
            path: '/date-time-theater-selection-page'),
        _i1.RouteConfig(SeatSelectionPageRoute.name,
            path: '/seat-selection-page'),
        _i1.RouteConfig(CheckoutMoviePageRoute.name,
            path: '/checkout-movie-page'),
        _i1.RouteConfig(ViewBalancePageRoute.name, path: '/view-balance-page'),
        _i1.RouteConfig(TopUpWalletPageRoute.name, path: '/top-up-wallet-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class SignUpPageRoute extends _i1.PageRouteInfo {
  const SignUpPageRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

class GetOtpPageRoute extends _i1.PageRouteInfo {
  const GetOtpPageRoute() : super(name, path: '/get-otp-page');

  static const String name = 'GetOtpPageRoute';
}

class VerifyOtpPageRoute extends _i1.PageRouteInfo {
  const VerifyOtpPageRoute() : super(name, path: '/verify-otp-page');

  static const String name = 'VerifyOtpPageRoute';
}

class PasswordHintPageRoute extends _i1.PageRouteInfo {
  const PasswordHintPageRoute() : super(name, path: '/password-hint-page');

  static const String name = 'PasswordHintPageRoute';
}

class DetailedViewPageRoute
    extends _i1.PageRouteInfo<DetailedViewPageRouteArgs> {
  DetailedViewPageRoute(
      {required String movieName,
      required String movieImage,
      required String rating,
      required String stars,
      required String gerne,
      required String storyLine,
      required String person1,
      required String person1Image,
      required String person2,
      required String person2Image,
      required String person3,
      required String person3Image,
      required String person4,
      required String person4Image})
      : super(name,
            path: '/detailed-view-page',
            args: DetailedViewPageRouteArgs(
                movieName: movieName,
                movieImage: movieImage,
                rating: rating,
                stars: stars,
                gerne: gerne,
                storyLine: storyLine,
                person1: person1,
                person1Image: person1Image,
                person2: person2,
                person2Image: person2Image,
                person3: person3,
                person3Image: person3Image,
                person4: person4,
                person4Image: person4Image));

  static const String name = 'DetailedViewPageRoute';
}

class DetailedViewPageRouteArgs {
  const DetailedViewPageRouteArgs(
      {required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.storyLine,
      required this.person1,
      required this.person1Image,
      required this.person2,
      required this.person2Image,
      required this.person3,
      required this.person3Image,
      required this.person4,
      required this.person4Image});

  final String movieName;

  final String movieImage;

  final String rating;

  final String stars;

  final String gerne;

  final String storyLine;

  final String person1;

  final String person1Image;

  final String person2;

  final String person2Image;

  final String person3;

  final String person3Image;

  final String person4;

  final String person4Image;
}

class DetailedCMViewPageRoute
    extends _i1.PageRouteInfo<DetailedCMViewPageRouteArgs> {
  DetailedCMViewPageRoute(
      {required String movieName,
      required String movieImage,
      required String rating,
      required String stars,
      required String gerne,
      required String storyLine,
      required String person1,
      required String person1Image,
      required String person2,
      required String person2Image,
      required String person3,
      required String person3Image,
      required String person4,
      required String person4Image})
      : super(name,
            path: '/detailed-cm-view-page',
            args: DetailedCMViewPageRouteArgs(
                movieName: movieName,
                movieImage: movieImage,
                rating: rating,
                stars: stars,
                gerne: gerne,
                storyLine: storyLine,
                person1: person1,
                person1Image: person1Image,
                person2: person2,
                person2Image: person2Image,
                person3: person3,
                person3Image: person3Image,
                person4: person4,
                person4Image: person4Image));

  static const String name = 'DetailedCMViewPageRoute';
}

class DetailedCMViewPageRouteArgs {
  const DetailedCMViewPageRouteArgs(
      {required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.storyLine,
      required this.person1,
      required this.person1Image,
      required this.person2,
      required this.person2Image,
      required this.person3,
      required this.person3Image,
      required this.person4,
      required this.person4Image});

  final String movieName;

  final String movieImage;

  final String rating;

  final String stars;

  final String gerne;

  final String storyLine;

  final String person1;

  final String person1Image;

  final String person2;

  final String person2Image;

  final String person3;

  final String person3Image;

  final String person4;

  final String person4Image;
}

class DateTimeTheaterSelectionPageRoute
    extends _i1.PageRouteInfo<DateTimeTheaterSelectionPageRouteArgs> {
  DateTimeTheaterSelectionPageRoute(
      {_i2.Key? key,
      required String movieName,
      required String movieImage,
      required String rating,
      required String stars,
      required String gerne})
      : super(name,
            path: '/date-time-theater-selection-page',
            args: DateTimeTheaterSelectionPageRouteArgs(
                key: key,
                movieName: movieName,
                movieImage: movieImage,
                rating: rating,
                stars: stars,
                gerne: gerne));

  static const String name = 'DateTimeTheaterSelectionPageRoute';
}

class DateTimeTheaterSelectionPageRouteArgs {
  const DateTimeTheaterSelectionPageRouteArgs(
      {this.key,
      required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne});

  final _i2.Key? key;

  final String movieName;

  final String movieImage;

  final String rating;

  final String stars;

  final String gerne;
}

class SeatSelectionPageRoute
    extends _i1.PageRouteInfo<SeatSelectionPageRouteArgs> {
  SeatSelectionPageRoute(
      {_i2.Key? key,
      required String movieName,
      required String movieImage,
      required String rating,
      required String stars,
      required String gerne,
      required String movieDay,
      required String movieTime,
      required String theater})
      : super(name,
            path: '/seat-selection-page',
            args: SeatSelectionPageRouteArgs(
                key: key,
                movieName: movieName,
                movieImage: movieImage,
                rating: rating,
                stars: stars,
                gerne: gerne,
                movieDay: movieDay,
                movieTime: movieTime,
                theater: theater));

  static const String name = 'SeatSelectionPageRoute';
}

class SeatSelectionPageRouteArgs {
  const SeatSelectionPageRouteArgs(
      {this.key,
      required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.movieDay,
      required this.movieTime,
      required this.theater});

  final _i2.Key? key;

  final String movieName;

  final String movieImage;

  final String rating;

  final String stars;

  final String gerne;

  final String movieDay;

  final String movieTime;

  final String theater;
}

class CheckoutMoviePageRoute
    extends _i1.PageRouteInfo<CheckoutMoviePageRouteArgs> {
  CheckoutMoviePageRoute(
      {_i2.Key? key,
      required String movieName,
      required String movieImage,
      required String rating,
      required String stars,
      required String gerne,
      required String movieDay,
      required String movieTime,
      required String theater,
      required String seatName,
      required int seatCount,
      required String updatedSeatsList})
      : super(name,
            path: '/checkout-movie-page',
            args: CheckoutMoviePageRouteArgs(
                key: key,
                movieName: movieName,
                movieImage: movieImage,
                rating: rating,
                stars: stars,
                gerne: gerne,
                movieDay: movieDay,
                movieTime: movieTime,
                theater: theater,
                seatName: seatName,
                seatCount: seatCount,
                updatedSeatsList: updatedSeatsList));

  static const String name = 'CheckoutMoviePageRoute';
}

class CheckoutMoviePageRouteArgs {
  const CheckoutMoviePageRouteArgs(
      {this.key,
      required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.movieDay,
      required this.movieTime,
      required this.theater,
      required this.seatName,
      required this.seatCount,
      required this.updatedSeatsList});

  final _i2.Key? key;

  final String movieName;

  final String movieImage;

  final String rating;

  final String stars;

  final String gerne;

  final String movieDay;

  final String movieTime;

  final String theater;

  final String seatName;

  final int seatCount;

  final String updatedSeatsList;
}

class ViewBalancePageRoute extends _i1.PageRouteInfo {
  const ViewBalancePageRoute() : super(name, path: '/view-balance-page');

  static const String name = 'ViewBalancePageRoute';
}

class TopUpWalletPageRoute extends _i1.PageRouteInfo<TopUpWalletPageRouteArgs> {
  TopUpWalletPageRoute({_i2.Key? key, required String? balance})
      : super(name,
            path: '/top-up-wallet-page',
            args: TopUpWalletPageRouteArgs(key: key, balance: balance));

  static const String name = 'TopUpWalletPageRoute';
}

class TopUpWalletPageRouteArgs {
  const TopUpWalletPageRouteArgs({this.key, required this.balance});

  final _i2.Key? key;

  final String? balance;
}
