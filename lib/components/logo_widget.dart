import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      child: Container(
        width: 60,
        height: 50,
        child: Stack(
          alignment: AlignmentDirectional(0, 0),
          children: [
            if (Theme.of(context).brightness == Brightness.light)
              Image.asset(
                'assets/images/LightThemeLogo.png',
                width: 60,
                height: 50,
                fit: BoxFit.cover,
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Image.asset(
                'assets/images/DarkThemeLogo.png',
                width: 60,
                height: 50,
                fit: BoxFit.cover,
              ),
          ],
        ),
      ),
    );
  }
}
