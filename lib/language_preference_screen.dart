import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/localizations_utils.dart';
import 'package:intl/intl.dart';
import 'homescreen.dart';
import 'main.dart';

class LanguagePreferenceScreen extends StatefulWidget {
  @override
  _LanguagePreferenceScreenState createState() => _LanguagePreferenceScreenState();
}

class _LanguagePreferenceScreenState extends State<LanguagePreferenceScreen> {
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language / भाषा / மொழி',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: _buildLanguageSelection(context),
      backgroundColor: Color(0xff041c2f),
    );
  }

  Widget _buildLanguageSelection(BuildContext context) {
    return ListView(
      children: [
        _buildLanguageTile(context, 'English', Locale('en', 'US')),
        _buildLanguageTile(context, 'தமிழ்', Locale('ta', 'IN')),
        _buildLanguageTile(context, 'हिंदी', Locale('hi', 'IN')),
      ],
    );
  }

  Widget _buildLanguageTile(BuildContext context, String languageName, Locale locale) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          languageName,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onTap: () {
          _saveLanguagePreference(locale.languageCode);
          Intl.defaultLocale = locale.languageCode;
          MyApp.setLocale(context, locale);
          // Navigate to the home screen after language preference is selected
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
    );
  }

  _saveLanguagePreference(String languageCode) {
    _prefs.setString('language_code', languageCode);
  }
}
