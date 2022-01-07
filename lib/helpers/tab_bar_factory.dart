import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class TabBarFactory {
  static TabBar create(
    BuildContext context,
    List<Tab> tabs, {
    bool isScrollable = false,
    TabBarIndicatorSize indicatorSize = TabBarIndicatorSize.label,
  }) =>
      TabBar(
        isScrollable: isScrollable,
        labelStyle: TextStyle(
          fontSize: 16,
          height: 1.8,
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 16,
          height: 1.8,
          color: Theme.of(context).colorScheme.secondary,
        ),
        labelColor: Theme.of(context).accentColor,
        unselectedLabelColor: Theme.of(context).colorScheme.primary,
        indicatorWeight: 2,
        indicatorSize: indicatorSize,
        tabs: tabs,
      );

  static TabBar standardTabBar(BuildContext context, List<Tab> tabs,
          {bool isScrollable = false,
          TabBarIndicatorSize indicatorSize = TabBarIndicatorSize.label}) =>
      TabBar(
        isScrollable: isScrollable,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicatorSize: indicatorSize,
        indicatorColor: Colors.transparent,
        labelPadding: const EdgeInsets.symmetric(horizontal: 12),
        tabs: tabs,
      );

  static Tab standardTab(BuildContext context, {required String text}) => Tab(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.redAccent, width: 1),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.bookmark),
                  Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
