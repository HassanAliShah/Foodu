import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  final double height;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool showBottomSheet;
  final Widget? bottomSheetContent;
  final int?   maxline;
  final TextEditingController textEditingController;

  const CustomTextField({
    Key? key,
    required this.height,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxline = 1,
    this.showBottomSheet = false,
    this.bottomSheetContent,
    required this.textEditingController,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool isTapped = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {
        isTapped = _focusNode.hasFocus;
      });

      if (!_focusNode.hasFocus) {
        FocusScope.of(context).unfocus();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        controller: widget.textEditingController,
        focusNode: _focusNode,
        cursorColor: HColors.primary,
        maxLines: widget.maxline,
        cursorHeight: HSizes.lg,
        style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.all(HSizes.xs),
          fillColor: isTapped ? HColors.textFieldFillTapColor : HColors.textFieldFillColor,
          hintText: widget.hintText ?? '',
          hintStyle: Theme.of(context).textTheme.labelSmall,
          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: isTapped ? HColors.primary : HColors.textGrey)
              : null,
          suffixIcon: widget.suffixIcon != null
              ? Icon(widget.suffixIcon, color: isTapped ? HColors.primary : HColors.textGrey)
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onTap: () {
          setState(() {
            isTapped = true;
          });
        },
        onEditingComplete: () {
          _focusNode.unfocus();
          setState(() {
            isTapped = false;
          });
        },
      ),
    );
  }
}
