import 'package:hive/hive.dart';

/// Hive configuration for the local storage.
class HiveConfig<T> {
  const HiveConfig(this._box);

  final Box<T> _box;

  Future<void> create(String key, T value) async {
    await _box.put(key, value);
  }

  T? read(String key) {
    return _box.get(key);
  }

  Future<void> update(String key, T value) async {
    await _box.put(key, value);
  }

  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  List<T> readAll() {
    return _box.values.toList(growable: false);
  }

  T? findByField(bool Function(T) test) {
    return _box.values.firstWhere(test);
  }
}
