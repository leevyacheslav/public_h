import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/helpers/snack_bar_factory.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/pages/discover/bloc/discover_all_posts_cubit.dart';
import 'package:hask/pages/discover/widgets/discover_post_card.dart';
import 'package:hask/widgets/load_more_scroll.dart';
import 'package:hask/widgets/shimmer_view.dart';
import 'package:routemaster/routemaster.dart';

class DiscoverAllPostsPage extends StatefulWidget {
  const DiscoverAllPostsPage({
    Key? key,
    required this.categoryId,
    required this.categoryName,
  }) : super(key: key);

  final int categoryId;
  final String categoryName;

  @override
  _DiscoverAllPostsPageState createState() => _DiscoverAllPostsPageState();
}

class _DiscoverAllPostsPageState extends State<DiscoverAllPostsPage> {
  late DiscoverAllPostsCubit cubit = DiscoverAllPostsCubit(
    categoryId: widget.categoryId,
  );

  @override
  void initState() {
    cubit.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.categoryName,
            style: AppTheme.appBarTitleStyle(context),
          ),
        ),
        body: BlocConsumer<DiscoverAllPostsCubit, DiscoverAllPostsState>(
          bloc: cubit,
          listener: (context, state) {
            if (state is DiscoverAllPostsFailed) {
              SnackBarFactory.showSnackBar(context, state.error);
            }
          },
          builder: (context, state) {
            if (state is DiscoverAllPostsInProgress) return _buildInProgress();

            return _buildBody(cubit.posts.toList());
          },
        ));
  }

  Widget _buildBody(List<DiscoverPost> posts) {
    return LoadMoreScroll(
      shouldLoadMore: () => cubit.loadMore(),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, indx) {
          final post = posts[indx];
          return AspectRatio(
            aspectRatio: 2,
            child: DiscoverPostCard(
              title: post.title,
              imageUrl: post.getImageUrl(),
              tag: post.categoryName,
              video: post.getMediaType() == DiscoverPostMediaType.video,
              onTap: () => Routemaster.of(context).push(
                '/discover/category/${widget.categoryId}/posts/post/${post.id}',
              ),
            ),
          );
        },
        separatorBuilder: (context, indx) => Container(),
        itemCount: posts.length,
      ),
    );
  }

  Widget _buildInProgress() {
    return IgnorePointer(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, indx) {
          return AspectRatio(
            aspectRatio: 2,
            child: ShimmerView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, indx) => Container(height: 8),
        itemCount: 10,
      ),
    );
  }
}
