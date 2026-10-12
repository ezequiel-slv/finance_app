import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback? onPressed;

  const MultTextButton({
      super.key, 
      required this.children, 
      required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}