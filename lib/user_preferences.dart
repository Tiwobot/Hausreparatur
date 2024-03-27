import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  late bool _isFirst = true;
  late bool _isLoggedin = false;

  initState() {
    readIsFirst();
    readIsLoggedin();
  }

  bool getIsFirst() {
    return _isFirst;
  }

  bool getIsLoggedin() {
    return _isLoggedin;
  }

  void setIsFirst(bool a) {
    _isFirst = a;
    writeIsFirst();
  }

  void setIsLoggedin(bool a) {
    _isLoggedin = a;
    writeIsLoggedin();
  }

  Future<void> readIsFirst() async {
    final prefs = await SharedPreferences.getInstance();
    _isFirst = prefs.getBool('isFirst')!;
  }

  Future<void> readIsLoggedin() async {
    final prefs = await SharedPreferences.getInstance();
    _isLoggedin = prefs.getBool('isLoggedin')!;
  }

  Future<void> writeIsFirst() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirst', _isFirst);
  }

  Future<void> writeIsLoggedin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedin', _isLoggedin);
  }
}
