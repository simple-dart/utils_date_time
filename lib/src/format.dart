String formatDate(DateTime date) => '${date.year.toString()}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';

String formatTime(DateTime date) => '${date.hour.toString().padLeft(2, '0')}:'
    '${date.minute.toString().padLeft(2, '0')}:'
    '${date.second.toString().padLeft(2, '0')}';

String formatDateTime(DateTime date) => '${formatDate(date)} ${formatTime(date)}';

String formatDateHum(DateTime date) => '${date.day.toString().padLeft(2, '0')}.'
    '${date.month.toString().padLeft(2, '0')}.'
    '${date.year.toString()}';

String formatDateTimeHum(DateTime date) => '${formatDateHum(date)} '
    '${formatTime(date)}';

String formatHoursMinutes(DateTime date) => '${date.hour.toString().padLeft(2, '0')}:'
    '${date.minute.toString().padLeft(2, '0')}';

String formatDateTimeHumIfExist(DateTime date) {
  var ret = formatDateHum(date);
  final timeStr = formatHoursMinutes(date);
  if (timeStr != '00:00') {
    ret += ' $timeStr';
  }
  if (date.second > 0) {
    ret += ':${date.second.toString().padLeft(2, '0')}';
  }
  return ret;
}
