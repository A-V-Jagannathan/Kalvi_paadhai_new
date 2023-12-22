import 'package:flutter/material.dart';

const Color buttonBackground = Color(0xff194769);
const Color appbarBackground = Color(0xff041c2f);
const Color screenBackground = Color(0xff24292f);
const Color onexpanded = Color(0xff26ff00);
const Color white = Color(0xffffffff);
const double rad = 22.0;
const double pad = 12;
const double butrad = 18;

class After12 extends StatelessWidget {
  final String title = '12 ஆம் வகுப்புக்குப் பிறகு';

  const After12({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
      backgroundColor: screenBackground,
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0),
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
                collapsedIconColor: white,
                iconColor: onexpanded,
                textColor: onexpanded,
                collapsedTextColor: white,
                title: const Text('உயிரியல் தொடர்பானது (Biology related)'),
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
                      child: const Text(
                          '''MBBS\nஇளநிலை மருத்துவம் மற்றும் அறுவையியல்'''),
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
                      child: const Text('BDS\nபல் அறுவை சிகிச்சை இளங்கலை'),
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
                      child: const Text('Veterinary Science\nகால்நடை அறிவியல்'),
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
                      child: const Text('Physiotheraphy\nஉடற்பயிற்சி சிகிச்சை'),
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
                      child: const Text('Pharmacy\nமருந்தகம்'),
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
                      child: const Text(
                          'Occupational Theraphy\nதொழில்சார் சிகிச்சை'),
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
                        child: const Text("General Nursing\nபொது நர்சிங்")),
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
                      child: const Text("Microbiology\nநுண்ணுயிரியல்"),
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
                          const Text("Biotechnology\nஉயிரி தொழில்நுட்பவியல்"),
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
                title: const Text('பொறியியல் தொடர்புடையது (Engineering)'),
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
                      child: const Text("Engineering\nபொறியியல்"),
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
                      child: const Text("Architecture\nகட்டிடக்கலை"),
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
                title: const Text('வணிகம் மற்றும் கலை (Commerce and Arts)'),
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
                      child: const Text("B.COM\nவணிகவியல் இளங்கலை"),
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
                      child: const Text(
                          "B.COM CA\nகணினி பயன்பாட்டுடன் வணிகவியல் இளங்கலை"),
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
                      child: const Text(
                          "B.COM IT\nவணிகவியல் இளங்கலை, தகவல் தொழில்நுட்பம்"),
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
                      child: const Text("BCA\nகணினி பயன்பாடுகளில் இளங்கலை"),
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
                title: const Text('மற்ற கலை மற்றும் அறிவியல் படிப்புகள் '),
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
                      child: const Text(
                          "Other Arts and Science courses\nமற்ற கலை மற்றும் அறிவியல் படிப்புகள் "),
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
