// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:internet_file/internet_file.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:pufoe_notes/widgets/appbar.dart';

class PDFViewerPage extends StatefulWidget {
  final title;
  final path;
  const PDFViewerPage({Key? key, this.title, this.path}) : super(key: key);

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  static const int _initialPage = 1;
  int _actualPageNumber = _initialPage, _allPagesCount = 0;
  bool isSampleDoc = true;
  late PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(widget.path),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: widget.title,
          height: 50.0,
          action: <Widget>[
            InkWell(
              child: const Icon(Icons.navigate_before),
              onLongPress: () {
                _pdfController.jumpToPage(_actualPageNumber - 5);
              },
              onTap: () {
                _pdfController.previousPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '$_actualPageNumber/$_allPagesCount',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            InkWell(
              child: const Icon(Icons.navigate_next),
              onLongPress: () {
                _pdfController.jumpToPage(_actualPageNumber + 5);
              },
              onTap: () {
                _pdfController.nextPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
          ],
        ),
        body: Scrollbar(
          child: PdfView(
            pageSnapping: false,
            scrollDirection: Axis.vertical,
            controller: _pdfController,
            onDocumentLoaded: (document) {
              setState(() {
                _allPagesCount = document.pagesCount;
              });
            },
            onPageChanged: (page) {
              setState(() {
                _actualPageNumber = page;
              });
            },
            builders: PdfViewBuilders<DefaultBuilderOptions>(
              options: const DefaultBuilderOptions(
                loaderSwitchDuration: Duration(seconds: 1),
              ),
              documentLoaderBuilder: (_) =>
                  const Center(child: CircularProgressIndicator()),
              pageLoaderBuilder: (_) =>
                  const Center(child: CircularProgressIndicator()),
              errorBuilder: (_, error) =>
                  const Center(child: Text("File is not available.")),
            ),
          ),
        ));
  }
}

//For URL

class PDFViewerPageURL extends StatefulWidget {
  final title;
  final link;
  const PDFViewerPageURL({Key? key, this.title, this.link}) : super(key: key);

  @override
  State<PDFViewerPageURL> createState() => _PDFViewerPageURLState();
}

class _PDFViewerPageURLState extends State<PDFViewerPageURL> {
  static const int _initialPage = 1;
  int _actualPageNumber = _initialPage, _allPagesCount = 0;
  bool isSampleDoc = true;
  late PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openData(InternetFile.get(widget.link)),
      initialPage: _initialPage,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: widget.title,
          height: 50.0,
          action: <Widget>[
            InkWell(
              child: const Icon(Icons.navigate_before),
              onLongPress: () {
                _pdfController.jumpToPage(_actualPageNumber - 5);
              },
              onTap: () {
                _pdfController.previousPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '$_actualPageNumber/$_allPagesCount',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            InkWell(
              child: const Icon(Icons.navigate_next),
              onLongPress: () {
                _pdfController.jumpToPage(_actualPageNumber + 5);
              },
              onTap: () {
                _pdfController.nextPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
          ],
        ),
        body: Scrollbar(
          child: PdfView(
            scrollDirection: Axis.vertical,
            pageSnapping: false,
            controller: _pdfController,
            onDocumentLoaded: (document) {
              setState(() {
                _allPagesCount = document.pagesCount;
              });
            },
            onPageChanged: (page) {
              setState(() {
                _actualPageNumber = page;
              });
            },
            builders: PdfViewBuilders<DefaultBuilderOptions>(
              options: const DefaultBuilderOptions(
                loaderSwitchDuration: Duration(seconds: 1),
              ),
              documentLoaderBuilder: (_) => Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircularProgressIndicator(),
                  const Text('Loading depends upon your internet speed.')
                ],
              )),
              pageLoaderBuilder: (_) =>
                  const Center(child: CircularProgressIndicator()),
              errorBuilder: (_, error) => const Center(
                  child: Text(
                      "You are not connected to internet or file is not available.")),
            ),
          ),
        ));
  }
}
