import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0x00101213),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (Theme.of(context).brightness == Brightness.dark)
              SvgPicture.asset(
                'assets/images/darkLogo.svg',
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            if (Theme.of(context).brightness == Brightness.light)
              SvgPicture.asset(
                'assets/images/lightLogoThicker.svg',
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
          ],
        ),
      ),
    );
  }
}
