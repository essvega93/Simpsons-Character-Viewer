import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:simpsonsviewer/common/screen_utility.dart';

import '../../../../common/api_constant.dart';
import '../../../articles_list/data/model/topic.dart';

class ArticleDetail extends StatefulWidget {
  final bool isTablet;

  const ArticleDetail(this._topic, {Key? key, this.isTablet = false}) : super(key: key);
  static const String routeKey = '/ArticleDetail';
  final Topic _topic;

  @override
  ArticleDetailState createState() => ArticleDetailState();
}

class ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    String imageUrl = defaultImage;
    if (widget._topic.icon?.uRL?.isNotEmpty == true) {
      imageUrl = '$imageBaseUrl${widget._topic.icon?.uRL}';
    }
    return Scaffold(
      appBar: AppBar(elevation: 0, toolbarHeight: 0),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(children: [
              CachedNetworkImage(
                key: const Key('articleImage'),
                imageUrl: imageUrl,
                height: ScreenUtility.getScreenHeight(context) * 0.3,
                fit: BoxFit.fitHeight,
                imageBuilder: (BuildContext context, ImageProvider<Object> imageProvider) {
                  return Material(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: imageUrl == defaultImage ? BoxFit.cover : BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Visibility(
                visible: !widget.isTablet,
                child: InkWell(
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                widget._topic.text ?? '',
                style: TextStyle(wordSpacing: 1.0, height: 1.2, fontSize: 16.0.convertedSize(context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text(
                'Description',
                style: Theme.of(context).textTheme.titleLarge?..copyWith(height: 1.5, wordSpacing: 1.0),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Html(
                style: {
                  "body": Style(
                    fontSize: FontSize(16.0.convertedSize(context)),
                    wordSpacing: 1.0,
                  ),
                },
                data: widget._topic.result ?? '',
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
