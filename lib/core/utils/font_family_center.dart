class FontFamilyName {
  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';

  static String getLocalizedFontFamily() {
    // TODO sharedprefrences
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return arabicFont;
    } else {
      return englishFont;
    }
  }
}
