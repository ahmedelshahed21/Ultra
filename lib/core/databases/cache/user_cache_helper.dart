import 'package:ultra_app/core/databases/cache/cache_helper.dart';

class UserCacheHelper {
  final CacheHelper _cacheHelper;

  UserCacheHelper(this._cacheHelper);

  void saveUserFirstName({
    required String firstName,
  }) {
    _cacheHelper.saveData(key: 'userLoginFirstName', value: firstName);
  }

  void saveUserLastName({
    required String lastName,
  }) {
    _cacheHelper.saveData(key: 'userLoginLastName', value: lastName);
  }

  void saveUserPhoneNumber({
    required String phoneNumber,
  }) {
    _cacheHelper.saveData(key: 'userLoginPhoneNumber', value: phoneNumber);
  }

  String? getUserFirstName() {
    return _cacheHelper.getData(key: 'userLoginFirstName');
  }

  String? getUserLastName() {
    return _cacheHelper.getData(key: 'userLoginLastName');
  }

  String? getUserPhoneNumber() {
    return _cacheHelper.getData(key: 'userLoginPhoneNumber');
  }

  void clearAllUserData() {
    _cacheHelper.removeData(key: 'userLoginFirstName');
    _cacheHelper.removeData(key: 'userLoginLastName');
    _cacheHelper.removeData(key: 'userLoginPhoneNumber');
  }
}
