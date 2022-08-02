import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:punotes/widgets/appbar.dart';

class PDFViewerPage extends StatelessWidget {
  final title;
  const PDFViewerPage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title, height: 50.0),
      body: SingleChildScrollView(
        child: const PDF().fromAsset('assest/files/syllabus/2syllabus.pdf'),
      ),
    );
  }
}
