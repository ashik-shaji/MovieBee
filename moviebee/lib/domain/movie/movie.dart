import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviebee/domain/core/value_objects.dart';

part 'movie.freezed.dart';

@freezed
class MovieTicket with _$MovieTicket {
  const factory MovieTicket({
    @required UniqueId? id,
    @required String? movieName,
    @required String? movieImage,
    @required String? rating,
    @required String? stars,
    @required String? gerne,
    @required String? movieDay,
    @required String? movieTime,
    @required String? theater,
    @required String? seatName,
    @required String? personId,
  }) = _MovieTicket;
}
