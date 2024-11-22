import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  LocalStorageServiceImpl._init();
  static SharedPreferences? _preferences;

  static final LocalStorageServiceImpl _instance =
      LocalStorageServiceImpl._init();

  static LocalStorageServiceImpl get instance {
    return _instance;
  }

  // Initialize SharedPreferences
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  void saveData<T>(String key, T value) {
    if (value is String) {
      _preferences?.setString(key, value);
    } else if (value is int) {
      _preferences?.setInt(key, value);
    } else if (value is double) {
      _preferences?.setDouble(key, value);
    } else if (value is bool) {
      _preferences?.setBool(key, value);
    } else if (value is List<String>) {
      _preferences?.setStringList(key, value);
    } else {
      throw Exception('Unsupported type');
    }
  }

  @override
  T? retrieveData<T>(String key) {
    if (T == String) {
      return _preferences?.getString(key) as T?;
    } else if (T == int) {
      return _preferences?.getInt(key) as T?;
    } else if (T == double) {
      return _preferences?.getDouble(key) as T?;
    } else if (T == bool) {
      return _preferences?.getBool(key) as T?;
    } else if (T == List<String>) {
      return _preferences?.getStringList(key) as T?;
    } else {
      return null;
    }
  }

  @override
  Future<void> removeData(String key) async {
    await _preferences?.remove(key);
  }

  @override
  Future<void> clearAllData() async {
    await _preferences?.clear();
  }
}
