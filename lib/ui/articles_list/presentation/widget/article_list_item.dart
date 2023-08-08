import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../common/api_constant.dart';
import '../../../article_detail/presentation/screen/article_detail.dart';
import '../../data/model/topic.dart';

class ArticleListItem extends StatelessWidget {
  final Function(Topic)? onItemSelected;

  const ArticleListItem({Key? key, required this.topic, this.onItemSelected}) : super(key: key);

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      topic.text ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => onItemClicked(context),
    );
  }

  void onItemClicked(BuildContext context) {
    if (onItemSelected != null) {
      onItemSelected!(topic);
    } else {
      Navigator.pushNamed(context, ArticleDetail.routeKey, arguments: topic);
    }
  }
}
