import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:golf/view/event/event_view.dart';

class EventFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Subscription(
      options: SubscriptionOptions(
        document: gql(
          r'''
            subscription eventAdded {
              eventAdded {
                name
              }
            }
          ''',
        ),
      ),
      builder: (result) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.isLoading) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        }
        return ResultAccumulator.appendUniqueEntries(
          latest: result.data,
          builder: (context, {results}) => DisplayEvents(
            events: results?.reversed.toList(),
          ),
        );
      },
    );
  }
}
