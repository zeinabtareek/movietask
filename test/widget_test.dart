// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:movietask/main.dart';
//
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(  MyApp());
//
//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);
//
//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();
//
//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movietask/model/MovieModel.dart';
import 'package:movietask/screens/home_screen/controller/home_screen_controller.dart';
import 'package:movietask/screens/home_screen/services/home_services.dart';

class MockHomeServices extends Mock implements HomeServices {}

void main() {
  group('MovieController', () {
    late MovieController movieController;
    late MockHomeServices mockHomeServices;

    setUp(() {
      mockHomeServices = MockHomeServices();
      movieController = MovieController(homeServices: mockHomeServices);
    });

    test('  movies list  successfully fetched ***', () async {

      final movieResponse = MovieResponse(
        page: 1,
        results: [
          Movie(
            adult: false,
            backdropPath: 'path/to/backdrop',
            genreIds: [1, 2, 3],
            id: 1,
            originalLanguage: 'en',
            originalTitle: 'Original Title',
            overview: 'Overview',
            popularity: 5.0,
            posterPath: 'path/to/poster',
            releaseDate: '2023-08-14',
            title: 'Title',
            video: false,
            voteAverage: 7.5,
            voteCount: 100,
          ),
        ],
        totalPages: 1,
        totalResults: 1,
      );

      when( HomeServices.getMovies()).thenAnswer((_) async => movieResponse);


      await movieController.fetchMovies();


      expect(movieController.movies.length, 1);
      expect(movieController.movies[0].title, 'Title');
      expect(movieController.isLoading.value, false);
    });

    test('fetchMovies should set isLoading to false when unsuccessful', () async {

      when(HomeServices.getMovies()).thenThrow(DioError);


      await movieController.fetchMovies();


      expect(movieController.movies.length, 0);
      expect(movieController.isLoading.value, false);
    });
  });
}