import 'package:flutter/material.dart';

const Color buttonBackground = Color(0xff194769);
const Color appbarBackground = Color(0xff041c2f);
const Color screenBackground = Color(0xff24292f);
const Color onexpanded = Color(0xff26ff00);
const Color white = Color(0xffffffff);
const double rad = 22.0;
const double pad = 12;
const double butrad = 18;

class After10 extends StatelessWidget {
  final String title = '10 ஆம் வகுப்புக்குப் பிறகு';

  const After10({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontSize: 18.0)),
        backgroundColor: appbarBackground,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(pad),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(rad),
              child: ExpansionTile(
                backgroundColor: buttonBackground,
                collapsedBackgroundColor: buttonBackground,
                collapsedIconColor: white,
                iconColor: onexpanded,
                textColor: onexpanded,
                collapsedTextColor: white,
                title: const Text(
                  'அறிவியல் குழுக்கள் (Science Groups)',
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/10th/group1');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, buttonHeight)),
                        alignment: Alignment.centerLeft,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                butrad), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Text(
                          "Group 1\nகுழு 1 - கணினி அறிவியல் குழுக்கள்"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/10th/group2');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, buttonHeight)),
                        alignment: Alignment.centerLeft,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                butrad), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Text("Group 2\nகுழு 2 - உயிரியல் குழுக்கள"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(pad),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(rad),
              child: ExpansionTile(
                backgroundColor: buttonBackground,
                collapsedBackgroundColor: buttonBackground,
                collapsedIconColor: white,
                iconColor: onexpanded,
                textColor: onexpanded,
                collapsedTextColor: white,
                title: const Text('வணிகவியல் குழுக்கள் (Commerce)'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/10th/commerce');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, buttonHeight)),
                        alignment: Alignment.centerLeft,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                butrad), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Text("Commerce\nவணிகவியல்"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(pad),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(rad),
              child: ExpansionTile(
                backgroundColor: buttonBackground,
                collapsedBackgroundColor: buttonBackground,
                collapsedIconColor: white,
                iconColor: onexpanded,
                textColor: onexpanded,
                collapsedTextColor: white,
                title: const Text('கலை குழுக்கள் (Arts)'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/10th/arts');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, buttonHeight)),
                        alignment: Alignment.centerLeft,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                butrad), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Text("Arts\nகலை"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(pad),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(rad),
              child: ExpansionTile(
                backgroundColor: buttonBackground,
                collapsedBackgroundColor: buttonBackground,
                collapsedIconColor: white,
                iconColor: onexpanded,
                textColor: onexpanded,
                collapsedTextColor: white,
                title: const Text('டிப்ளமோ (Diploma)'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/10th/diploma');
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, buttonHeight)),
                        alignment: Alignment.centerLeft,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                butrad), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Text("Diploma\nடிப்ளமோ "),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
