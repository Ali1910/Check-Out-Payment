import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/styles.dart';

AppBar buildAppbar({required final String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Center(
      child: SvgPicture.asset('assets/images/Arrow.svg'),
    ),
    title: Text(
      title,
      style: Styles.style25,
    ),
  );
}
