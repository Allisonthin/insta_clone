import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreference {
  static const keyemail = "email";
  static const keyusername = "username";

  static Future<SharedPreferences> init() async {
    return SharedPreferences.getInstance();
  }

  static Future setValue({
    required String email,
    required String username,
  }) async {
    SharedPreferences pref = await init();
    await pref.setString(keyemail, email);
    await pref.setString(keyusername, username);
  }

  static Future<String?> getemail() async {
    SharedPreferences pref = await init();
    return pref.getString(keyemail);
  }

  static Future<String?> getusername() async {
    SharedPreferences pref = await init();
    return pref.getString(keyusername);
  }
}
