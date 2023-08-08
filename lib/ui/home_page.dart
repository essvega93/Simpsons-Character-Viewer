import 'package:flutter/material.dart';
import 'package:simpsonsviewer/common/strings_constant.dart';
import 'package:simpsonsviewer/ui/article_detail/presentation/screen/article_detail.dart';
import 'package:simpsonsviewer/ui/articles_list/data/model/topic.dart';
import 'package:simpsonsviewer/ui/articles_list/presentation/screen/articles_list_screen.dart';

import '../common/screen_utility.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/";

  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (ScreenUtility.isTablet(context)) {
          return const TabletHomePage();
        } else {
          return const MobileHomePage();
        }
      },
    );
  }
}

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ArticlesListScreen(title: AppStrings.appTitle);
  }
}

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({Key? key}) : super(key: key);

  @override
  TabletHomePageState createState() => TabletHomePageState();
}

class TabletHomePageState extends State<TabletHomePage> {
  Topic? selectedTopic;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(
              width: 300.0.convertedSize(context),
              child: ArticlesListScreen(
                title: AppStrings.appTitle,
                onSelectedItem: (topic) {
                  setState(() {
                    selectedTopic = topic;
                  });
                },
              )),
          Container(
            margin: const EdgeInsets.only(
              top: 45.0,
            ),
            child: VerticalDivider(
              width: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          Expanded(
              child: selectedTopic == null
                  ? const SizedBox.shrink()
                  : ArticleDetail(
                      selectedTopic!,
                      isTablet: true,
                    ))
        ],
      ),
    );
  }
}
