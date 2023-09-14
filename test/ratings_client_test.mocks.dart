// Mocks generated by Mockito 5.4.2 from annotations
// in app_center_ratings_client/test/ratings_client_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:app_center_ratings_client/src/generated/google/protobuf/empty.pb.dart'
    as _i9;
import 'package:app_center_ratings_client/src/generated/ratings_features_app.pb.dart'
    as _i5;
import 'package:app_center_ratings_client/src/generated/ratings_features_app.pbgrpc.dart'
    as _i4;
import 'package:app_center_ratings_client/src/generated/ratings_features_user.pb.dart'
    as _i8;
import 'package:app_center_ratings_client/src/generated/ratings_features_user.pbgrpc.dart'
    as _i7;
import 'package:grpc/service_api.dart' as _i2;
import 'package:grpc/src/client/call.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponseFuture_0<R> extends _i1.SmartFake
    implements _i2.ResponseFuture<R> {
  _FakeResponseFuture_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClientCall_1<Q1, R1> extends _i1.SmartFake
    implements _i3.ClientCall<Q1, R1> {
  _FakeClientCall_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponseStream_2<R1> extends _i1.SmartFake
    implements _i2.ResponseStream<R1> {
  _FakeResponseStream_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppClient extends _i1.Mock implements _i4.AppClient {
  MockAppClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ResponseFuture<_i5.GetRatingResponse> getRating(
    _i5.GetRatingRequest? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRating,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i5.GetRatingResponse>(
          this,
          Invocation.method(
            #getRating,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i5.GetRatingResponse>);
  @override
  _i3.ClientCall<Q, R> $createCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    _i6.Stream<Q>? requests, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createCall,
          [
            method,
            requests,
          ],
          {#options: options},
        ),
        returnValue: _FakeClientCall_1<Q, R>(
          this,
          Invocation.method(
            #$createCall,
            [
              method,
              requests,
            ],
            {#options: options},
          ),
        ),
      ) as _i3.ClientCall<Q, R>);
  @override
  _i2.ResponseFuture<R> $createUnaryCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    Q? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createUnaryCall,
          [
            method,
            request,
          ],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<R>(
          this,
          Invocation.method(
            #$createUnaryCall,
            [
              method,
              request,
            ],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<R>);
  @override
  _i2.ResponseStream<R> $createStreamingCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    _i6.Stream<Q>? requests, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createStreamingCall,
          [
            method,
            requests,
          ],
          {#options: options},
        ),
        returnValue: _FakeResponseStream_2<R>(
          this,
          Invocation.method(
            #$createStreamingCall,
            [
              method,
              requests,
            ],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseStream<R>);
}

/// A class which mocks [UserClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserClient extends _i1.Mock implements _i7.UserClient {
  MockUserClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ResponseFuture<_i8.AuthenticateResponse> authenticate(
    _i8.AuthenticateRequest? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #authenticate,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i8.AuthenticateResponse>(
          this,
          Invocation.method(
            #authenticate,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i8.AuthenticateResponse>);
  @override
  _i2.ResponseFuture<_i9.Empty> delete(
    _i9.Empty? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i9.Empty>(
          this,
          Invocation.method(
            #delete,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i9.Empty>);
  @override
  _i2.ResponseFuture<_i9.Empty> vote(
    _i8.VoteRequest? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #vote,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i9.Empty>(
          this,
          Invocation.method(
            #vote,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i9.Empty>);
  @override
  _i2.ResponseFuture<_i8.ListMyVotesResponse> listMyVotes(
    _i8.ListMyVotesRequest? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listMyVotes,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i8.ListMyVotesResponse>(
          this,
          Invocation.method(
            #listMyVotes,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i8.ListMyVotesResponse>);
  @override
  _i2.ResponseFuture<_i8.GetSnapVotesResponse> getSnapVotes(
    _i8.GetSnapVotesRequest? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSnapVotes,
          [request],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<_i8.GetSnapVotesResponse>(
          this,
          Invocation.method(
            #getSnapVotes,
            [request],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<_i8.GetSnapVotesResponse>);
  @override
  _i3.ClientCall<Q, R> $createCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    _i6.Stream<Q>? requests, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createCall,
          [
            method,
            requests,
          ],
          {#options: options},
        ),
        returnValue: _FakeClientCall_1<Q, R>(
          this,
          Invocation.method(
            #$createCall,
            [
              method,
              requests,
            ],
            {#options: options},
          ),
        ),
      ) as _i3.ClientCall<Q, R>);
  @override
  _i2.ResponseFuture<R> $createUnaryCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    Q? request, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createUnaryCall,
          [
            method,
            request,
          ],
          {#options: options},
        ),
        returnValue: _FakeResponseFuture_0<R>(
          this,
          Invocation.method(
            #$createUnaryCall,
            [
              method,
              request,
            ],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseFuture<R>);
  @override
  _i2.ResponseStream<R> $createStreamingCall<Q, R>(
    _i2.ClientMethod<Q, R>? method,
    _i6.Stream<Q>? requests, {
    _i2.CallOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$createStreamingCall,
          [
            method,
            requests,
          ],
          {#options: options},
        ),
        returnValue: _FakeResponseStream_2<R>(
          this,
          Invocation.method(
            #$createStreamingCall,
            [
              method,
              requests,
            ],
            {#options: options},
          ),
        ),
      ) as _i2.ResponseStream<R>);
}
