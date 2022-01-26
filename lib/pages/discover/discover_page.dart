import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hask/helpers/snack_bar_factory.dart';
import 'package:hask/models/discover_category_response.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/pages/discover/bloc/discover_cubit.dart';
import 'package:hask/pages/discover/widgets/discover_post_card.dart';
import 'package:hask/pages/discover/widgets/discover_posts_carousel.dart';
import 'package:hask/pages/discover/widgets/discover_section.dart';
import 'package:hask/widgets/shimmer_view.dart';
import 'package:routemaster/routemaster.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final cubit = DiscoverCubit();

  @override
  void initState() {
    cubit.loaData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DiscoverCubit, DiscoverState>(
        bloc: cubit,
        listener: (context, state) {
          if (state is DiscoverFailed) {
            SnackBarFactory.showSnackBar(context, state.error);
          }
        },
        builder: (context, state) {
          if (state is DiscoverInProgress) return _buildInProgress();
          if (state is DiscoverSuccess) return _buildBody(state.response);
          return Container();
        },
      ),
    );
  }

  Widget _buildInProgress() {
    return IgnorePointer(
      ignoring: true,
      child: ShimmerView(
        child: ListView(
          children: [
            /*
            DiscoverSection(
              child: DiscoverTrendingCarousel(
                children: [
                  for (var i = 0; i < 3; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                ],
              ),
              title: '',
              titleWidget: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 14,
                  width: 200,
                  color: Colors.white,
                ),
              ),
            ),*/
            for (var i = 0; i < 3; i++)
              DiscoverSection(
                child: DiscoverPostsCarousel(
                  children: [
                    for (var i = 0; i < 3; i++)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                  ],
                ),
                title: '',
                titleWidget: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 14,
                    width: 200,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(DiscoverCategoryResponse response) {
    return ListView(
      children: [
        /*
        const DiscoverSection(
          child: DiscoverTrendingCarousel(
            children: [
              DiscoverTrendingTopicsCard(),
              DiscoverTrendingTopicsCard(),
              DiscoverTrendingTopicsCard(),
            ],
          ),
          title: 'Trending topics',
        ),*/
        for (var category in response.all)
          DiscoverSection(
            child: DiscoverPostsCarousel(
              children: category.posts
                      ?.map((post) => DiscoverPostCard(
                            title: post.title,
                            imageUrl: post.getImageUrl(),
                            tag: post.categoryName,
                            video: post.getMediaType() ==
                                DiscoverPostMediaType.video,
                            onTap: () {
                              Routemaster.of(context)
                                  .push('/discover/post/${post.id}');
                            },
                          ))
                      .toList() ??
                  [],
            ),
            title: category.title,
            onMoreTap: () {
              Routemaster.of(context).push(
                '/discover/category/${category.id}/posts',
                queryParameters: {
                  'category_name': category.title,
                },
              );
            },
          ),
      ],
    );
  }
}
