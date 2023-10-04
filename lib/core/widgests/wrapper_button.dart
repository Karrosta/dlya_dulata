import 'package:flutter/cupertino.dart';

class WrapperButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;

  const WrapperButton({Key? key, required this.child, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: child,
    );
  }
}
