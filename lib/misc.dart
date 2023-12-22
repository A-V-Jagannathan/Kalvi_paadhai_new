import 'package:flutter/material.dart';

const Color buttonBackground = Colors.blue;
const Color appbarBackground = Color(0xff041c2f);
const Color drawerbuttonBackground = Color(0xff0f263b);
const Color screenBackground = Color(0xff24292f);
const double butrad = 15;

class CreditsPage extends StatelessWidget {
  const CreditsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildFloatingListTile(String title, String route) {
      return Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          // Add this to round the edges
          borderRadius:
              BorderRadius.circular(butrad), // Adjust the radius as needed
        ),
        color: drawerbuttonBackground,
        elevation: 6.0,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        title: const Text(
          'உருவாக்கியவர்கள்',
          style: TextStyle(fontSize: 14.0),
        ),
        backgroundColor: appbarBackground,
      ),
      drawer: Drawer(
        backgroundColor: appbarBackground,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: appbarBackground,
                image: DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: null,
            ),
            buildFloatingListTile('முக பக்கம்', '/home'),
            buildFloatingListTile('உருவாக்கியவர்கள்', '/credits'),
            buildFloatingListTile('கருத்து அல்லது கேள்விகள்', '/feedback'),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "கனவுகளைக் கொண்டிருக்கும் ஆனால் அதை அடைவதற்கான வழி தெரியாத மக்களுக்கு உதவும் நோக்கத்தில் இது செய்யப்பட்டது. அன்புடன் உருவாக்கியவர்கள்\n\n\n1. ஆ.வி.ஜகன்நாதன் - பயன்பாடு உருவாக்கி\n\n2. ஷியாம் சுந்தர்.கோ.சீ- தகவல் சேகரிப்பவர்\n\n3. இளமதி. இ - தகவல் சேகரிப்பவர்\n\n4. முகமது அல்தமீஸ். ஜா - தகவல் சேகரிப்பவர்\n\n5. கீதா.ஜே - தகவல் சேகரிப்பவர்\n\nSASTRA பல்கலைக்கழகத்தில் இருந்து.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildFloatingListTile(String title, String route) {
      return Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          // Add this to round the edges
          borderRadius:
              BorderRadius.circular(butrad), // Adjust the radius as needed
        ),
        color: drawerbuttonBackground,
        elevation: 6.0,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        title: const Text(
          'கருத்து அல்லது கேள்விகள்',
          style: TextStyle(fontSize: 14.0),
        ),
        backgroundColor: appbarBackground,
      ),
      drawer: Drawer(
        backgroundColor: appbarBackground,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: appbarBackground,
                image: DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: null,
            ),
            buildFloatingListTile('முக பக்கம்', '/home'),
            buildFloatingListTile('உருவாக்கியவர்கள்', '/credits'),
            buildFloatingListTile('கருத்து அல்லது கேள்விகள்', '/feedback'),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "இந்தப் பயன்பாடு உங்களுக்குத் தகவல் தரும் என்று நம்புகிறேன்!\n\nஏதேனும் திருத்தங்கள் அல்லது பரிந்துரைகள் இருந்தால், தெரிவியுங்கள் \n\n\nஆ.வி.ஜகன்நாதன்  (A V Jagannathan)\njgan2k03@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
