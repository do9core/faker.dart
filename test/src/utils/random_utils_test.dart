import 'dart:math';

import 'package:faker_dart/src/utils/random_utils.dart';
import 'package:test/test.dart';

void main() {
  test('get one random array element', () {
    final random = Random(0);
    final result = RandomUtils.arrayElement(random, [1]);
    expect(result, 1);
  });

  test('get random array elements', () {
    final random = Random(0);
    final result = RandomUtils.arrayElements(random, [1], 3);
    expect(result, [1, 1, 1]);
  });

  test('get  random array elements from empty array or null', () {
    final random = Random(0);
    final result = RandomUtils.arrayElements(random, null, 3);
    expect(result, []);
  });
}
