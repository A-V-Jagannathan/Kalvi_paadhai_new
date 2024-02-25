import 'package:flutter/material.dart';
import 'utils/localizations_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
const Color buttonBackground = Colors.white;
const Color appbarBackground = Colors.white;
const Color drawerbuttonBackground = Colors.white;
const Color screenBackground = Color(0xff041c2f);
const Color onexpanded = Color(0xff26ff00);
const Color white = Color(0xffffffff);
const double rad = 22.0;
const double pad = 12;
const double butrad = 18;

class After10 extends StatelessWidget {
  const After10({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          AppLocalizations.of(context)!.after10Title,
          style: const TextStyle(fontSize: 18.0, color: Colors.black),
        ),
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
                collapsedIconColor: Colors.black,
                iconColor: Colors.green,
                textColor: Colors.green,
                collapsedTextColor: Colors.black,
                title: Text(
                  AppLocalizations.of(context)!.sciGrpTitle,
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
                      child: Text(
                        AppLocalizations.of(context)!.compSci),
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
                      child: Text(AppLocalizations.of(context)!.sci),
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
                collapsedIconColor: Colors.black,
                iconColor: Colors.green,
                textColor: Colors.green,
                collapsedTextColor: Colors.black,
                title: Text(AppLocalizations.of(context)!.comm10T),
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
                      child: Text(AppLocalizations.of(context)!.comm10C),
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
                collapsedIconColor: Colors.black,
                iconColor: Colors.green,
                textColor: Colors.green,
                collapsedTextColor: Colors.black,
                title: Text(AppLocalizations.of(context)!.artsT),
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
                      child: Text(AppLocalizations.of(context)!.artsC),
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
                collapsedIconColor: Colors.black,
                iconColor: Colors.green,
                textColor: Colors.green,
                collapsedTextColor: Colors.black,
                title: Text(AppLocalizations.of(context)!.diploma),
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
                      child: Text(AppLocalizations.of(context)!.diploma),
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
