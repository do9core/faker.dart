import 'dart:math';

/// utils for random variable interactions
class RandomUtils {
  /// return a random string from a string array
  static dynamic arrayElement(Random random, List<dynamic>? list) {
    if (list == null) return '';
    final index = random.nextInt(list.length);
    return list[index];
  }

  /// return a random [count] of items from a provided [list]
  static List<T> arrayElements<T>(Random random, List<T>? list, int count) {
    list ??= [];
    if (list.isEmpty) return [];

    return List.generate(count, (_) => arrayElement(random, list));
  }
}
