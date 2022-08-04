// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:punotes/widgets/appbar.dart';

class PDFViewerPage extends StatelessWidget {
  final title;
  final path;
  const PDFViewerPage({Key? key, this.title, this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title, height: 50.0),
      body: const PDF(
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: true,
      ).fromAsset(path),
    );
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
        body: const PDF(
          enableSwipe: true,
          swipeHorizontal: false,
          autoSpacing: false,
          pageFling: true,
        ).cachedFromUrl(
          link,
          placeholder: (progress) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$progress % \nLoading'),
              const Center(
                child: Text(
                  '(Loading time Depends upon your internet speed)',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          errorWidget: (error) => const Center(
            child: Text(
              'You are not connected to internet or some error occur.',
              style: TextStyle(
                  color: Color.fromARGB(255, 225, 28, 14), fontSize: 16),
            ),
          ),
        ));
  }
}
