import 'dart:math';

import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/music.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Music music;

  setUp(() {
    faker = MockFaker();
    music = Music(faker);

    when(() => faker.random).thenReturn(Random(0));
  });

  test('return a random genre', () {
    when(() => faker.locale.music.genre).thenReturn(['rock']);
    expect(music.genre(), 'rock');
  });
}
