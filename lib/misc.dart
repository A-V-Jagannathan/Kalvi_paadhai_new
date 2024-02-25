import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const Color buttonBackground = Colors.blue;
const Color appbarBackground = Colors.white;
const Color drawerbuttonBackground = Colors.white;
const Color screenBackground = Color(0xff041c2f);
const double butrad = 15;

/*class CreditsPage extends StatelessWidget {
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
            style: const TextStyle(color: Colors.black),
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
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          AppLocalizations.of(context)!.creators,
          style: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
        backgroundColor: appbarBackground,
      ),
      drawer: Drawer(
        backgroundColor: screenBackground,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: appbarBackground,
                image: DecorationImage(
                  image: AssetImage("assets/Logo_wtext.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: null,
            ),
            buildFloatingListTile(AppLocalizations.of(context)!.homeTitle, '/home'),
            buildFloatingListTile(AppLocalizations.of(context)!.creators, '/credits'),
            buildFloatingListTile(AppLocalizations.of(context)!.feedback, '/feedback'),
          ],
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.creators,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

 */

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
            style: const TextStyle(color: Colors.black),
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
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          AppLocalizations.of(context)!.feedback,
          style: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
        backgroundColor: appbarBackground,
      ),
      drawer: Drawer(
        backgroundColor: screenBackground,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: appbarBackground,
                image: DecorationImage(
                  image: AssetImage("assets/Logo_wotext.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: null,
            ),
            buildFloatingListTile(
                AppLocalizations.of(context)!.homeTitle, '/home'),
            //buildFloatingListTile(AppLocalizations.of(context)!.creators, '/credits'),
            buildFloatingListTile(
                AppLocalizations.of(context)!.feedback, '/feedback'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.thankYou,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
