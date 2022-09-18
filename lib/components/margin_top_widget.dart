import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarginTopWidget extends StatefulWidget {
  const MarginTopWidget({Key? key}) : super(key: key);

  @override
  _MarginTopWidgetState createState() => _MarginTopWidgetState();
}

class _MarginTopWidgetState extends State<MarginTopWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: double.infinity,
        height: 38,
        decoration: BoxDecoration(),
      ),
    );
  }
}
