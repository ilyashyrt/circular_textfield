// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CircularTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData icon;
  String? hintText;
  Color? hintTextColor;
  double width;
  Color? backgroundColor;
  Color? iconColor;
  Color? enabledIconColor;
  Color? cursorColor;
  TextInputType? keyboardType;
  TextStyle? style;
  bool? obscureText;
  bool hasIcon;
  Function(String)? onChanged;
  Function()? onEditingComplete;
  Function(String)? onSubmitted;
  Function()? onTap;
  CircularTextField({
    Key? key,
    this.textEditingController,
    required this.icon,
    this.hintText,
    this.hintTextColor,
    required this.width,
    this.backgroundColor,
    this.iconColor,
    this.enabledIconColor,
    this.cursorColor,
    this.keyboardType,
    this.style,
    this.obscureText,
    required this.hasIcon,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
  })  : assert(width >= 150),
        super(key: key);

  @override
  State<CircularTextField> createState() => _CircularTextFieldState();
}

class _CircularTextFieldState extends State<CircularTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        textAlign: widget.hasIcon == true ? TextAlign.start : TextAlign.center,
        cursorColor: widget.cursorColor ?? Colors.black,
        onTap: widget.onTap,
        onSubmitted: widget.onSubmitted,
        onEditingComplete: widget.onEditingComplete,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText ?? false,
        style: widget.style,
        textAlignVertical: TextAlignVertical.center,
        controller: widget.textEditingController,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
            //contentPadding: EdgeInsets.zero,
            hintText: widget.hintText ?? "",
            hintStyle: TextStyle(color: widget.hintTextColor),
            border: InputBorder.none,
            //contentPadding: EdgeInsets.symmetric(horizontal: 10),
            prefixIcon: widget.hasIcon == true
                ? Icon(
                    widget.icon,
                    color: widget.iconColor ?? Colors.black,
                  )
                : null
            //hintText: LocaleKeys.register_name.tr(),
            //hintStyle: context.textTheme.bodyText2!
            // .copyWith(color: Colors.grey, fontSize: 18),
            ),
      ),
    );
  }
}
