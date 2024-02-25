import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'after10.dart';
import 'after12.dart';
import 'compexams.dart';
import 'content.dart';
import 'homescreen.dart';
import 'language_preference_screen.dart';
import 'misc.dart';
import 'utils/localizations_utils.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static Future<void> setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    await state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _loadLocale();
  }

  _loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language_code') ?? 'en';
    String countryCode = prefs.getString('country_code') ?? 'US';
    setState(() {
      _locale = Locale(languageCode, countryCode);
    });
  }

  _saveLocale(Locale newLocale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', newLocale.languageCode);
    await prefs.setString('country_code', newLocale.countryCode ?? '');
  }

  Future<void> setLocale(Locale newLocale) async {
    await _saveLocale(newLocale);
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/12th': (context) => const After12(),
        '/10th': (context) => const After10(),
        '/lang_pref': (context) => LanguagePreferenceScreen(),
        '/competitive_exams': (context) => const CompetitiveExams(),
        '/10th/group1': (context) => Content(
            AppLocalizations.of(context)!.sciGrpTitle,
            getLocalizedImagePath('Group1.pdf')),
        '/10th/group2': (context) => Content(
            AppLocalizations.of(context)!.compSci,
            getLocalizedImagePath('Group2.pdf')),
        '/10th/commerce': (context) => Content(
            AppLocalizations.of(context)!.comm10C,
            getLocalizedImagePath('Commerce.pdf')),
        '/10th/arts': (context) => Content(AppLocalizations.of(context)!.artsC,
            getLocalizedImagePath('Arts.pdf')),
        '/10th/diploma': (context) => Content(
            AppLocalizations.of(context)!.diploma,
            getLocalizedImagePath('Diploma.pdf')),
        '/competitive_exams/TNPSC': (context) => Content(
            AppLocalizations.of(context)!.tnpsc,
            getLocalizedImagePath('TNPSC.pdf')),
        '/competitive_exams/RRB': (context) => Content(
            AppLocalizations.of(context)!.rrb,
            getLocalizedImagePath('RRB.pdf')),
        '/competitive_exams/JEE': (context) => Content(
            AppLocalizations.of(context)!.jee,
            getLocalizedImagePath('JEE.pdf')),
        '/competitive_exams/NEET': (context) => Content(
            AppLocalizations.of(context)!.neet,
            getLocalizedImagePath('NEET.pdf')),
        '/competitive_exams/NDA': (context) => Content(
            AppLocalizations.of(context)!.nda,
            getLocalizedImagePath('NDA.pdf')),
        '/competitive_exams/UPSC': (context) => Content(
            AppLocalizations.of(context)!.upsc,
            getLocalizedImagePath('UPSC.pdf')),
        '/competitive_exams/SSC': (context) => Content(
            AppLocalizations.of(context)!.ssc,
            getLocalizedImagePath('SSC.pdf')),
        '/competitive_exams/IBPS': (context) => Content(
            AppLocalizations.of(context)!.ibps,
            getLocalizedImagePath('IBPS.pdf')),
        '/competitive_exams/CAT': (context) => Content(
            AppLocalizations.of(context)!.cat,
            getLocalizedImagePath('CAT.pdf')),
        '/competitive_exams/CDS': (context) => Content(
            AppLocalizations.of(context)!.cds,
            getLocalizedImagePath('CDS.pdf')),
        '/competitive_exams/TET': (context) => Content(
            AppLocalizations.of(context)!.tet,
            getLocalizedImagePath('TET.pdf')),
        '/competitive_exams/CLAT': (context) => Content(
            AppLocalizations.of(context)!.clat,
            getLocalizedImagePath('CLAT.pdf')),
        '/competitive_exams/GATE': (context) => Content(
            AppLocalizations.of(context)!.gate,
            getLocalizedImagePath('GATE.pdf')),
        '/competitive_exams/NET': (context) => Content(
            AppLocalizations.of(context)!.net,
            getLocalizedImagePath('NET.pdf')),
        '/12th/MBBS': (context) => Content(AppLocalizations.of(context)!.mBBS,
            getLocalizedImagePath('MBBS.pdf')),
        '/12th/BDS': (context) => Content(AppLocalizations.of(context)!.bds,
            getLocalizedImagePath('BDS.pdf')),
        '/12th/vetinary': (context) => Content(
            AppLocalizations.of(context)!.vet,
            getLocalizedImagePath('Vetinary.pdf')),
        '/12th/phyth': (context) => Content(
            AppLocalizations.of(context)!.physio,
            getLocalizedImagePath('PhysioTheraphy.pdf')),
        '/12th/pharmacy': (context) => Content(
            AppLocalizations.of(context)!.phar,
            getLocalizedImagePath('Pharmacy.pdf')),
        '/12th/occth': (context) => Content(AppLocalizations.of(context)!.occT,
            getLocalizedImagePath('OccupationalTheraphy.pdf')),
        '/12th/nursing': (context) => Content(AppLocalizations.of(context)!.nur,
            getLocalizedImagePath('Nursing.pdf')),
        '/12th/biotech': (context) => Content(
            AppLocalizations.of(context)!.biot,
            getLocalizedImagePath('BioTech.pdf')),
        '/12th/microbio': (context) => Content(
            AppLocalizations.of(context)!.micR,
            getLocalizedImagePath('MicroBiology.pdf')),
        '/12th/artsscience': (context) => Content(
            AppLocalizations.of(context)!.artscit,
            getLocalizedImagePath('ArtsScience.pdf')),
        '/12th/engineering': (context) => Content(
            AppLocalizations.of(context)!.engC,
            getLocalizedImagePath('Engineering.pdf')),
        '/12th/BARCH': (context) => Content(AppLocalizations.of(context)!.arch,
            getLocalizedImagePath('BArch.pdf')),
        '/12th/BCOMCA': (context) => Content(
            AppLocalizations.of(context)!.bComca,
            getLocalizedImagePath('BComCA.pdf')),
        '/12th/BCOMIT': (context) => Content(
            AppLocalizations.of(context)!.bComit,
            getLocalizedImagePath('BComIT.pdf')),
        '/12th/BCA': (context) => Content(AppLocalizations.of(context)!.bca,
            getLocalizedImagePath('BCA.pdf')),
        '/12th/BCOM': (context) => Content(AppLocalizations.of(context)!.bCom,
            getLocalizedImagePath('BCom.pdf')),
        '/feedback': (context) => const FeedbackPage(),
        //'/credits': (context) => const CreditsPage(),

        // Add routes for sub-pages here
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    Future.delayed(
      const Duration(seconds: 3),
      () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool isFirstLaunch = prefs.getBool('first_launch') ?? true;

        if (isFirstLaunch) {
          // First launch: navigate to language preference screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LanguagePreferenceScreen()),
          );
          // Set 'first_launch' to false to indicate that it's not the first launch anymore
          await prefs.setBool('first_launch', false);
        } else {
          // Not the first launch: navigate to the home screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
      },
    );

    return Container(
      color: const Color(0xff011e31),
      child: Center(
        child: Image.asset(
          'assets/Logo_wotext.jpg',
          width: width,
          height: width,
        ),
      ),
    );
  }
}
