import 'package:faker_dart/faker_dart.dart';
import 'package:test/test.dart';

void main() {
  const fmt = '{{name.lastName}}, {{name.firstName}} {{name.suffix}}';

  test('faker can replay same sequence when set same seed', () {
    final faker = Faker.seed(100);
    final result1 = faker.fake(fmt);

    faker.setSeed(100);
    final result2 = faker.fake(fmt);
    expect(result1 == result2, isTrue);
  });

  test('fakers with same seed generate same sequence', () {
    final faker1 = Faker.seed(0);
    final faker2 = Faker.seed(0);

    final result1 = faker1.fake(fmt);
    final result2 = faker2.fake(fmt);
    expect(result1 == result2, isTrue);
  });
}
