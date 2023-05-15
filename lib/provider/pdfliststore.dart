import 'package:flutter/material.dart';
import 'package:newsapp/model/pdfmodel.dart';

class PdfStore with ChangeNotifier {
  List<Pdfmodel> pdf = [];
  List<Pdfmodel> get pdfs => pdf;

  void addtopdf({
    String? title,
    String? description,
    String? content,
    String? url,
    String? urlimg,
  }) {
    pdfs.add(Pdfmodel(
        title: title,
        description: description,
        content: content,
        url: url,
        urlimg: urlimg));
    notifyListeners();
  }

  void removeSingle({
    int? index,
  }) {
    pdfs.removeAt(index!);
    notifyListeners();
  }

  void removepdf() {
    pdfs.clear();
    notifyListeners();
  }
}
