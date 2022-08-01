import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:golf/view/event/event_view.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        // Cannot query field "events" on type "Event"
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        document: gql(
          r"""
          query {
              events {
                id
                name
                startDate
                endDate
              }
          }
          """,
        ),
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.hasException) {
          return Text('Error connecting to server');
          //return Text(result.exception.toString());
        }

        if (result.isLoading && result.data == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ResultAccumulator.appendUniqueEntries(
          latest: result.data,
          builder: (context, {results}) => DisplayEvents(
            events: results?.toList(),
            //events: results?[0]?['events']?.toList(),
            //events: results?.reversed.toList(),
          ),
        );
      },
    );
  }
}
