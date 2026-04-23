import 'dart:async';

abstract class ResourceService<T> {
  Map<String, T> data;

  Future<Map<String, T>> fetchAll();
}
