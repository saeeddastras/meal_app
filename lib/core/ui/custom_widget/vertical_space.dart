import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class VerticalSpace extends StatelessWidget {
  VerticalSpace(this.space, {Key? key}) : super(key: key);

  double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}
