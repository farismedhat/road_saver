import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('en');
  static const String _languageKey = 'language';

  Locale get locale => _locale;
  bool get isRTL => _locale.languageCode == 'ar';

  LanguageProvider() {
    _loadLanguage();
  }

  Future<void> setLanguage(String languageCode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_languageKey, languageCode);
      _locale = Locale(languageCode);
      debugPrint('Language changed to ${locale.languageCode}');
      notifyListeners();
    } catch (e) {
      debugPrint('Error saving language: $e');
    }
  }

  Future<void> _loadLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedLanguage = prefs.getString(_languageKey);
      if (savedLanguage != null) {
        _locale = Locale(savedLanguage);
        notifyListeners();
      }
    } catch (e) {
      print('Error loading language: $e');
    }
  }
}