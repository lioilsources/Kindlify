import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  static const _keyServerUrl = 'server_url';
  static const _keyLocale = 'locale';
  // Override at build time: --dart-define=KINDLIFY_SERVER_URL=http://<host>:8080
  static const defaultServerUrl = String.fromEnvironment(
    'KINDLIFY_SERVER_URL',
    defaultValue: 'http://localhost:8080',
  );

  Future<String> getServerUrl() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyServerUrl) ?? defaultServerUrl;
  }

  Future<void> setServerUrl(String url) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyServerUrl, url);
  }

  Future<String> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyLocale) ?? 'cs';
  }

  Future<void> setLocale(String locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLocale, locale);
  }
}

final settingsRepositoryProvider = Provider<SettingsRepository>(
  (_) => SettingsRepository(),
);
