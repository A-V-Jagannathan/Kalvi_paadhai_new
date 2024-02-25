import 'package:flutter/material.dart';
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

class After12 extends StatelessWidget {

  const After12({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
            AppLocalizations.of(context)!.after12Title,
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
                title: Text(AppLocalizations.of(context)!.bioRel),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/MBBS');
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
                      child: Text(AppLocalizations.of(context)!.mBBS),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BDS');
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
                      child: Text(AppLocalizations.of(context)!.bds),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/vetinary');
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
                      child: Text(AppLocalizations.of(context)!.vet),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/phyth');
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
                      child: Text(AppLocalizations.of(context)!.physio),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/pharmacy');
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
                      child: Text(AppLocalizations.of(context)!.phar),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/occth');
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
                      child: Text(AppLocalizations.of(context)!.occT),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/12th/nursing');
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
                        child: Text(AppLocalizations.of(context)!.nur)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/microbio');
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
                      child: Text(AppLocalizations.of(context)!.micR),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/biotech');
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
                      child:
                      Text(AppLocalizations.of(context)!.biot),
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
                title: Text(AppLocalizations.of(context)!.engT),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/engineering');
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
                      child: Text(AppLocalizations.of(context)!.engC),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BARCH');
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
                      child: Text(AppLocalizations.of(context)!.arch),
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
                title: Text(AppLocalizations.of(context)!.comm12),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BCOM');
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
                      child: Text(AppLocalizations.of(context)!.bCom),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BCOMCA');
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
                      child: Text(AppLocalizations.of(context)!.bComca),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BCOMIT');
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
                      child: Text(AppLocalizations.of(context)!.bComit),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th/BCA');
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
                      child: Text(AppLocalizations.of(context)!.bca),
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
                        Navigator.pushNamed(context, '/12th/artsscience');
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
        ],
      ),
    );
  }
}
