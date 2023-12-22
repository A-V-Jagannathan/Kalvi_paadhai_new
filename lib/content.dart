import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

const Color buttonBackground = Color(0xff194769);
const Color appbarBackground = Color(0xff041c2f);
const Color screenBackground = Color(0xff24292f);

class Content extends StatelessWidget {
  final String title;
  final String path;
  const Content(this.title, this.path, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(fontSize: 18.0),
          ),
          backgroundColor: appbarBackground,
        ),
        body: SfPdfViewer.asset(path));
  }
}
