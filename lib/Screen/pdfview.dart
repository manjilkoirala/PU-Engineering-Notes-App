// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'package:punotes/widgets/appbar.dart';

class PDFViewerPage extends StatelessWidget {
  final title;
  final path;
  const PDFViewerPage({Key? key, this.title, this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: title, height: 50.0),
        body: SfPdfViewer.asset(
          path,
          onDocumentLoaded: (details) {
            Text("Loaded");
          },
        ));
  }
}

class PDFViewerPageURL extends StatelessWidget {
  final title;
  final link;
  const PDFViewerPageURL({Key? key, this.title, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: title, height: 50.0),
        body: SfPdfViewer.network(
          link,
          onDocumentLoaded: (details) {
            Text("Loaded");
          },
        ));
  }
}
