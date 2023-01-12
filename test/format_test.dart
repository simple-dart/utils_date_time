import 'package:simple_dart_utils_date_time/simple_dart_utils_date_time.dart' as utils_date_time;
import 'package:test/test.dart';

DateTime dateExample = DateTime(1234, 5, 6);
DateTime dateTimeExample = DateTime(1234, 5, 6, 1, 2);
DateTime dateTimeSecondsExample = DateTime(1234, 5, 6, 1, 2, 3);

void main() {
  test('Test DateTime formats', () {
    expect(utils_date_time.formatDate(dateTimeSecondsExample), equals('1234-05-06'));
    expect(utils_date_time.formatDateTime(dateTimeSecondsExample), equals('1234-05-06 01:02:03'));
    expect(utils_date_time.formatHoursMinutes(dateTimeSecondsExample), equals('01:02'));
    expect(utils_date_time.formatDateHum(dateTimeSecondsExample), equals('06.05.1234'));
    expect(utils_date_time.formatDateTimeHum(dateTimeSecondsExample), equals('06.05.1234 01:02:03'));
    expect(utils_date_time.formatDateTimeHumIfExist(dateTimeSecondsExample), equals('06.05.1234 01:02:03'));
    expect(utils_date_time.formatDateTimeHumIfExist(dateExample), equals('06.05.1234'));
  });
}
