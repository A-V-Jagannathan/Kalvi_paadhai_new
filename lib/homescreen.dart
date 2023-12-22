import 'package:flutter/material.dart';

const Color buttonBackground = Colors.blue;
const Color appbarBackground = Color(0xff041c2f);
const Color drawerbuttonBackground = Color(0xff0f263b);
const Color screenBackground = Color(0xff24292f);
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
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        ),
      );
    }

    double buttonWidth =
        MediaQuery.of(context).size.width * 0.75; // 1/100th of screen width
    double buttonHeight = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
        backgroundColor: screenBackground,
        appBar: AppBar(
            title: const Text(
              'முக பக்கம்',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            backgroundColor: appbarBackground),
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
        body: SingleChildScrollView(
          child: Center(
            // Wrap the Column with SingleChildScrollView
            child: Column(
              // Align to the top
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 45, bottom: 15, right: 150),
                  child: Text(
                    "வணக்கம்!!",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0), // Add padding here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/12th');
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(buttonWidth, buttonHeight),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(buttonBackground),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                    child: const Text(
                      '12 ஆம் வகுப்புக்குப் பிறகு',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0), // Add padding here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/10th');
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(buttonWidth, buttonHeight),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(buttonBackground),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                    child: const Text(
                      '10 ஆம் வகுப்புக்குப் பிறகு',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0), // Add padding here
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/competitive_exams');
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(buttonWidth, buttonHeight),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(buttonBackground),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                    child: const Text(
                      'நுழைவுத் தேர்வுகள்',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ), // This takes up remaining spac
              ],
            ),
          ),
        ));
  }
}
