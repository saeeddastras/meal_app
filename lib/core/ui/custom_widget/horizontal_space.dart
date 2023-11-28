import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class HorizontalSpace extends StatelessWidget {
  HorizontalSpace(this.space, {Key? key}) : super(key: key);

  double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space);
  }
}
