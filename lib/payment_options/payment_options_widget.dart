import '../auth/auth_util.dart';
import '../components/logo_widget.dart';
import '../components/navigation_widget.dart';
import '../components/top_navigation_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentOptionsWidget extends StatefulWidget {
  const PaymentOptionsWidget({Key? key}) : super(key: key);

  @override
  _PaymentOptionsWidgetState createState() => _PaymentOptionsWidgetState();
}

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'paymentOptions'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Payment Options',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                  child: Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 16, 5, 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          LogoWidget(),
                          Spacer(),
                          NavigationWidget(
                            bgColorOne: Colors.transparent,
                            iconColorOne:
                                FlutterFlowTheme.of(context).primaryText,
                            bgColorTwo: Colors.transparent,
                            iconColorTwo:
                                FlutterFlowTheme.of(context).primaryText,
                            bgColorThree:
                                FlutterFlowTheme.of(context).primaryColor,
                            iconColorThree:
                                FlutterFlowTheme.of(context).primaryText,
                            bgColorFour: Colors.transparent,
                            iconColorFour:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                          Spacer(),
                          Wrap(
                            spacing: 10,
                            runSpacing: 5,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.center,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 16,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: FaIcon(
                                  FontAwesomeIcons.powerOff,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 22,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'PAYMENT_OPTIONS_PAGE_powerOff_ICN_ON_TAP');
                                  logFirebaseEvent('IconButton_Auth');
                                  GoRouter.of(context).prepareAuthEvent();
                                  await signOut();
                                  logFirebaseEvent('IconButton_Navigate-To');
                                  context.pushNamedAuth('signIn', mounted);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                        child: TopNavigationWidget(),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
