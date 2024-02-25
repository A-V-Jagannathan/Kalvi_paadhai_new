import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const Color buttonBackground = Colors.blue;
const Color appbarBackground = Color(0xff041c2f);
const Color drawerbuttonBackground = Colors.white;
const Color screenBackground = Color(0xff041c2f);
const double butrad = 15;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        ),
      );
    }

    double height = MediaQuery.of(context).size.height;

    double buttonrad = MediaQuery.of(context).size.width * 0.125;
    double mainspacing = MediaQuery.of(context).size.height * 0.05;
    double crossspacing =
        MediaQuery.of(context).size.height * 0.01; // 1/100th of screen width
    return Scaffold(
        backgroundColor: screenBackground,
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              AppLocalizations.of(context)!.homeTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            backgroundColor: Colors.white),
        drawer: Drawer(
          backgroundColor: appbarBackground,
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
        body: Stack(children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.2, // Starting at 10% from the top
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Logo_wotext.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.187,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.quote,
                style: TextStyle(
                  fontSize: 0.016 * height,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: mainspacing,
              crossAxisSpacing: crossspacing,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.25,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/lang_pref');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: buttonrad,
                        backgroundImage: AssetImage('assets/Language_icon.png'),
                      ),
                      SizedBox(
                          height: 0.01 *
                              height), // Add spacing between the avatar and the text
                      Text(
                        AppLocalizations.of(context)!.languages,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.0168 * height),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/12th');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: buttonrad,
                        backgroundImage: AssetImage('assets/twelfth_icon.png'),
                      ),
                      SizedBox(
                          height: 0.01 *
                              height), // Add spacing between the avatar and the text
                      Text(
                        AppLocalizations.of(context)!.after12Title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.0168 * height),
                        textAlign: TextAlign.center,
                      ), // Add your text here
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/10th');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: buttonrad,
                        backgroundImage: AssetImage('assets/tenth_icon.png'),
                      ),
                      SizedBox(
                          height: 0.01 *
                              height), // Add spacing between the avatar and the text
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.after10Title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.0168 * height),
                          textAlign: TextAlign.center,
                        ),
                      ) // Add your text here
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/competitive_exams');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: buttonrad,
                        backgroundImage: AssetImage('assets/Compexams.png'),
                      ),
                      SizedBox(
                          height: 0.0067 *
                              height), // Add spacing between the avatar and the text
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.compTitle,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.0168 * height),
                          textAlign: TextAlign.center,
                        ),
                      ) // Add your text here
                    ],
                  ),
                ),
                // Repeat the above pattern for other buttons...
              ],
            ),
          ),
        ]));
  }
}
