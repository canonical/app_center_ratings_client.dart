import 'dart:async';

import 'package:app_center_ratings_client/app_center_ratings_client.dart';
import 'package:app_center_ratings_client/src/chart.dart' as chart;
import 'package:app_center_ratings_client/src/common.dart' as common;
import 'package:app_center_ratings_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:app_center_ratings_client/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:app_center_ratings_client/src/generated/ratings_features_app.pbgrpc.dart'
    as pb;
import 'package:app_center_ratings_client/src/generated/ratings_features_chart.pbgrpc.dart';
import 'package:app_center_ratings_client/src/generated/ratings_features_common.pb.dart';
import 'package:app_center_ratings_client/src/generated/ratings_features_user.pbgrpc.dart';
import 'package:app_center_ratings_client/src/user.dart' as user;
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'ratings_client_test.mocks.dart';

@GenerateMocks([pb.AppClient, UserClient, ChartClient])
void main() {
  final mockAppClient = MockAppClient();
  final mockUserClient = MockUserClient();
  final mockChartClient = MockChartClient();
  final ratingsClient =
      RatingsClient.withClients(mockAppClient, mockUserClient, mockChartClient);

  test('get chart', () async {
    final snapId = 'foobar';
    final token = 'bar';
    final timeframe = chart.Timeframe.month;
    final pbChartList = [
      ChartData(
          rawRating: 3,
          rating: Rating(
            snapId: snapId,
            totalVotes: Int64(105),
            ratingsBand: RatingsBand.NEUTRAL,
          ))
    ];

    final expectedResponse = [
      chart.ChartData(
          rawRating: 3,
          rating: common.Rating(
            snapId: snapId,
            totalVotes: 105,
            ratingsBand: common.RatingsBand.neutral,
          ))
    ];
    final mockResponse = GetChartResponse(
      timeframe: Timeframe.TIMEFRAME_MONTH,
      orderedChartData: pbChartList,
    );
    final request = GetChartRequest(timeframe: Timeframe.TIMEFRAME_MONTH);
    when(mockChartClient.getChart(
      request,
      options: anyNamed('options'),
    )).thenAnswer((_) => MockResponseFuture<GetChartResponse>(mockResponse));
    final response = await ratingsClient.getChart(timeframe, token);
    expect(
      response,
      equals(expectedResponse),
    );
    final capturedArgs = verify(mockChartClient.getChart(
      request,
      options: captureAnyNamed('options'),
    )).captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
      capturedOptions.metadata,
      containsPair(
        'authorization',
        'Bearer $token',
      ),
    );
  });

  test('get rating', () async {
    final snapId = 'foo';
    final token = 'bar';
    final pbRating = Rating(
      snapId: snapId,
      totalVotes: Int64(105),
      ratingsBand: RatingsBand.NEUTRAL,
    );
    final expectedResponse = common.Rating(
      snapId: snapId,
      totalVotes: 105,
      ratingsBand: common.RatingsBand.neutral,
    );
    final mockResponse = pb.GetRatingResponse(rating: pbRating);
    final request = pb.GetRatingRequest(snapId: snapId);
    when(mockAppClient.getRating(
      request,
      options: anyNamed('options'),
    )).thenAnswer(
        (_) => MockResponseFuture<pb.GetRatingResponse>(mockResponse));
    final response = await ratingsClient.getRating(
      snapId,
      token,
    );
    expect(
      response,
      equals(expectedResponse),
    );
    final capturedArgs = verify(mockAppClient.getRating(
      request,
      options: captureAnyNamed('options'),
    )).captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
      capturedOptions.metadata,
      containsPair(
        'authorization',
        'Bearer $token',
      ),
    );
  });

  test('authenticate user', () async {
    final id = 'foo';
    final token = 'bar';
    final mockResponse = AuthenticateResponse(token: token);
    final request = AuthenticateRequest(id: id);
    when(mockUserClient.authenticate(request)).thenAnswer(
        (_) => MockResponseFuture<AuthenticateResponse>(mockResponse));
    final response = await ratingsClient.authenticate(id);
    verify(mockUserClient.authenticate(request)).captured;
    expect(
      response,
      equals(token),
    );
  });

  test('list user votes', () async {
    final snapIdFilter = 'foo';
    final token = 'bar';
    final time = DateTime.now().toUtc();
    final mockVotes = <Vote>[
      Vote(
          snapId: 'foo1',
          snapRevision: 1,
          voteUp: true,
          timestamp: Timestamp.fromDateTime(time)),
      Vote(
          snapId: 'foo2',
          snapRevision: 2,
          voteUp: false,
          timestamp: Timestamp.fromDateTime(time)),
    ];
    final expectedResponse = <user.Vote>[
      user.Vote(
        snapId: 'foo1',
        snapRevision: 1,
        voteUp: true,
        dateTime: time,
      ),
      user.Vote(
        snapId: 'foo2',
        snapRevision: 2,
        voteUp: false,
        dateTime: time,
      ),
    ];
    final mockResponse = ListMyVotesResponse(votes: mockVotes);
    final request = ListMyVotesRequest(snapIdFilter: snapIdFilter);

    when(mockUserClient.listMyVotes(
      request,
      options: anyNamed('options'),
    )).thenAnswer((_) => MockResponseFuture<ListMyVotesResponse>(mockResponse));
    final response = await ratingsClient.listMyVotes(
      snapIdFilter,
      token,
    );
    expect(response, equals(expectedResponse));

    final capturedArgs = verify(mockUserClient.listMyVotes(request,
            options: captureAnyNamed('options')))
        .captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
      capturedOptions.metadata,
      containsPair(
        'authorization',
        'Bearer $token',
      ),
    );
  });

  test('user votes', () async {
    final snapId = 'foo';
    final snapRevision = 1;
    final voteUp = true;
    final token = 'bar';
    final request = VoteRequest(
      snapId: snapId,
      snapRevision: snapRevision,
      voteUp: voteUp,
    );

    when(mockUserClient.vote(
      request,
      options: anyNamed('options'),
    )).thenAnswer((_) => MockResponseFuture<Empty>(Empty()));
    await ratingsClient.vote(
      snapId,
      snapRevision,
      voteUp,
      token,
    );
    final capturedArgs = verify(mockUserClient.vote(
      request,
      options: captureAnyNamed('options'),
    )).captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
        capturedOptions.metadata,
        containsPair(
          'authorization',
          'Bearer $token',
        ));
  });

  test('user votes by snap id', () async {
    final snapId = 'foo';
    final token = 'bar';
    final time = DateTime.now().toUtc();
    final mockVotes = <Vote>[
      Vote(
          snapId: snapId,
          snapRevision: 1,
          voteUp: true,
          timestamp: Timestamp.fromDateTime(time)),
      Vote(
          snapId: snapId,
          snapRevision: 2,
          voteUp: false,
          timestamp: Timestamp.fromDateTime(time)),
    ];
    final expectedResponse = <user.Vote>[
      user.Vote(
        snapId: snapId,
        snapRevision: 1,
        voteUp: true,
        dateTime: time,
      ),
      user.Vote(
        snapId: snapId,
        snapRevision: 2,
        voteUp: false,
        dateTime: time,
      ),
    ];
    final mockResponse = GetSnapVotesResponse(votes: mockVotes);
    final request = GetSnapVotesRequest(snapId: snapId);

    when(mockUserClient.getSnapVotes(
      request,
      options: anyNamed('options'),
    )).thenAnswer(
        (_) => MockResponseFuture<GetSnapVotesResponse>(mockResponse));
    final response = await ratingsClient.getSnapVotes(
      snapId,
      token,
    );
    expect(response, equals(expectedResponse));

    final capturedArgs = verify(mockUserClient.getSnapVotes(request,
            options: captureAnyNamed('options')))
        .captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
      capturedOptions.metadata,
      containsPair(
        'authorization',
        'Bearer $token',
      ),
    );
  });

  test('delete user', () async {
    final token = 'bar';
    final request = Empty();

    when(mockUserClient.delete(
      request,
      options: anyNamed('options'),
    )).thenAnswer((_) => MockResponseFuture<Empty>(Empty()));
    await ratingsClient.delete(token);

    final capturedArgs = verify(
            mockUserClient.delete(request, options: captureAnyNamed('options')))
        .captured;
    final capturedOptions = capturedArgs.single as CallOptions;
    expect(
      capturedOptions.metadata,
      containsPair(
        'authorization',
        'Bearer $token',
      ),
    );
  });
}

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  final T value;

  MockResponseFuture(this.value);

  @override
  Future<S> then<S>(FutureOr<S> Function(T) onValue, {Function? onError}) =>
      Future.value(value).then(
        onValue,
        onError: onError,
      );
}
