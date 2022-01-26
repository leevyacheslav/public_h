import 'package:easy_debounce/easy_debounce.dart';

mixin DebounceExecutable {
  debounce({
    required String name,
    required void Function() execute,
    Duration duration = const Duration(milliseconds: 200),
  }) {
    EasyDebounce.debounce(name, duration, execute);
  }
}
