import 'package:flutter/material.dart';
import 'package:schoolpath/misc.dart';

import 'after10.dart';
import 'after12.dart';
import 'compexams.dart';
import 'content.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/12th': (context) => const After12(),
        '/10th': (context) => const After10(),
        '/competitive_exams': (context) => const CompetitiveExams(),
        '/10th/group1': (context) =>
            const Content('குழு 1 - Group1', 'assets/Group1.pdf'),
        '/10th/group2': (context) =>
            const Content('குழு 2 - Group2', 'assets/Group2.pdf'),
        '/10th/commerce': (context) => const Content(
            'வணிகவியல் குழுக்கள் - Commerce', 'assets/Commerce.pdf'),
        '/10th/arts': (context) =>
            const Content('கலைக்கல்வி குழுக்கள் - Arts', 'assets/Arts.pdf'),
        '/10th/diploma': (context) =>
            const Content('டிப்ளோமா - Diploma', 'assets/Diploma.pdf'),
        '/competitive_exams/TNPSC': (context) =>
            const Content('டி.ன்.பி.எஸ்.சி - TNPSC', 'assets/TNPSC.pdf'),
        '/competitive_exams/RRB': (context) =>
            const Content('ஆர்.ஆர்.பி - RRB', 'assets/RRB.pdf'),
        '/competitive_exams/JEE': (context) =>
            const Content('ஜே.இ.இ - JEE', 'assets/JEE.pdf'),
        '/competitive_exams/NEET': (context) =>
            const Content('நீட் - NEET', 'assets/NEET.pdf'),
        '/competitive_exams/NDA': (context) =>
            const Content('என்.டி.ஏ - NDA', 'assets/NDA.pdf'),
        '/competitive_exams/UPSC': (context) =>
            const Content('யு.பி.எஸ்.சி - UPSC', 'assets/UPSC.pdf'),
        '/competitive_exams/SSC': (context) =>
            const Content('எஸ்.எஸ்.சி - SSC', 'assets/SSC.pdf'),
        '/competitive_exams/IBPS': (context) =>
            const Content('ஐ.பி.பி.எஸ் - IBPS', 'assets/IBPS.pdf'),
        '/competitive_exams/CAT': (context) =>
            const Content('சி.ஏ.டி - CAT', 'assets/CAT.pdf'),
        '/competitive_exams/CDS': (context) =>
            const Content('சி.டி.எஸ் - CDS', 'assets/CDS.pdf'),
        '/competitive_exams/TET': (context) =>
            const Content('டி.இ.டி - TET', 'assets/TET.pdf'),
        '/competitive_exams/CLAT': (context) =>
            const Content('சி.எல்.ஏ.டி - CLAT', 'assets/CLAT.pdf'),
        '/competitive_exams/GATE': (context) =>
            const Content('கேட் - GATE', 'assets/GATE.pdf'),
        '/competitive_exams/NET': (context) =>
            const Content('என்.இ.டி - NET', 'assets/NET.pdf'),
        '/12th/MBBS': (context) =>
            const Content('எம்.பி.பி.எஸ் - MBBS', 'assets/MBBS.pdf'),
        '/12th/BDS': (context) =>
            const Content('பி.டி.எஸ் - BDS', 'assets/BDS.pdf'),
        '/12th/vetinary': (context) => const Content(
            'கால்நடை அறிவியல் - Veterinary', 'assets/Vetinary.pdf'),
        '/12th/phyth': (context) => const Content(
            'உடற்பயிற்சி சிகிச்சை - PhysioTherapy',
            'assets/PhysioTheraphy.pdf'),
        '/12th/pharmacy': (context) =>
            const Content('மருந்தகம் - Pharmacy', 'assets/Pharmacy.pdf'),
        '/12th/occth': (context) => const Content(
            'தொழில்சார் சிகிச்சை - Occupational Therapy',
            'assets/OccupationalTheraphy.pdf'),
        '/12th/nursing': (context) =>
            const Content('பொது நர்சிங் - Nursing', 'assets/Nursing.pdf'),
        '/12th/biotech': (context) => const Content(
            'உயிரி தொழில்நுட்பவியல் - BioTech', 'assets/BioTech.pdf'),
        '/12th/microbio': (context) => const Content(
            'நுண்ணுயிரியல் - Microbiology', 'assets/MicroBiology.pdf'),
        '/12th/artsscience': (context) => const Content(
            'மற்ற கலை மற்றும் அறிவியல் படிப்புகள்', 'assets/ArtsScience.pdf'),
        '/12th/engineering': (context) =>
            const Content('பொறியியல் - Engineering', 'assets/Engineering.pdf'),
        '/12th/BARCH': (context) =>
            const Content('பி.ஆர்க்  - BArch', 'assets/BArch.pdf'),
        '/12th/BCOMCA': (context) =>
            const Content('பி.காம் சிஏ  - BComCA', 'assets/BComCA.pdf'),
        '/12th/BCOMIT': (context) =>
            const Content('பி.காம் ஐடீ  - BComIT', 'assets/BComIT.pdf'),
        '/12th/BCA': (context) =>
            const Content('பிசிஏ  - BCA', 'assets/BCA.pdf'),
        '/12th/BCOM': (context) =>
            const Content('பி.காம் - BCom', 'assets/BCom.pdf'),
        '/feedback': (context) => const FeedbackPage(),
        '/credits': (context) => const CreditsPage(),

        // Add routes for sub-pages here
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Future.delayed(
      const Duration(seconds: 3), // Adjust the duration as needed
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );

    return Container(
      color: const Color(0xff011e31), // Set the background color to black
      child: Center(
        child: Image.asset(
          'assets/logo.jpg', // Adjust the path to your logo
          width: width, // Set the width of your logo
          height: width, // Set the height of your logo
        ), // You can replace this with your own logo or widget
      ),
    );
  }
}
