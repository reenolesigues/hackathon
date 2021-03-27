
DateTime generateDateAgnosticTime24Format(int hour) {
  return DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, hour, 00, 00);
}