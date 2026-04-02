// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'FeedEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FeedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedEvent()';
  }
}

/// @nodoc
class $FeedEventCopyWith<$Res> {
  $FeedEventCopyWith(FeedEvent _, $Res Function(FeedEvent) __);
}

/// Adds pattern-matching-related methods to [FeedEvent].
extension FeedEventPatterns on FeedEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPosts value)? loadPosts,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts() when loadPosts != null:
        return loadPosts(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPosts value) loadPosts,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts():
        return loadPosts(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPosts value)? loadPosts,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts() when loadPosts != null:
        return loadPosts(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPosts,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts() when loadPosts != null:
        return loadPosts();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPosts,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts():
        return loadPosts();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPosts,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadPosts() when loadPosts != null:
        return loadPosts();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoadPosts with DiagnosticableTreeMixin implements FeedEvent {
  const _LoadPosts();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'FeedEvent.loadPosts'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedEvent.loadPosts()';
  }
}

/// @nodoc
mixin _$FeedState implements DiagnosticableTreeMixin {
  FeedStateStatus get feedStatus;
  List<FeedItem> get posts;
  String? get errorMessage;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedStateCopyWith<FeedState> get copyWith =>
      _$FeedStateCopyWithImpl<FeedState>(this as FeedState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'FeedState'))
      ..add(DiagnosticsProperty('feedStatus', feedStatus))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedState &&
            (identical(other.feedStatus, feedStatus) ||
                other.feedStatus == feedStatus) &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedStatus,
      const DeepCollectionEquality().hash(posts), errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedState(feedStatus: $feedStatus, posts: $posts, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) _then) =
      _$FeedStateCopyWithImpl;
  @useResult
  $Res call(
      {FeedStateStatus feedStatus, List<FeedItem> posts, String? errorMessage});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._self, this._then);

  final FeedState _self;
  final $Res Function(FeedState) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedStatus = null,
    Object? posts = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      feedStatus: null == feedStatus
          ? _self.feedStatus
          : feedStatus // ignore: cast_nullable_to_non_nullable
              as FeedStateStatus,
      posts: null == posts
          ? _self.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeedState].
extension FeedStatePatterns on FeedState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeedState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeedState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeedState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FeedStateStatus feedStatus, List<FeedItem> posts,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedState() when $default != null:
        return $default(_that.feedStatus, _that.posts, _that.errorMessage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FeedStateStatus feedStatus, List<FeedItem> posts,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedState():
        return $default(_that.feedStatus, _that.posts, _that.errorMessage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(FeedStateStatus feedStatus, List<FeedItem> posts,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedState() when $default != null:
        return $default(_that.feedStatus, _that.posts, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FeedState with DiagnosticableTreeMixin implements FeedState {
  const _FeedState(
      {this.feedStatus = FeedStateStatus.loading,
      final List<FeedItem> posts = const [],
      this.errorMessage})
      : _posts = posts;

  @override
  @JsonKey()
  final FeedStateStatus feedStatus;
  final List<FeedItem> _posts;
  @override
  @JsonKey()
  List<FeedItem> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final String? errorMessage;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'FeedState'))
      ..add(DiagnosticsProperty('feedStatus', feedStatus))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedState &&
            (identical(other.feedStatus, feedStatus) ||
                other.feedStatus == feedStatus) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedStatus,
      const DeepCollectionEquality().hash(_posts), errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedState(feedStatus: $feedStatus, posts: $posts, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$FeedStateCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) _then) =
      __$FeedStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FeedStateStatus feedStatus, List<FeedItem> posts, String? errorMessage});
}

/// @nodoc
class __$FeedStateCopyWithImpl<$Res> implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(this._self, this._then);

  final _FeedState _self;
  final $Res Function(_FeedState) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? feedStatus = null,
    Object? posts = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_FeedState(
      feedStatus: null == feedStatus
          ? _self.feedStatus
          : feedStatus // ignore: cast_nullable_to_non_nullable
              as FeedStateStatus,
      posts: null == posts
          ? _self._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
