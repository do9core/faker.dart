import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/address.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/name.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';

void main() {
  late Faker faker;
  late Address address;

  setUp(() {
    faker = MockFaker();
    address = Address(faker);

    when(() => faker.datatype).thenReturn(DataType());
    when(() => faker.name).thenReturn(Name(faker));
  });

  test('return correctly formatted zipcode', () {
    final zipcode = address.zipCode(format: '-###');

    expect(zipcode.length, 4);
    expect(zipcode[0], '-');
    expect(!zipcode.contains('#'), isTrue);
  });

  test('returns city in correct format', () {
    // needs to mock faker.fake, see faker_test.dart
  });

  test('returns city prefix', () {
    final prefix = address.cityPrefix();

    expect(prefix, isNotNull);
    expect(prefix, const TypeMatcher<String>());
  });

  test('returns city suffix', () {
    final suffix = address.citySuffix();

    expect(suffix, isNotNull);
    expect(suffix, const TypeMatcher<String>());
  });

  test('returns city name', () {
    final name = address.cityName();

    expect(name, isNotNull);
    expect(name, const TypeMatcher<String>());
  });

  test('returns street name', () {
    final name = address.streetName();
    expect(name.split(' ').length, 2);
  });

  test('returns street suffix', () {
    final suffix = address.streetSuffix();

    expect(suffix, isNotNull);
    expect(suffix, const TypeMatcher<String>());
  });

  test('returns street prefix', () {
    final prefix = address.streetSuffix();

    expect(prefix, isNotNull);
    expect(prefix, const TypeMatcher<String>());
  });

  test('return valid street address format', () {
    final streetAddress = address.streetAddress();
    expect(streetAddress.split(' ').length >= 2, isTrue);
  });

  test('return valid secundary street address', () {
    final streetAddress = address.secondaryAddress();
    expect(streetAddress.split(' ').length >= 2, isTrue);
    expect(['Apt.', 'Suite'].contains(streetAddress.split(' ')[0]), isTrue);
  });

  test('returns county', () {
    when(() => faker.locale.address.county).thenReturn(['John']);
    final county = address.county();

    expect(county, const TypeMatcher<String>());
    expect(county.isNotEmpty, isTrue);
  });

  test('returns country', () {
    when(() => faker.locale.address.country).thenReturn(['John']);
    final country = address.country();

    expect(country, const TypeMatcher<String>());
    expect(country.isNotEmpty, isTrue);
  });

  test('returns countryCode', () {
    when(() => faker.locale.address.countryCode).thenReturn(['WB']);
    when(() => faker.locale.address.countryCodeAlpha3).thenReturn(['WBA']);

    final country = address.countryCode();
    expect(country.length, 2);
    final country3 = address.countryCode(alphaCode: AlphaCode.alpha3);
    expect(country3.length, 3);
  });

  test('returns state', () {
    when(() => faker.locale.address.state).thenReturn(['Washington']);
    final country = address.state();

    expect(country, const TypeMatcher<String>());
    expect(country.isNotEmpty, isTrue);
  });

  test('returns stateAbbr', () {
    when(() => faker.locale.address.stateAbbr).thenReturn(['WA']);
    final country = address.stateAbbr();

    expect(country, const TypeMatcher<String>());
    expect(country.length, 2);
  });

  test('return correct latitude', () {
    final latitude = address.latitude();
    expect(latitude >= -90 && latitude <= 90, isTrue);
  });

  test('return correct longitude', () {
    final longitude = address.longitude();
    expect(longitude >= -180 && longitude <= 180, isTrue);
  });

  test('return correct direction', () {
    when(() => faker.locale.address.direction).thenReturn(['North']);
    when(() => faker.locale.address.directionAbbr).thenReturn(['N']);
    final direction = address.direction();

    expect(direction == 'North' || direction == 'N', isTrue);
  });

  test('return correct cardinal direction', () {
    when(() => faker.locale.address.direction)
        .thenReturn(['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a']);
    when(() => faker.locale.address.directionAbbr)
        .thenReturn(['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']);
    final direction = address.cardinalDirection();

    expect(direction == 'a' || direction == 'b', isTrue);
  });

  test('return correct ordinal direction', () {
    when(() => faker.locale.address.direction)
        .thenReturn(['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a']);
    when(() => faker.locale.address.directionAbbr)
        .thenReturn(['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']);
    final direction = address.ordinalDirection();

    expect(direction == 'a' || direction == 'b', isTrue);
  });

  test('return a valid gps coordinate', () {
    final coord = address.nearbyGPSCoordinate();

    expect(coord[0] >= -90 && coord[0] <= 90, isTrue);
    expect(coord[1] >= -180 && coord[1] <= 180, isTrue);
  });

    test('returns timezone', () {
    when(() => faker.locale.address.timeZone).thenReturn(['+1']);
    final timezone = address.timezone();

    expect(timezone, const TypeMatcher<String>());
    expect(timezone.length, 2);
  });
}
