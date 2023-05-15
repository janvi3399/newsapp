import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newsapp/model/pdfmodel.dart';
import 'package:newsapp/provider/pdfliststore.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class PDFscreen extends StatefulWidget {
  const PDFscreen({super.key});

  @override
  State<PDFscreen> createState() => _PDFscreenState();
}

class _PDFscreenState extends State<PDFscreen> {
  Future<void> send(String mail) async {
    if (mail.length >= 0) {
      final Email email = Email(
        body: mail,
        subject: 'Today\'s News',
        recipients: ['jbhalal1@binghamton.edu'],
        // attachmentPaths: attachments,
        isHTML: true,
      );

      String platformResponse;

      try {
        await FlutterEmailSender.send(email);
        platformResponse = 'success';
      } catch (error) {
        print(error);
        platformResponse = error.toString();
      }

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(platformResponse),
        ),
      );
    } else {
      Fluttertoast.showToast(msg: 'Select Article');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PdfStore>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.email),
          onPressed: () {
            List<String> p = [];
            value.pdf.forEach((element) {
              p.add(
                'Title : ${element.title}, Description: ${element.description}, Content:${element.content} ,Url:${element.url}, urlimg :${element.urlimg} \n',
              );
            });

            send(p.toString());
          },
        ),
        body: ListView.builder(
            itemCount: value.pdfs.length,
            itemBuilder: (context, index) => Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value.pdfs[index].title!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Provider.of<PdfStore>(context, listen: false)
                                .removeSingle(index: index);
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                  ),
                )),
      ),
    );
  }
}
