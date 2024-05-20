import 'dart:ui';

import 'package:e_commerce_app/core/services/pref_keys.dart';
import 'package:e_commerce_app/core/services/shared_pref.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());
  bool isDark = true;
  String currentLang = 'en';

  //Theme Mode
  Future<void> changeThemeAppMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.changeThemeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref().setBoolean(PrefKeys.themeMode, isDark).then((value) {
        emit(AppState.changeThemeMode(isDark: isDark));
      });
    }
  }

  void getSaveLanguage() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : "en";
    currentLang = result!;
    emit(AppState.changeLanguage(locale: Locale(currentLang)));
  }

  Future<void> _changeLang(String langCode) async {
    SharedPref().setString(PrefKeys.language, currentLang);
    currentLang = langCode;
    emit(AppState.changeLanguage(locale: Locale(currentLang)));
  }

  void toArabic() => _changeLang('ar');
  void toEnglish() => _changeLang('en');
}
