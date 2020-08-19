<<<<<<< Updated upstream
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:FlutterGalleryApp/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
=======
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import '../lib/screens/feed_screen.dart';
// import '../lib/screens/photo_screen.dart';
// import '../lib/widgets/widgets.dart';

// void main() {
//   // testWidgets('LikeButton', (WidgetTester tester) async {
//   //   await tester.pumpWidget(MaterialApp(home: LikeButton(likeCount: 10, isLiked: true)));

//   //   final titleFinder = find.text('10');
//   //   final messageFinder = find.byIcon(AppIcons.like_fill);

//   //   expect(titleFinder, findsOneWidget);
//   //   expect(messageFinder, findsOneWidget);
//   // });

//   testWidgets('Photo', (WidgetTester tester) async {
//     await tester.pumpWidget(MaterialApp(home: Photo(photoLink: kFlutterDash, key: Key('Photo'))));

//     final titleFinder = find.byKey(Key('Photo'));

//     expect(titleFinder, findsOneWidget);
//   });

//   testWidgets('FullScreenImage -> altDescription', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: FullScreenImage(
//           altDescription: 'Test altDescription',
//           key: Key('FullScreenImage'),
//         ),
//       ),
//     );

//     final titleFinder = find.byKey(Key('FullScreenImage'));
//     final altDescription = find.text('Test altDescription');

//     expect(titleFinder, findsOneWidget);
//     expect(altDescription, findsOneWidget);
//   });

//   testWidgets('FullScreenImage -> userName', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: FullScreenImage(
//           userName: 'kaparray',
//           key: Key('FullScreenImage'),
//         ),
//       ),
//     );

//     final titleFinder = find.byKey(Key('FullScreenImage'));
//     final userNameText = find.text('@kaparray');

//     expect(titleFinder, findsOneWidget);
//     expect(userNameText, findsOneWidget);
//   });

//   testWidgets('FullScreenImage -> name', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: FullScreenImage(
//           name: 'Kirill Adeshchenko',
//           key: Key('FullScreenImage'),
//         ),
//       ),
//     );

//     final titleFinder = find.byKey(Key('FullScreenImage'));
//     final nameText = find.text('Kirill Adeshchenko');

//     expect(titleFinder, findsOneWidget);
//     expect(nameText, findsOneWidget);
//   });

//   testWidgets('FullScreenImage -> AppBar', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: FullScreenImage(
//           key: Key('FullScreenImage'),
//         ),
//       ),
//     );

//     final titleFinder = find.byKey(Key('FullScreenImage'));
//     final backButton = find.byIcon(CupertinoIcons.back);
//     final photoTextAppBar = find.text('Photo');

//     expect(titleFinder, findsOneWidget);
//     expect(backButton, findsOneWidget);
//     expect(photoTextAppBar, findsOneWidget);
//   });

//   testWidgets('FullScreenImage -> ButtonBar', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: FullScreenImage(
//           key: Key('FullScreenImage'),
//         ),
//       ),
//     );

//     final titleFinder = find.byKey(Key('FullScreenImage'));
//     final saveButton = find.text('Save');
//     final visitButton = find.text('Visit');

//     expect(titleFinder, findsOneWidget);
//     expect(saveButton, findsOneWidget);
//     expect(visitButton, findsOneWidget);
//   });
// }
>>>>>>> Stashed changes
