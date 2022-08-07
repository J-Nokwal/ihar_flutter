// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? postImage, String message) createPostEvent,
    required TResult Function() getCameraImageEvent,
    required TResult Function() getGalleryImageEventEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostEvent value) createPostEvent,
    required TResult Function(_GetCameraImageEvent value) getCameraImageEvent,
    required TResult Function(_GetGalleryImageEvent value)
        getGalleryImageEventEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(
          CreatePostEvent value, $Res Function(CreatePostEvent) then) =
      _$CreatePostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._value, this._then);

  final CreatePostEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePostEvent) _then;
}

/// @nodoc
abstract class _$$_CreatePostEventCopyWith<$Res> {
  factory _$$_CreatePostEventCopyWith(
          _$_CreatePostEvent value, $Res Function(_$_CreatePostEvent) then) =
      __$$_CreatePostEventCopyWithImpl<$Res>;
  $Res call({XFile? postImage, String message});
}

/// @nodoc
class __$$_CreatePostEventCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements _$$_CreatePostEventCopyWith<$Res> {
  __$$_CreatePostEventCopyWithImpl(
      _$_CreatePostEvent _value, $Res Function(_$_CreatePostEvent) _then)
      : super(_value, (v) => _then(v as _$_CreatePostEvent));

  @override
  _$_CreatePostEvent get _value => super._value as _$_CreatePostEvent;

  @override
  $Res call({
    Object? postImage = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_CreatePostEvent(
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreatePostEvent implements _CreatePostEvent {
  const _$_CreatePostEvent({required this.postImage, required this.message});

  @override
  final XFile? postImage;
  @override
  final String message;

  @override
  String toString() {
    return 'CreatePostEvent.createPostEvent(postImage: $postImage, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePostEvent &&
            const DeepCollectionEquality().equals(other.postImage, postImage) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postImage),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_CreatePostEventCopyWith<_$_CreatePostEvent> get copyWith =>
      __$$_CreatePostEventCopyWithImpl<_$_CreatePostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? postImage, String message) createPostEvent,
    required TResult Function() getCameraImageEvent,
    required TResult Function() getGalleryImageEventEvent,
  }) {
    return createPostEvent(postImage, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
  }) {
    return createPostEvent?.call(postImage, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (createPostEvent != null) {
      return createPostEvent(postImage, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostEvent value) createPostEvent,
    required TResult Function(_GetCameraImageEvent value) getCameraImageEvent,
    required TResult Function(_GetGalleryImageEvent value)
        getGalleryImageEventEvent,
  }) {
    return createPostEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
  }) {
    return createPostEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (createPostEvent != null) {
      return createPostEvent(this);
    }
    return orElse();
  }
}

abstract class _CreatePostEvent implements CreatePostEvent {
  const factory _CreatePostEvent(
      {required final XFile? postImage,
      required final String message}) = _$_CreatePostEvent;

  XFile? get postImage;
  String get message;
  @JsonKey(ignore: true)
  _$$_CreatePostEventCopyWith<_$_CreatePostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCameraImageEventCopyWith<$Res> {
  factory _$$_GetCameraImageEventCopyWith(_$_GetCameraImageEvent value,
          $Res Function(_$_GetCameraImageEvent) then) =
      __$$_GetCameraImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCameraImageEventCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements _$$_GetCameraImageEventCopyWith<$Res> {
  __$$_GetCameraImageEventCopyWithImpl(_$_GetCameraImageEvent _value,
      $Res Function(_$_GetCameraImageEvent) _then)
      : super(_value, (v) => _then(v as _$_GetCameraImageEvent));

  @override
  _$_GetCameraImageEvent get _value => super._value as _$_GetCameraImageEvent;
}

/// @nodoc

class _$_GetCameraImageEvent implements _GetCameraImageEvent {
  const _$_GetCameraImageEvent();

  @override
  String toString() {
    return 'CreatePostEvent.getCameraImageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCameraImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? postImage, String message) createPostEvent,
    required TResult Function() getCameraImageEvent,
    required TResult Function() getGalleryImageEventEvent,
  }) {
    return getCameraImageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
  }) {
    return getCameraImageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (getCameraImageEvent != null) {
      return getCameraImageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostEvent value) createPostEvent,
    required TResult Function(_GetCameraImageEvent value) getCameraImageEvent,
    required TResult Function(_GetGalleryImageEvent value)
        getGalleryImageEventEvent,
  }) {
    return getCameraImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
  }) {
    return getCameraImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (getCameraImageEvent != null) {
      return getCameraImageEvent(this);
    }
    return orElse();
  }
}

