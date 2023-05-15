import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newsapp/provider/pdfliststore.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticalNews extends StatefulWidget {
  const ArticalNews({Key? key, required this.news}) : super(key: key);

  final Map<String, dynamic> news;

  @override
  _ArticalNewsState createState() => _ArticalNewsState();
}

class _ArticalNewsState extends State<ArticalNews> {
  late bool _isLoadingPage;

  @override
  void initState() {
    super.initState();
    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'News',
          ),
        ),
        body: Column(children: [
          if (widget.news['urlToImage'] == null)
            Container()
          else
            ClipRRect(
              // borderRadius: BorderRadius.circular(1),
              child: CachedNetworkImage(
                placeholder: (BuildContext context, String url) => Container(),
                errorWidget: (BuildContext context, String url, error) =>
                    const SizedBox(),
                imageUrl: widget.news['urlToImage'] as String,
              ),
            ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text('${widget.news["title"]}')),
          Container(
              padding: EdgeInsets.all(10),
              child: Text('${widget.news["description"]}')),
          Container(
              padding: EdgeInsets.all(10),
              child: Text('${widget.news["content"]}')),
          ElevatedButton(
              onPressed: () {
                _launchInBrowser(Uri.parse(widget.news['url']));
              },
              child: Text('To View Full Story')),
          ElevatedButton(
              onPressed: () {
                Provider.of<PdfStore>(context, listen: false).addtopdf(
                    content: widget.news["content"],
                    description: widget.news["description"],
                    title: widget.news["title"],
                    url: widget.news['url'],
                    urlimg: widget.news['urlToImage']);

                Fluttertoast.showToast(msg: 'Added Successfully');
              },
              child: Text('Add to Favourite'))
        ]));
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
