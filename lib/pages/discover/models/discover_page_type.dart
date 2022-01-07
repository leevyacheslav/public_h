import 'package:easy_localization/easy_localization.dart';

enum DiscoverPageType {
  all,
  saved,
  recent,
}

extension DiscoverPageTypeParams on DiscoverPageType {
  String title() {
    switch (this) {
      case DiscoverPageType.all:
        return "all".tr();
      case DiscoverPageType.saved:
        return "saved".tr();
      case DiscoverPageType.recent:
        return "recent".tr();
    }
  }

  String? iconName() {
    switch (this) {
      case DiscoverPageType.all:
        return null;
      case DiscoverPageType.saved:
        return "assets/svgs/bookmark.svg";
      case DiscoverPageType.recent:
        return "assets/svgs/recent.svg";
    }
  }
}
