import 'package:delivery/config/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceKeys{
  static const address = 'address';
  static const themeMode = 'themeMode';
}

class UserPreference {
  final _storage = SharedPreferences.getInstance();

  Future<void> setAddress(String address) async {
    final storage = await _storage;
    storage.setString(PreferenceKeys.address, address);
    print(address);
  }

  // Future<String?> getAddress() async{
  //   final storage = await _storage;
  //    final address = storage.getString(PreferenceKeys.address);
  //   // return address;
  //
  //   return  Future.value(address);
  //
  // }

  Future <void> setThemeMode(bool value) async{
    final storage = await _storage;
    storage.setBool(PreferenceKeys.themeMode, value);
  }

}