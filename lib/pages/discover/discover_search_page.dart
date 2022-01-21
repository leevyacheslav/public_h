import 'package:flutter/material.dart';
import 'package:hask/pages/discover/widgets/discover_post_tile.dart';

class DiscoverSearchPage extends StatefulWidget {
  const DiscoverSearchPage({Key? key}) : super(key: key);

  @override
  _DiscoverSearchPageState createState() => _DiscoverSearchPageState();
}

class _DiscoverSearchPageState extends State<DiscoverSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: PagePlaceholder(
      //     icon: SvgPicture.asset('assets/svgs/magnifier_big.svg'),
      //     title: 'Oops, nothing came up',
      //     desc: 'Maybe try searching for something else',
      //   ),
      // ), //
      body: _buildResultList(context),
    );
  }

  Widget _buildResultList(BuildContext context) {
    return ListView.builder(
      itemBuilder: (cotext, indx) {
        return DiscoverPostTile(
          video: indx % 2 == 0,
        );
      },
      itemCount: 10,
    );
  }
}
