import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/snack_bar_factory.dart';
import 'package:hask/models/discover_popular__search_request.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/pages/discover/bloc/discover_search_cubit.dart';
import 'package:hask/pages/discover/discover_search_popular_req_page.dart';
import 'package:hask/pages/discover/widgets/discover_post_tile.dart';
import 'package:hask/widgets/page_placeholder.dart';
import 'package:hask/widgets/shimmer_view.dart';

class DiscoverSearchPage extends StatefulWidget {
  const DiscoverSearchPage({
    Key? key,
    required this.requests,
    required this.queryStreamController,
    required this.onSelected,
  }) : super(key: key);

  final List<DiscoverPopularSearchRequest> requests;
  final StreamController<String> queryStreamController;
  final ValueChanged<DiscoverPopularSearchRequest> onSelected;

  @override
  _DiscoverSearchPageState createState() => _DiscoverSearchPageState();
}

class _DiscoverSearchPageState extends State<DiscoverSearchPage> {
  StreamSubscription? subscription;

  final cubit = DiscoverSearchCubit();

  @override
  void initState() {
    subscription = widget.queryStreamController.stream.listen((query) {
      cubit.setQuery(query);
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DiscoverSearchCubit, DiscoverSearchState>(
        bloc: cubit,
        listener: (context, state) {
          if (state is DiscoverSearchFailed) {
            SnackBarFactory.showSnackBar(context, state.error);
          }
        },
        builder: (context, state) {
          if (state is DiscoverSearchInProgress) {
            return _buildInProgress(context);
          }
          if (cubit.isQueryNotEmpy) {
            if (cubit.posts.isEmpty) {
              return Center(
                child: PagePlaceholder(
                  icon: SvgPicture.asset('assets/svgs/magnifier_big.svg'),
                  title: 'Oops, nothing came up',
                  desc: 'Maybe try searching for something else',
                ),
              );
            }
            return _buildResultList(context, cubit.posts);
          }
          return DiscoverSearchPopularReqPage(
            requests: widget.requests,
            onSelected: widget.onSelected,
          );
        },
      ),
    );
  }

  Widget _buildResultList(BuildContext context, List<DiscoverPost> posts) {
    return ListView.builder(
      itemBuilder: (cotext, indx) {
        final post = posts[indx];
        return DiscoverPostTile(
          video: post.getMediaType() == DiscoverPostMediaType.video,
          title: post.title,
          desc: post.shortDescription ?? '',
          imageUrl: post.getImageUrl(),
          videoLength: post.duration,
        );
      },
      itemCount: posts.length,
    );
  }

  Widget _buildInProgress(BuildContext context) {
    return ShimmerView(
      child: ListView.builder(
        itemBuilder: (context, indx) {
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            title: Container(
              color: Colors.white,
              height: 14,
            ),
            subtitle: Container(
              color: Colors.white,
              height: 14,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
