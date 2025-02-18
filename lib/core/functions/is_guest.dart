import 'package:ultra_app/core/databases/cache/user_cache_helper.dart';
import 'package:ultra_app/core/services/service_locator.dart';

bool isGuest() {
  final UserCacheHelper userCacheHelper = getIt<UserCacheHelper>();
  final String? firstName = userCacheHelper.getUserFirstName();

  return firstName == null || firstName.isEmpty;
}
