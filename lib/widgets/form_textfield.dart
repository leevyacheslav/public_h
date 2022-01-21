// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    String? hintText,
    String? labelText,
    this.enabled = true,
    this.readOnly = false,
    TextEditingController? controller,
    Widget? prefix,
    Widget? suffix,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextStyle? textStyle,
    TextStyle? labelStyle,
    int? maxLines = 1,
    InputBorder? border,
    ValueChanged<String>? onSubmitted,
    FormFieldValidator<String>? validator,
    ValueChanged<String>? onChanged,
    ValueChanged<String?>? onSaved,
    bool autofocus = false,
    FocusNode? focusNode,
    VoidCallback? onEditingComplete,
    Color? fillColor,
    bool filled = true,
    TextInputType? keyboardType,
    this.initialValue,
    this.contentStyle,
    this.hintStyle,
    this.focusedBorder,
    this.contentPadding,
  })  : hintText = hintText,
        labelText = labelText,
        controller = controller,
        prefix = prefix,
        suffix = suffix,
        prefixIcon = prefixIcon,
        suffixIcon = suffixIcon,
        textStyle = textStyle,
        validator = validator,
        labelStyle = labelStyle,
        maxLines = maxLines,
        border = border,
        onSubmitted = onSubmitted,
        focusNode = focusNode,
        autofocus = autofocus,
        onChanged = onChanged,
        onSaved = onSaved,
        onEditingComplete = onEditingComplete,
        fillColor = fillColor,
        filled = filled,
        keyboardType = keyboardType,
        super(key: key);

  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final TextStyle? labelStyle;
  final TextStyle? contentStyle;
  final bool enabled;
  final bool readOnly;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final int? maxLines;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final VoidCallback? onEditingComplete;
  final InputBorder? border;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextEditingController? controller;
  final Color? fillColor;
  final bool filled;
  final TextInputType? keyboardType;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
      autofocus: autofocus,
      focusNode: focusNode,
      onFieldSubmitted: onSubmitted,
      maxLines: maxLines,
      readOnly: readOnly,
      enabled: enabled,
      controller: controller,
      style: contentStyle ?? _textStyle(context),
      validator: validator,
      initialValue: initialValue,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        fillColor: fillColor ?? Theme.of(context).colorScheme.secondaryVariant,
        filled: filled,
        // isDense: true,
        hintText: hintText,
        hintStyle: hintStyle,
        border: _border(context),
        enabledBorder: _border(context),
        focusedBorder: focusedBorder ?? _border(context),
        disabledBorder: _border(context),
        prefix: prefix,
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
      ),
    );
  }

  InputBorder _border(BuildContext context) =>
      border ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
      );

  TextStyle _textStyle(BuildContext context) =>
      textStyle ??
      AppTheme.fontStyle(
        fontSize: 14,
        color: Theme.of(context).colorScheme.onBackground,
      );
}
