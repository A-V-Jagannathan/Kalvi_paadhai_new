import 'package:flutter/material.dart';
import 'utils/localizations_utils.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

const Color buttonBackground = Color(0xff194769);
const Color appbarBackground = Colors.white;
const Color screenBackground = Color(0xff041c2f);

class Content extends StatelessWidget {
  final String title;
  final String path;
  const Content(this.title, this.path, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
          ),
          backgroundColor: appbarBackground,
        ),
        body: SfPdfViewer.asset(path));
  }
}
