import 'package:faker_dart/faker_dart.dart';
import 'package:test/test.dart';

void main() {
  late Faker faker1;
  late Faker faker2;

  setUp(() {
    faker1 = Faker.seed(0);
    faker2 = Faker.seed(0);
  });

  test('fakers with same seed generate same sequence', () {
    List<dynamic> grabResults(Faker faker) {
      return [
        faker.git.branch(),
        faker.database.collation(),
        faker.hacker.noun(),
      ];
    }

    bool listEquals<T>(List<T> a, List<T> b) {
      if (a.length != b.length) return false;
      for (int i = 0; i < a.length; i++) {
        if (a[i] != b[i]) return false;
      }
      return true;
    }

    final faker1Result = grabResults(faker1);
    final faker2Result = grabResults(faker2);
    expect(listEquals(faker1Result, faker2Result), true);
  });
}
