import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/movie/booking_result_section/booking_result_page.dart';
import 'package:moviebee/presentation/movie/booking_sections/checkout_movie_page.dart';
import 'package:moviebee/presentation/movie/booking_sections/date_time_theater_selection_page.dart';
import 'package:moviebee/presentation/movie/booking_sections/seat_selection_page.dart';
import 'package:moviebee/presentation/movie/home/detailed_cs_view_page.dart';
import 'package:moviebee/presentation/movie/home/detailed_view_page.dart';
import 'package:moviebee/presentation/movie/home/home_page.dart';
import 'package:moviebee/presentation/movie/home/password_hint_page.dart';
import 'package:moviebee/presentation/movie/ticket/ticket_page.dart';
import 'package:moviebee/presentation/movie/ticket/tickets_display_page.dart';
import 'package:moviebee/presentation/movie/wallet/topup_wallet_page.dart';
import 'package:moviebee/presentation/movie/wallet/view_balance_page.dart';
import 'package:moviebee/presentation/sign_in_up/get_otp_page.dart';
import 'package:moviebee/presentation/sign_in_up/sign_in_page.dart';
import 'package:moviebee/presentation/sign_in_up/sign_up_page.dart';
import 'package:moviebee/presentation/sign_in_up/verify_otp_page.dart';
import 'package:moviebee/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: GetOtpPage),
    AutoRoute(page: VerifyOtpPage),
    AutoRoute(page: PasswordHintPage),
    AutoRoute(page: DetailedViewPage),
    AutoRoute(page: DetailedCMViewPage),
    AutoRoute(page: DateTimeTheaterSelectionPage),
    AutoRoute(page: SeatSelectionPage),
    AutoRoute(page: CheckoutMoviePage),
    AutoRoute(page: ViewBalancePage),
    AutoRoute(page: TopUpWalletPage),
    AutoRoute(page: TicketDisplayPage),
    AutoRoute(page: BookingResultPage),
    AutoRoute(page: TicketPage),
  ],
  preferRelativeImports: true,
)
class $AppRouter {}
