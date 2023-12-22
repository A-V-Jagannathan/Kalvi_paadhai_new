import 'package:flutter/material.dart';

const Color buttonBackground = Color(0xff194769);
const Color appbarBackground = Color(0xff041c2f);
const Color screenBackground = Color(0xff24292f);
const Color onexpanded = Color(0xff26ff00);
const Color white = Color(0xffffffff);
const double rad = 22.0;
const double pad = 12;
const double butrad = 18;

class CompetitiveExams extends StatelessWidget {
  final String title = 'நுழைவுத் தேர்வுகள்';

  const CompetitiveExams({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.width * 0.25;
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
                title: const Text('குறைந்தபட்ச தகுதி 10வது'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/competitive_exams/TNPSC');
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
                          "Tamil Nadu Public Service Commission (TNPSC)\nதமிழ்நாடு பொது சேவை கமிஷன் தேர்வுகள் (டின்பிஎஸ்சி)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/RRB');
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
                          "Railway Recruitment Board (RRB) Exams\nரயில் வேலைக்கு வாய்ப்பு வாய்ப்புகள் (ஆர்ஆர்பி)"),
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
                title: const Text('குறைந்தபட்ச தகுதி 12வது'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/JEE');
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
                          "Joint Entrance Examination (JEE)\nகூட்டு நுழைவுத் தேர்வ (ஜேஇஇ)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/NEET');
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
                          "National Eligibility cum Entrance Test (NEET)\nதேசிய தகுதி மற்றும் நுழைவுத் தேர்வு (நீட்)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/NDA');
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
                          "National Defence Academy (NDA) Exam\nதேசிய பாதுகாப்கள் அகாடமி தேர்வு (என்டிஏ)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/CLAT');
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
                          "Common Law Admission Test (CLAT)\nபொது சட்ட சேர்ப்பு பரீக்ஷை (சிஎல்ஏடி)"),
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
                title: const Text('குறைந்தபட்ச தகுதி பல்கலைக்கழக பட்டம்'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/UPSC');
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
                          "UPSC Civil Services Examination\n ஐஏஎஎஸ் தேர்வு (யுபிஎஸ்சி)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/SSC');
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
                          "Staff Selection Commission (SSC) Exams\nபணியாளர் தேர்வு கமிஷன் தேர்வுகள் (எஸ்எஸ்சி)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/IBPS');
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
                      child: const Text("IBPS\nஐபிபிஎஸ் - வங்கி தேர்வுகள்"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/CAT');
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
                          "Common Admission Test (CAT)\nபொது சேர்ப்பு பரீக்ஷை(சிஏடி)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/CDS');
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
                          "Combined Defence Services (CDS) Exam\nஒன்றிய பாதுகாப்கள் சேவை பார்வை தேர்வு (சிடிஎஸ்)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/TET');
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
                          "Teacher Eligibility Test (TET)\nஆசிரியர் அரங்கேற்பு தேர்வு (டிஇடி)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/GATE');
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
                          "Graduate Aptitude Test in Engineering (GATE)\nபொது அவானநிலை தேர்வு முதியில் (கேட்)"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/competitive_exams/NET');
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
                          "National Eligibility Test (NET)\nதேசிய அரசின் அரங்கேற்பு பரீக்ஷை (என்இடி)"),
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
