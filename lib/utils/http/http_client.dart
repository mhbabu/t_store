import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}

/// *** *** *** *** *** Example *** *** *** *** *** ///

// // Initialize
// final localStorage = TLocalStorage();

// // Save data
// void saveExample() async {
//   await localStorage.saveData<String>('username', 'JohnDoe');
//   await localStorage.saveData<int>('age', 25);
//   await localStorage.saveData<bool>('isLoggedIn', true);
// }

// // Read data
// void readExample() {
//   String? username = localStorage.readData<String>('username');
//   int? age = localStorage.readData<int>('age');
//   bool? isLoggedIn = localStorage.readData<bool>('isLoggedIn');

//   print('Username: $username');
//   print('Age: $age');
//   print('Is Logged In: $isLoggedIn');
// }

// // Remove data
// void removeExample() async {
//   await localStorage.removeData('username');
// }

// // Clear all data
// void clearExample() async {
//   await localStorage.clearAll();
// }