abstract class _GetCameraImageEvent implements CreatePostEvent {
  const factory _GetCameraImageEvent() = _$_GetCameraImageEvent;
}

/// @nodoc
abstract class _$$_GetGalleryImageEventCopyWith<$Res> {
  factory _$$_GetGalleryImageEventCopyWith(_$_GetGalleryImageEvent value,
          $Res Function(_$_GetGalleryImageEvent) then) =
      __$$_GetGalleryImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetGalleryImageEventCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements _$$_GetGalleryImageEventCopyWith<$Res> {
  __$$_GetGalleryImageEventCopyWithImpl(_$_GetGalleryImageEvent _value,
      $Res Function(_$_GetGalleryImageEvent) _then)
      : super(_value, (v) => _then(v as _$_GetGalleryImageEvent));

  @override
  _$_GetGalleryImageEvent get _value => super._value as _$_GetGalleryImageEvent;
}

/// @nodoc

class _$_GetGalleryImageEvent implements _GetGalleryImageEvent {
  const _$_GetGalleryImageEvent();

  @override
  String toString() {
    return 'CreatePostEvent.getGalleryImageEventEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetGalleryImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? postImage, String message) createPostEvent,
    required TResult Function() getCameraImageEvent,
    required TResult Function() getGalleryImageEventEvent,
  }) {
    return getGalleryImageEventEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
  }) {
    return getGalleryImageEventEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? postImage, String message)? createPostEvent,
    TResult Function()? getCameraImageEvent,
    TResult Function()? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (getGalleryImageEventEvent != null) {
      return getGalleryImageEventEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostEvent value) createPostEvent,
    required TResult Function(_GetCameraImageEvent value) getCameraImageEvent,
    required TResult Function(_GetGalleryImageEvent value)
        getGalleryImageEventEvent,
  }) {
    return getGalleryImageEventEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
  }) {
    return getGalleryImageEventEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostEvent value)? createPostEvent,
    TResult Function(_GetCameraImageEvent value)? getCameraImageEvent,
    TResult Function(_GetGalleryImageEvent value)? getGalleryImageEventEvent,
    required TResult orElse(),
  }) {
    if (getGalleryImageEventEvent != null) {
      return getGalleryImageEventEvent(this);
    }
    return orElse();
  }
}

abstract class _GetGalleryImageEvent implements CreatePostEvent {
  const factory _GetGalleryImageEvent() = _$_GetGalleryImageEvent;
}

/// @nodoc
mixin _$CreatePostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? file, String? errorMessage) imageState,
    required TResult Function(bool animate) loadingState,
    required TResult Function(String? errorMessage) postedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageState value) imageState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_PostedState value) postedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  final CreatePostState _value;
  // ignore: unused_field
  final $Res Function(CreatePostState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreatePostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? file, String? errorMessage) imageState,
    required TResult Function(bool animate) loadingState,
    required TResult Function(String? errorMessage) postedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageState value) imageState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_PostedState value) postedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatePostState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ImageStateCopyWith<$Res> {
  factory _$$_ImageStateCopyWith(
          _$_ImageState value, $Res Function(_$_ImageState) then) =
      __$$_ImageStateCopyWithImpl<$Res>;
  $Res call({XFile? file, String? errorMessage});
}

