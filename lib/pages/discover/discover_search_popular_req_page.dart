import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';

class DiscoverSearchPopularReqPage extends StatefulWidget {
  const DiscoverSearchPopularReqPage({Key? key}) : super(key: key);

  @override
  _DiscoverSearchPopularReqPageState createState() =>
      _DiscoverSearchPopularReqPageState();
}

class _DiscoverSearchPopularReqPageState
    extends State<DiscoverSearchPopularReqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text(
              "popular_requests".tr(),
              style: AppTheme.fontStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemExtent: 42,
              itemBuilder: (context, indx) {
                return ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  minLeadingWidth: 22,
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset('assets/svgs/lightning.svg'),
                  title: Text(
                    '3 events',
                    style: AppTheme.fontStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
