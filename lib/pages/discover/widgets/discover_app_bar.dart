import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/widgets/form_textfield.dart';
import 'package:easy_localization/easy_localization.dart';

class DiscoverAppBar extends StatefulWidget {
  const DiscoverAppBar({
    Key? key,
    this.onSearchChanged,
    this.isSeachSessionActive,
  }) : super(key: key);

  final ValueChanged<bool>? isSeachSessionActive;
  final ValueChanged<String>? onSearchChanged;

  @override
  _DiscoverAppBarState createState() => _DiscoverAppBarState();
}

class _DiscoverAppBarState extends State<DiscoverAppBar> {
  final focusNode = FocusNode();
  final textController = TextEditingController();
  var isSearchActive = false;

  @override
  void initState() {
    textController.addListener(() {
      widget.onSearchChanged?.call(textController.text);
    });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {});
        isSearchActive = true;
        widget.isSeachSessionActive?.call(isSearchActive);
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FormTextField(
                  contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
                  fillColor: Theme.of(context).colorScheme.surface,
                  hintText: 'discover_serach_text'.tr(),
                  focusNode: focusNode,
                  controller: textController,
                  hintStyle: AppTheme.fontStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SvgPicture.asset('assets/svgs/search.svg'),
                  ),
                ),
              ),
              _buildTrailing(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrailing() {
    late Widget trailing;
    if (isSearchActive) {
      trailing = TextButton(
        onPressed: () {
          isSearchActive = false;
          widget.isSeachSessionActive?.call(isSearchActive);
          focusNode.unfocus();
          textController.clear();
        },
        child: Text(
          'cancel'.tr(),
          style: AppTheme.fontStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      );
    } else {
      trailing = Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: trailing,
    );
  }
}
