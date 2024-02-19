import 'dart:math';

import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late Random random;

  setUp(() {
    random = MockRandom();
    when(() => random.nextInt(any())).thenReturn(0);
  });

  test('replaceSymbolWithNumber', () {
    final result = HelperUtils.replaceSymbolWithNumber(random, '####');
    expect(!result.contains('#'), isTrue);
    expect(int.tryParse(result), isNotNull);
  });

  test('replaceSymbols', () {
    final result = HelperUtils.replaceSymbols(random, '####');
    expect(result.contains('#'), isFalse);
    expect(int.tryParse(result), isNotNull);
  });

  test('replace Symbols with question mark should return letters', () {
    final result = HelperUtils.replaceSymbols(random, '??##');

    final regex = RegExp(r'^-?[0-9]+$');
    expect(regex.hasMatch(result.substring(0, 2)), isFalse);
    expect(regex.hasMatch(result.substring(2)), isTrue);
  });

  test('repeatString', () {
    final result = HelperUtils.repeatString('a', 4);
    expect(result, 'aaaa');
  });
}
