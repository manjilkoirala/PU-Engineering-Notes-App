// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:punotes/widgets/appbar.dart';

class PDFViewerPage extends StatefulWidget {
  final title;
  final path;
  const PDFViewerPage({Key? key, this.title, this.path}) : super(key: key);

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  bool _isLoading = true;
  var document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset(widget.path);

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: widget.title, height: 50.0),
        body: _isLoading
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CupertinoActivityIndicator(),
                ],
              ))
            : PDFViewer(
                document: document,
                scrollDirection: Axis.vertical,
                lazyLoad: false,
              ));
  }
}

class PDFViewerPageURL extends StatefulWidget {
  final title;
  final link;
  const PDFViewerPageURL({Key? key, this.title, this.link}) : super(key: key);

  @override
  State<PDFViewerPageURL> createState() => _PDFViewerPageURLState();
}

class _PDFViewerPageURLState extends State<PDFViewerPageURL> {
  bool _isLoading = true;
  var pdfDocument;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    pdfDocument = await PDFDocument.fromURL(widget.link);

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: widget.title, height: 50.0),
        body: _isLoading
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: LinearProgressIndicator(),
                  ),
                  const Text(
                    "Loding depends upon your internet speed",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  )
                ],
              ))
            : PDFViewer(
                document: pdfDocument,
                scrollDirection: Axis.vertical,
                lazyLoad: false,
              ));
  }
}
