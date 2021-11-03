import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:moviebee/presentation/core/contants.dart';

class TicketInfoCard extends StatelessWidget {
  const TicketInfoCard({
    Key? key,
    required this.movieTickets,
    required this.index,
  }) : super(key: key);

  final List<MovieTicket> movieTickets;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.asset(
              movieTickets[index].movieImage!,
              height: 70,
              width: 100,
              fit: BoxFit.cover,
            )),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movieTickets[index].movieName!,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  color: kPrimaryColor,
                )),
            Text(movieTickets[index].gerne!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: kPrimaryColor.withAlpha(100),
                )),
            Text(movieTickets[index].theater!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: kPrimaryColor.withAlpha(100),
                )),
          ],
        ),
      ],
    );
  }
}
