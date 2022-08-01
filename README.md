# Golf Trip Manager

- Golf Trips
- Golf Events
- Golf Leagues
- Golf Groups

# Priority

- Auth via phone number only
- Trip Itinerary to replace golftrip.link
  - "restricts" access to those in the event (by phone number, no passwords)
- Phone Sign-in
  - [Firebase workflow](https://docs.flutterflow.io/data-and-backend/firebase/authentication/phone-sign-in)

## Min Requirements

- Users
- Event (Name, Attendees/Users)
- Itinerary Items for Event
  - Golf Round (timestamp, location, Course Name)
    - Foursomes (Tee)

## GetX

- [vscode Extension](https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets)
- [GetX Structure](https://github.com/kauemurakami/getx_pattern/)
- [LogRocket Blog](https://blog.logrocket.com/ultimate-guide-getx-state-management-flutter/)

## Strapi / Flutter

- [Strapi GraphQL](https://strapi.io/blog/a-deep-dive-into-strapi-graph-ql)
- [graphql_flutter](https://pub.dev/packages/graphql_flutter)
- [GraphQL StarWars Example](https://github.com/zino-hofmann/graphql-flutter/tree/main/examples/starwars)
- [GraphQL Strapi ToDo App](https://strapi.io/blog/build-a-to-do-app-with-strapi-graph-ql-plugin-and-flutter), **Feb 2022**
  - Uses `flutter_graphql`
  - Not GetX
- [graphql_codegen](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen)

### GetX

- [GraphQL & GetX Delivery App](https://github.com/murilosandiego/flutter-delivery-app), **Oct 2020**
  - Don't see graphql calls?
  - Auth pattern
  - Doesn't strictly follow GetX structure
  - Hasura to Strapi?
- [Rick & Morty](https://github.com/RuslanTsitser/rick_and_morty), **Jan 2022**
  - Uses `graphql_flutter`
  - Uses GetX
  - Slimmed down structure
- [Goswami Blog](https://medium.flutterdevs.com/implement-graphql-with-flutter-153f30881915)
  - [Repo](https://github.com/flutter-devs/graphql_demo)
  - Uses `graphql_flutter`
  - Very simple example
  - Not GetX
- [GetX - AWSAmplify](https://towardsaws.com/a-todo-app-using-awsamplify-getx-aa4ec407377f), **May 2021**
  - [Source Code](https://github.com/offlineprogrammer/amplify_todo)
- [Example CRUD REST](https://strapi.io/blog/how-to-build-a-simple-crud-application-using-flutter-and-strapi)

## Group Travel Planning Apps

- [Blog Review](https://www.thetravelteam.com/6-apps-that-make-planning-group-travel-easier/)

### Travel App Features

- Itinerary (TripIt, Mobili)
- Group Messaging/Chat (Prava, Travefy)
- Location Sharing (Prava)
- Itinerary on Map (Travefy)

### App UI's

- Event List Page (User & Admin version)
- Event
  - Event Itinerary Page (TripIt)
    - Golf Round - shows foursomes
  - Event Attendees (User & Admin)
  - Event Admin Attendee Mgmt
- Contact Lists / Simpler - Contacts Manager
  - https://pub.dev/packages/contacts_service

## Features

- Contacts
  - Contact plug-ins
    - https://pub.dev/packages/contacts_service
    - https://pub.dev/packages/flutter_native_contact_picker
  - Name
  - GHIN
  - Mobile
  - Email
  - Venmo Id (null,phone,email)
  - Zelle
- Sign-up Management
  - Invite List
    - Notify (email, sms, app notifications)
      - Are you in/out?
  - Wait List (ordered)
- Schedule
  - Calendar items
  - Email calendar invite for events
- Round
  - Course
- Foursomes
  - Randomizer
  - GGID
  - Tee

## Organization

- Multi-tenant (tied to admin)
- Event/Trip
  - Admin/account can have multiple of Events/Trips
  - consists of one or more rounds that are part of a trip/league
  - Splitwise id
- Contact
  - Name, GHIN, Phone, Email, Venmo
- Round
  - Foursome
    - GGID

## Competitors

- https://www.unknowngolf.com


## Local Development

```sh
flutter run macos
flutter run ios
flutter clean
flutter run -d chrome
# iPhone Simulator
open -a Simulator
flutter run
```
