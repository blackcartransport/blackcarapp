import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({
    Key? key,
    this.iconColorOne,
    this.iconColorTwo,
    this.iconColorThree,
    this.iconColorFour,
    this.bgColorOne,
    this.bgColorTwo,
    this.bgColorThree,
    this.bgColorFour,
  }) : super(key: key);

  final Color? iconColorOne;
  final Color? iconColorTwo;
  final Color? iconColorThree;
  final Color? iconColorFour;
  final Color? bgColorOne;
  final Color? bgColorTwo;
  final Color? bgColorThree;
  final Color? bgColorFour;

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        child: Wrap(
          spacing: 24,
          runSpacing: 16,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          runAlignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.antiAlias,
          children: [
            InkWell(
              onTap: () async {
                logFirebaseEvent('NAVIGATION_Container_n6kpjhus_ON_TAP');
                logFirebaseEvent('Container_Navigate-To');
                context.pushNamed('homePage');
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: widget.bgColorOne,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  Icons.location_pin,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: widget.bgColorTwo,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                Icons.access_time,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: widget.bgColorThree,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                Icons.credit_card,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
