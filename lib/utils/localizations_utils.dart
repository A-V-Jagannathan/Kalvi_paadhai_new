import 'package:intl/intl.dart';

String getLocalizedImagePath(String imageName) {
  String locale = Intl.defaultLocale ?? 'ta'; // fallback to 'en' if locale is not available
  return 'assets/$locale/$imageName';
}