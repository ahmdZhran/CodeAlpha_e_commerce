// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeMode,
    required TResult Function(Locale locale, bool isDark) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeMode,
    TResult? Function(Locale locale, bool isDark)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeMode,
    TResult Function(Locale locale, bool isDark)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(changeThemeMode value) changeThemeMode,
    required TResult Function(changeLanguageState value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(changeThemeMode value)? changeThemeMode,
    TResult? Function(changeLanguageState value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(changeThemeMode value)? changeThemeMode,
    TResult Function(changeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeMode,
    required TResult Function(Locale locale, bool isDark) changeLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeMode,
    TResult? Function(Locale locale, bool isDark)? changeLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeMode,
    TResult Function(Locale locale, bool isDark)? changeLanguage,
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
    required TResult Function(changeThemeMode value) changeThemeMode,
    required TResult Function(changeLanguageState value) changeLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(changeThemeMode value)? changeThemeMode,
    TResult? Function(changeLanguageState value)? changeLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(changeThemeMode value)? changeThemeMode,
    TResult Function(changeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$changeThemeModeImplCopyWith<$Res> {
  factory _$$changeThemeModeImplCopyWith(_$changeThemeModeImpl value,
          $Res Function(_$changeThemeModeImpl) then) =
      __$$changeThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$changeThemeModeImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$changeThemeModeImpl>
    implements _$$changeThemeModeImplCopyWith<$Res> {
  __$$changeThemeModeImplCopyWithImpl(
      _$changeThemeModeImpl _value, $Res Function(_$changeThemeModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$changeThemeModeImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$changeThemeModeImpl
    with DiagnosticableTreeMixin
    implements changeThemeMode {
  const _$changeThemeModeImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.changeThemeMode(isDark: $isDark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.changeThemeMode'))
      ..add(DiagnosticsProperty('isDark', isDark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeThemeModeImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeThemeModeImplCopyWith<_$changeThemeModeImpl> get copyWith =>
      __$$changeThemeModeImplCopyWithImpl<_$changeThemeModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeMode,
    required TResult Function(Locale locale, bool isDark) changeLanguage,
  }) {
    return changeThemeMode(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeMode,
    TResult? Function(Locale locale, bool isDark)? changeLanguage,
  }) {
    return changeThemeMode?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeMode,
    TResult Function(Locale locale, bool isDark)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(changeThemeMode value) changeThemeMode,
    required TResult Function(changeLanguageState value) changeLanguage,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(changeThemeMode value)? changeThemeMode,
    TResult? Function(changeLanguageState value)? changeLanguage,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(changeThemeMode value)? changeThemeMode,
    TResult Function(changeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class changeThemeMode implements AppState {
  const factory changeThemeMode({required final bool isDark}) =
      _$changeThemeModeImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$changeThemeModeImplCopyWith<_$changeThemeModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changeLanguageStateImplCopyWith<$Res> {
  factory _$$changeLanguageStateImplCopyWith(_$changeLanguageStateImpl value,
          $Res Function(_$changeLanguageStateImpl) then) =
      __$$changeLanguageStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale, bool isDark});
}

/// @nodoc
class __$$changeLanguageStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$changeLanguageStateImpl>
    implements _$$changeLanguageStateImplCopyWith<$Res> {
  __$$changeLanguageStateImplCopyWithImpl(_$changeLanguageStateImpl _value,
      $Res Function(_$changeLanguageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? isDark = null,
  }) {
    return _then(_$changeLanguageStateImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$changeLanguageStateImpl
    with DiagnosticableTreeMixin
    implements changeLanguageState {
  const _$changeLanguageStateImpl({required this.locale, required this.isDark});

  @override
  final Locale locale;
  @override
  final bool isDark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.changeLanguage(locale: $locale, isDark: $isDark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.changeLanguage'))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('isDark', isDark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeLanguageStateImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeLanguageStateImplCopyWith<_$changeLanguageStateImpl> get copyWith =>
      __$$changeLanguageStateImplCopyWithImpl<_$changeLanguageStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeMode,
    required TResult Function(Locale locale, bool isDark) changeLanguage,
  }) {
    return changeLanguage(locale, isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeMode,
    TResult? Function(Locale locale, bool isDark)? changeLanguage,
  }) {
    return changeLanguage?.call(locale, isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeMode,
    TResult Function(Locale locale, bool isDark)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(locale, isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(changeThemeMode value) changeThemeMode,
    required TResult Function(changeLanguageState value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(changeThemeMode value)? changeThemeMode,
    TResult? Function(changeLanguageState value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(changeThemeMode value)? changeThemeMode,
    TResult Function(changeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class changeLanguageState implements AppState {
  const factory changeLanguageState(
      {required final Locale locale,
      required final bool isDark}) = _$changeLanguageStateImpl;

  Locale get locale;
  bool get isDark;
  @JsonKey(ignore: true)
  _$$changeLanguageStateImplCopyWith<_$changeLanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
