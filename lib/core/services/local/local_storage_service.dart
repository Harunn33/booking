part of 'local_storage_service_impl.dart';

abstract class LocalStorageService {
  void saveData<T>(String key, T value);
  T? retrieveData<T>(String key);
  void removeData(String key);
  Future<void> clearAllData();
}
