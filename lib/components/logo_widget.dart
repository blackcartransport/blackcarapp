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
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        width: 89,
        height: 55,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(13),
        ),
        alignment: AlignmentDirectional(0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 42.5,
              height: 51,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(0),
                ),
              ),
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'B',
                textAlign: TextAlign.center,
                maxLines: 1,
                style: GoogleFonts.getFont(
                  'Montserrat',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontWeight: FontWeight.w500,
                  fontSize: 34,
                  height: 0,
                ),
              ),
            ),
            Container(
              width: 42.5,
              height: 51,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(13),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(13),
                ),
              ),
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'C',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Montserrat',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.w500,
                  fontSize: 34,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
