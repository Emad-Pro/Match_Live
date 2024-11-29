import 'package:live_match/core/shared_pref/shared_pref.dart';

bool getLogoChannelValue() {
  final response = CacheHelper.getData(key: "logo_channel") ?? true;

  if (response == true || response == null) {
    return true;
  } else {
    return false;
  }
}
