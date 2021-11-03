part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loadInProgress() = _LoadInProgress;
  const factory BookingState.loadSuccess() = _LoadSuccess;
  const factory BookingState.loadFailure(MovieFailure movieFailure) =
      _LoadFailure;
}
