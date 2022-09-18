import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWrappWidget extends StatefulWidget {
  const MenuWrappWidget({
    Key? key,
    this.homeBg,
    this.ridesBg,
    this.familyBg,
    this.settingsBg,
    this.iconSelected,
    this.iconUnselected,
  }) : super(key: key);

  final Color? homeBg;
  final Color? ridesBg;
  final Color? familyBg;
  final Color? settingsBg;
  final Color? iconSelected;
  final Color? iconUnselected;

  @override
  _MenuWrappWidgetState createState() => _MenuWrappWidgetState();
}

class _MenuWrappWidgetState extends State<MenuWrappWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 100,
              decoration: BoxDecoration(),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.vertical,
              runAlignment: WrapAlignment.center,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: widget.homeBg,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('MENU_WRAPP_COMP_Icon_61owqn5q_ON_TAP');
                      logFirebaseEvent('Icon_Navigate-To');

                      context.goNamed('home');
                    },
                    child: Icon(
                      Icons.location_history,
                      color: widget.iconSelected,
                      size: 34,
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: widget.ridesBg,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('MENU_WRAPP_COMP_Icon_r7os2p7i_ON_TAP');
                      logFirebaseEvent('Icon_Navigate-To');

                      context.goNamed('my_rides');
                    },
                    child: Icon(
                      Icons.access_time,
                      color: widget.iconSelected,
                      size: 34,
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: widget.familyBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('MENU_WRAPP_COMP_Icon_3iqyuzcm_ON_TAP');
                      logFirebaseEvent('Icon_Navigate-To');

                      context.goNamed('manage_family');
                    },
                    child: Icon(
                      Icons.people,
                      color: widget.iconSelected,
                      size: 34,
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: widget.settingsBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('MENU_WRAPP_COMP_Icon_je6xqxq4_ON_TAP');
                      logFirebaseEvent('Icon_Navigate-To');

                      context.goNamed('settings');
                    },
                    child: Icon(
                      Icons.settings_sharp,
                      color: widget.iconSelected,
                      size: 34,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 10,
              height: 100,
              decoration: BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
