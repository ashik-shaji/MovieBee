part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.bookingPressed(
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
    int totalAmount,
  ) = _BookingPressed;
}