/// @nodoc
class __$$_ImageStateCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$$_ImageStateCopyWith<$Res> {
  __$$_ImageStateCopyWithImpl(
      _$_ImageState _value, $Res Function(_$_ImageState) _then)
      : super(_value, (v) => _then(v as _$_ImageState));

  @override
  _$_ImageState get _value => super._value as _$_ImageState;

  @override
  $Res call({
    Object? file = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ImageState(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImageState implements _ImageState {
  const _$_ImageState({this.file, this.errorMessage});

  @override
  final XFile? file;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CreatePostState.imageState(file: $file, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageState &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      __$$_ImageStateCopyWithImpl<_$_ImageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? file, String? errorMessage) imageState,
    required TResult Function(bool animate) loadingState,
    required TResult Function(String? errorMessage) postedState,
  }) {
    return imageState(file, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
  }) {
    return imageState?.call(file, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
    required TResult orElse(),
  }) {
    if (imageState != null) {
      return imageState(file, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageState value) imageState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_PostedState value) postedState,
  }) {
    return imageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
  }) {
    return imageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
    required TResult orElse(),
  }) {
    if (imageState != null) {
      return imageState(this);
    }
    return orElse();
  }
}

abstract class _ImageState implements CreatePostState {
  const factory _ImageState({final XFile? file, final String? errorMessage}) =
      _$_ImageState;

  XFile? get file;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  $Res call({bool animate});
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;

  @override
  $Res call({
    Object? animate = freezed,
  }) {
    return _then(_$_LoadingState(
      animate: animate == freezed
          ? _value.animate
          : animate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState({this.animate = false});

  @override
  @JsonKey()
  final bool animate;

  @override
  String toString() {
    return 'CreatePostState.loadingState(animate: $animate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            const DeepCollectionEquality().equals(other.animate, animate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(animate));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? file, String? errorMessage) imageState,
    required TResult Function(bool animate) loadingState,
    required TResult Function(String? errorMessage) postedState,
  }) {
    return loadingState(animate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
  }) {
    return loadingState?.call(animate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(animate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageState value) imageState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_PostedState value) postedState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CreatePostState {
  const factory _LoadingState({final bool animate}) = _$_LoadingState;

  bool get animate;
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostedStateCopyWith<$Res> {
  factory _$$_PostedStateCopyWith(
          _$_PostedState value, $Res Function(_$_PostedState) then) =
      __$$_PostedStateCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_PostedStateCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$$_PostedStateCopyWith<$Res> {
  __$$_PostedStateCopyWithImpl(
      _$_PostedState _value, $Res Function(_$_PostedState) _then)
      : super(_value, (v) => _then(v as _$_PostedState));

  @override
  _$_PostedState get _value => super._value as _$_PostedState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PostedState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostedState implements _PostedState {
  const _$_PostedState({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CreatePostState.postedState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostedState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_PostedStateCopyWith<_$_PostedState> get copyWith =>
      __$$_PostedStateCopyWithImpl<_$_PostedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? file, String? errorMessage) imageState,
    required TResult Function(bool animate) loadingState,
    required TResult Function(String? errorMessage) postedState,
  }) {
    return postedState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
  }) {
    return postedState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? file, String? errorMessage)? imageState,
    TResult Function(bool animate)? loadingState,
    TResult Function(String? errorMessage)? postedState,
    required TResult orElse(),
  }) {
    if (postedState != null) {
      return postedState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageState value) imageState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_PostedState value) postedState,
  }) {
    return postedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
  }) {
    return postedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageState value)? imageState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_PostedState value)? postedState,
    required TResult orElse(),
  }) {
    if (postedState != null) {
      return postedState(this);
    }
    return orElse();
  }
}

abstract class _PostedState implements CreatePostState {
  const factory _PostedState({final String? errorMessage}) = _$_PostedState;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_PostedStateCopyWith<_$_PostedState> get copyWith =>
      throw _privateConstructorUsedError;
}
