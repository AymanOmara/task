import 'package:data/locale/locale_keys.dart';
import 'package:domain/locale_storage/i_user_local.dart';
import 'package:get_storage/get_storage.dart';

class UserLocal implements IUserLocal {
  final GetStorage _storage;

  UserLocal(this._storage);

  @override
  String get getLocale => _storage.read(LocaleKeys.locale) ?? "";

  @override
  void setLocale(String locale) {
    _storage.write(LocaleKeys.locale, locale);
  }
}
