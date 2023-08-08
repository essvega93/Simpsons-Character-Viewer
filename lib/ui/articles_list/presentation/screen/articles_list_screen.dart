import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/di_setup.dart';
import '../../data/model/topic.dart';
import '../bloc/article_list_bloc.dart';
import '../widget/article_list_item.dart';

class ArticlesListScreen extends StatefulWidget {
  final Function(Topic)? onSelectedItem;

  const ArticlesListScreen({Key? key, required this.title, this.onSelectedItem}) : super(key: key);
  final String title;

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  late final ArticleListBloc _articleListBloc;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _articleListBloc = getIt<ArticleListBloc>();
    _articleListBloc.add(const ArticleListEvent.loadArticles());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider<ArticleListBloc>(
          create: (_) => _articleListBloc,
          child: BlocBuilder<ArticleListBloc, ArticleListState>(
            builder: (BuildContext context, ArticleListState state) {
              return getArticleList(context);
            },
          )),
    );
  }

  Widget getArticleList(BuildContext context) {
    return BlocBuilder<ArticleListBloc, ArticleListState>(builder: (BuildContext context, ArticleListState state) {
      if (state.isLoading) {
        return const Center(
          child: Text('Loading'),
        );
      } else {
        return state.topics.fold(
            () => Center(
                  child: TextButton(
                    onPressed: () {
                      _articleListBloc.add(const ArticleListEvent.loadArticles());
                    },
                    child: const Text('Retry'),
                  ),
                ),
            drawArticles);
      }
    });
  }

  Widget drawArticles(List<Topic> topics) {
    return Column(
      children: [
        getSearchBar(),
        Expanded(
          child: ListView.separated(
            key: const Key('ArticlesList'),
            itemBuilder: (BuildContext context, int index) {
              if (isSearchContain(topics[index].text, topics[index].result)) {
                return ArticleListItem(
                  onItemSelected: widget.onSelectedItem != null
                      ? (item) {
                    widget.onSelectedItem!(item);
                  }
                      : null,
                  key: Key('ArticlesList_Item_$index'),
                  topic: topics[index],
                );
              }
              return const SizedBox.shrink();
            },
            itemCount: topics.length,
            separatorBuilder: (BuildContext context, int index) {
              if (isSearchContain(topics[index].text, topics[index].result)) {
                return Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 0.5,
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }

  bool isSearchContain(String? title, String? description) {
    return _searchController.text.isEmpty ||
        (title?.toLowerCase().contains(_searchController.text.trim().toLowerCase()) == true ||
            description?.toLowerCase().contains(_searchController.text.trim().toLowerCase()) == true);
  }

  Widget getSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        // Use a Material design search bar
        child: TextField(
          controller: _searchController,
          onChanged: (value) {
            setState(() {});
          },
          decoration: InputDecoration(
            hintText: 'Search...',
            // Add a clear button to the search bar
            suffixIcon: Visibility(
              visible: _searchController.text.isNotEmpty,
              child: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  setState(() {
                    _searchController.clear();
                  });
                },
              ),
            ),
            // Add a search icon or button to the search bar
            prefixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Perform the search here
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
