import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageServiceImpl(this.sharedPreferences);

  @override
  Future<void> saveData<T>(String key, T value) async {
    if (value is String) {
      await sharedPreferences.setString(key, value);
    } else if (value is int) {
      await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      await sharedPreferences.setBool(key, value);
    } else {
      throw UnsupportedError('Unsupported type');
    }
  }

  @override
  T? retrieveData<T>(String key) {
    final data = sharedPreferences.get(key);
    if (data is T) {
      return data;
    }
    return null;
  }

  @override
  Future<void> removeData(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<void> clearAllData() async {
    await sharedPreferences.clear();
  }
}
