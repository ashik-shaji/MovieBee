import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/kt.dart';
import 'package:moviebee/application/tickets/bloc/tickets_bloc.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/ticket/widgets/empty_list_message.dart';
import 'package:moviebee/presentation/movie/ticket/widgets/tickes_list_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class TicketDisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('My Tickets'),
      ),
      body: Container(
        color: kPrimaryColor.withAlpha(50),
        child: BlocProvider(
          create: (context) => getIt<TicketsBloc>()
            ..add(const TicketsEvent.ticketDisplayStarted()),
          child: BlocBuilder<TicketsBloc, TicketsState>(
            builder: (context, state) {
              return state.maybeMap(
                loadInProgress: (e) {
                  return loadingIndicator();
                },
                loadSuccess: (data) {
                  final movieTickets = data.movieTicket;
                  if (movieTickets.isEmpty()) {
                    return EmptyListMessage(context: context);
                  }
                  final List<MovieTicket> oldTickets = [];
                  final List<MovieTicket> newTickets = [];
                  for (var i = 0; i < movieTickets.size; i++) {
                    final movieday = int.parse(movieTickets[i].movieDay!);
                    if (movieday < DateTime.now().day) {
                      oldTickets.add(movieTickets[i]);
                    } else {
                      newTickets.add(movieTickets[i]);
                    }
                  }

                  return buildListView(newTickets, context: context);
                },
                loadFailure: (failure) {
                  return failure.movieFailure
                      .map(databaseError: (_) => buildDatabaseErrorMessage());
                },
                orElse: () => loadingIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}

Center buildDatabaseErrorMessage() {
  return Center(
      child: Text(
    "Unexpected Error! Issue With the Database  ",
    style: GoogleFonts.pacifico(
      fontSize: 18,
      color: kPrimaryColor,
    ),
  ));
}

Center loadingIndicator() {
  return const Center(
      child: CircularProgressIndicator(
    color: kPrimaryColor,
  ));
}

ListView buildListView(List<MovieTicket> movieTickets,
    {required BuildContext context}) {
  return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(6),
      itemCount: movieTickets.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.router.push(TicketPageRoute(
                ticketId: movieTickets[index].id!.getOrCrash(),
                movieName: movieTickets[index].movieName,
                movieImage: movieTickets[index].movieImage,
                rating: movieTickets[index].rating,
                stars: movieTickets[index].stars,
                gerne: movieTickets[index].gerne,
                movieDay: movieTickets[index].movieDay,
                movieTime: movieTickets[index].movieTime,
                theater: movieTickets[index].theater,
                seatName: movieTickets[index].seatName));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            child: TicketInfoCard(movieTickets: movieTickets, index: index),
          ),
        );
      });
}
