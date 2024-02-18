import 'dart:math';

import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:test/test.dart';

void main() {
  test('replaceSymbolWithNumber', () {
    final result = HelperUtils.replaceSymbolWithNumber('####');
    expect(!result.contains('#'), isTrue);
    expect(int.tryParse(result), isNotNull);
  });

  test('replaceSymbols', () {
    final random = Random(0);
    final result = HelperUtils.replaceSymbols(random, '####');
    expect(result.contains('#'), isFalse);
    expect(int.tryParse(result), isNotNull);
  });

  test('replace Symbols with question mark should return letters', () {
    final random = Random(0);
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
