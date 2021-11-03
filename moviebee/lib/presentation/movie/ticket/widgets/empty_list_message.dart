import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class EmptyListMessage extends StatelessWidget {
  const EmptyListMessage({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Center(
          child: SizedBox(
              height: 250,
              width: 250,
              child: AspectRatio(
                  aspectRatio: 6 / 4,
                  child: Image.asset("assets/ad/notfound.png"))),
        ),
        Center(
            child: Text(
          "You haven't Booked any Tickets!",
          style: TextStyle(color: Colors.blue[800], fontSize: 18),
        )),
      ],
    );
  }
}
