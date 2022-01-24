import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/pages/discover/discover_page.dart';
import 'package:hask/pages/discover/discover_saved_page.dart';
import 'package:hask/pages/discover/discover_search_popular_req_page.dart';
import 'package:hask/pages/discover/models/discover_page_type.dart';
import 'package:hask/pages/discover/widgets/discover_app_bar.dart';
import 'package:hask/widgets/custom_icon_button.dart';

class DiscoverRootPage extends StatefulWidget {
  const DiscoverRootPage({Key? key}) : super(key: key);

  @override
  _DiscoverRootPageState createState() => _DiscoverRootPageState();
}

class _DiscoverRootPageState extends State<DiscoverRootPage> {
  var selectedPage = DiscoverPageType.all;

  var queryText = "";
  var isSearchActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60), // Set this height
      child: DiscoverAppBar(
        onSearchChanged: (query) {
          queryText = query;
        },
        isSeachSessionActive: (value) {
          isSearchActive = value;
          setState(() {});
        },
      ),
    );
  }

  Widget _buildBody() {
    if (isSearchActive) return const DiscoverSearchPopularReqPage();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Wrap(
            spacing: 10,
            children: DiscoverPageType.values
                .map(
                  (page) => _buildIconButton(
                    selected: selectedPage == page,
                    text: page.title(),
                    iconName: page.iconName(),
                    onTap: () {
                      setState(() {
                        selectedPage = page;
                      });
                    },
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: selectedPage.index,
            children: [
              const DiscoverPage(),
              const DiscoverSavedPage(),
              Container(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildIconButton(
      {required bool selected,
      required String text,
      String? iconName,
      VoidCallback? onTap}) {
    Widget? icon;

    final textColor = selected
        ? Theme.of(context).colorScheme.background
        : Theme.of(context).colorScheme.onBackground;

    final backgroundColor = selected
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.surface;

    if (iconName != null) {
      icon = SvgPicture.asset(
        iconName,
        color: textColor,
        height: 16,
      );
    }
    return CustomIconButton(
      text: text,
      icon: icon,
      onTap: onTap,
      textColor: textColor,
      backgroundColor: backgroundColor,
    );
  }
}
