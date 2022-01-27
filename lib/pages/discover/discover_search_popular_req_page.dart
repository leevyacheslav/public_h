import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hask/models/discover_popular__search_request.dart';

class DiscoverSearchPopularReqPage extends StatefulWidget {
  const DiscoverSearchPopularReqPage({
    Key? key,
    required this.requests,
    required this.onSelected,
  }) : super(key: key);

  final List<DiscoverPopularSearchRequest> requests;
  final ValueChanged<DiscoverPopularSearchRequest> onSelected;

  @override
  _DiscoverSearchPopularReqPageState createState() =>
      _DiscoverSearchPopularReqPageState();
}

class _DiscoverSearchPopularReqPageState
    extends State<DiscoverSearchPopularReqPage> {
  @override
  Widget build(BuildContext context) {
    final requests = widget.requests;

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
                final request = requests[indx];
                return ListTile(
                  onTap: () => widget.onSelected.call(request),
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  minLeadingWidth: 22,
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset('assets/svgs/lightning.svg'),
                  title: Text(
                    request.request,
                    style: AppTheme.fontStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                );
              },
              itemCount: requests.length,
            ),
          ),
        ],
      ),
    );
  }
}
