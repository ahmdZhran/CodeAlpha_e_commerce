import 'package:e_commerce_app/core/services/pref_keys.dart';
import 'package:e_commerce_app/core/services/shared_pref.dart';

class FontFamilyName {
  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';

  static String getLocalizedFontFamily() {
    final currentLanguage = SharedPref().getString(PrefKeys.language);
    if (currentLanguage == 'ar') {
      return arabicFont;
    } else {
      return englishFont;
    }
  }
}
