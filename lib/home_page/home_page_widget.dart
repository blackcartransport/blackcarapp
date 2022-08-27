import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/logo_widget.dart';
import '../components/navigation_widget.dart';
import '../components/top_navigation_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  var pickupPlacePickerValue = FFPlace();
  bool? extraStopValue;
  var extraStopPlacePickerValue = FFPlace();
  DateTime? datePicked3;
  DateTime? datePicked4;
  var dropoffPlacePickerValue = FFPlace();
  String? vehicleTypeValue;
  double? totalHoursValue;
  int? totalLuggageCountValue;
  int? totalPassengerCountValue;
  String? rideTypeValue;
  TextEditingController? specialRequestsController;
  RidesRecord? requestSent;
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  LatLng? currentUserLocationValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homePage'});
    specialRequestsController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            color: Color(0xFF262626),
          ),
        ),
      );
    }
    return Title(
        title: 'Home',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            FlutterFlowGoogleMap(
                              controller: googleMapsController,
                              onCameraIdle: (latLng) =>
                                  googleMapsCenter = latLng,
                              initialLocation: googleMapsCenter ??=
                                  currentUserLocationValue!,
                              markerColor: GoogleMarkerColor.violet,
                              mapType: MapType.normal,
                              style: GoogleMapStyle.night,
                              initialZoom: 14,
                              allowInteraction: true,
                              allowZoom: true,
                              showZoomControls: false,
                              showLocation: true,
                              showCompass: false,
                              showMapToolbar: false,
                              showTraffic: false,
                              centerMapOnMarkerTap: true,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 10),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: 100,
                                          height: double.infinity,
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
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 16, 5, 32),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                LogoWidget(),
                                                Spacer(),
                                                NavigationWidget(
                                                  bgColorOne:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                  iconColorOne:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  bgColorTwo:
                                                      Colors.transparent,
                                                  iconColorTwo:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  bgColorThree:
                                                      Colors.transparent,
                                                  iconColorThree:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  bgColorFour:
                                                      Colors.transparent,
                                                  iconColorFour:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                ),
                                                Spacer(),
                                                Wrap(
                                                  spacing: 10,
                                                  runSpacing: 5,
                                                  alignment:
                                                      WrapAlignment.center,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.center,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 16,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      icon: FaIcon(
                                                        FontAwesomeIcons
                                                            .powerOff,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 22,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'HOME_PAGE_PAGE_powerOff_ICN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'IconButton_Auth');
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();
                                                        await signOut();
                                                        logFirebaseEvent(
                                                            'IconButton_Navigate-To');
                                                        context.pushNamedAuth(
                                                            'signIn', mounted);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 10),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1,
                                          constraints: BoxConstraints(
                                            maxWidth: 380,
                                          ),
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
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 10, 2, 2),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 16, 16, 16),
                                                    child: Form(
                                                      key: formKey,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .disabled,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        12,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Form',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        12),
                                                            child: Text(
                                                              'Fill up the reqest form',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              5,
                                                                              5,
                                                                              5),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: FlutterFlowDropDown(
                                                                                  initialOption: rideTypeValue ??= 'Point to point',
                                                                                  options: [
                                                                                    'Point to point',
                                                                                    'To Airport',
                                                                                    'From Airport',
                                                                                    'Hourly'
                                                                                  ],
                                                                                  onChanged: (val) => setState(() => rideTypeValue = val),
                                                                                  width: MediaQuery.of(context).size.width,
                                                                                  height: 45,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                  hintText: 'Service type',
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2,
                                                                                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  borderWidth: 1,
                                                                                  borderRadius: 16,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                                                                  hidesUnderline: true,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            32,
                                                                            10,
                                                                            10),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Pick up',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Container(
                                                                              width: 100,
                                                                              height: 1,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(16),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Container(
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.location_pin,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 20,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          pickupPlacePickerValue.address,
                                                                                          'Pick up address',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          FlutterFlowPlacePicker(
                                                                            iOSGoogleMapsApiKey:
                                                                                'AIzaSyC4YFYximcDuX5li-jDvK6cqqn7Rqh3LQg',
                                                                            androidGoogleMapsApiKey:
                                                                                'AIzaSyByje3cEUTAXjHdQ6IuofGhM3vzNJBbiUc',
                                                                            webGoogleMapsApiKey:
                                                                                'AIzaSyD8nQtxfTR-P8iCVDjeWa66uGJXTD_KxF0',
                                                                            onSelect:
                                                                                (place) async {
                                                                              setState(() => pickupPlacePickerValue = place);
                                                                            },
                                                                            defaultText:
                                                                                '',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.location_searching_sharp,
                                                                              color: Colors.white,
                                                                              size: 20,
                                                                            ),
                                                                            buttonOptions:
                                                                                FFButtonOptions(
                                                                              width: 43,
                                                                              height: 45,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    fontSize: 14,
                                                                                  ),
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(14),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'Date',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'Time',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                5,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('HOME_PAGE_PAGE_pickupDate_ON_TAP');
                                                                                logFirebaseEvent('pickupDate_Date-Time-Picker');
                                                                                if (kIsWeb) {
                                                                                  final _datePicked1Date = await showDatePicker(
                                                                                    context: context,
                                                                                    initialDate: getCurrentTimestamp,
                                                                                    firstDate: getCurrentTimestamp,
                                                                                    lastDate: DateTime(2050),
                                                                                  );

                                                                                  if (_datePicked1Date != null) {
                                                                                    setState(
                                                                                      () => datePicked1 = DateTime(
                                                                                        _datePicked1Date.year,
                                                                                        _datePicked1Date.month,
                                                                                        _datePicked1Date.day,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  await DatePicker.showDatePicker(
                                                                                    context,
                                                                                    showTitleActions: true,
                                                                                    onConfirm: (date) {
                                                                                      setState(() => datePicked1 = date);
                                                                                    },
                                                                                    currentTime: getCurrentTimestamp,
                                                                                    minTime: getCurrentTimestamp,
                                                                                    locale: LocaleType.values.firstWhere(
                                                                                      (l) => l.name == FFLocalizations.of(context).languageCode,
                                                                                      orElse: () => LocaleType.en,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              },
                                                                              child: Container(
                                                                                width: 100,
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                                                                                        child: Icon(
                                                                                          Icons.calendar_today,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          dateTimeFormat('yMd', datePicked1),
                                                                                          'mm/dd/yyyy',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('HOME_PAGE_PAGE_pickupTime_ON_TAP');
                                                                                logFirebaseEvent('pickupTime_Date-Time-Picker');
                                                                                if (kIsWeb) {
                                                                                  final _datePicked2Time = await showTimePicker(
                                                                                    context: context,
                                                                                    initialTime: TimeOfDay.fromDateTime(getCurrentTimestamp),
                                                                                  );
                                                                                  if (_datePicked2Time != null) {
                                                                                    setState(
                                                                                      () => datePicked2 = DateTime(
                                                                                        getCurrentTimestamp.year,
                                                                                        getCurrentTimestamp.month,
                                                                                        getCurrentTimestamp.day,
                                                                                        _datePicked2Time.hour,
                                                                                        _datePicked2Time.minute,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  await DatePicker.showTimePicker(
                                                                                    context,
                                                                                    showTitleActions: true,
                                                                                    onConfirm: (date) {
                                                                                      setState(() => datePicked2 = date);
                                                                                    },
                                                                                    currentTime: getCurrentTimestamp,
                                                                                    locale: LocaleType.values.firstWhere(
                                                                                      (l) => l.name == FFLocalizations.of(context).languageCode,
                                                                                      orElse: () => LocaleType.en,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              },
                                                                              child: Container(
                                                                                width: 100,
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                                                                                        child: Icon(
                                                                                          Icons.access_time,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          dateTimeFormat('jm', datePicked2),
                                                                                          '00:00 AM/PM',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SwitchListTile(
                                                                    value:
                                                                        extraStopValue ??=
                                                                            false,
                                                                    onChanged: (newValue) =>
                                                                        setState(() =>
                                                                            extraStopValue =
                                                                                newValue),
                                                                    title: Text(
                                                                      '+ Extra stop',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2,
                                                                    ),
                                                                    tileColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    dense: true,
                                                                    controlAffinity:
                                                                        ListTileControlAffinity
                                                                            .trailing,
                                                                  ),
                                                                  if (extraStopValue !=
                                                                      false)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              5,
                                                                              5,
                                                                              5),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            45,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                child: Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(16),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.location_pin,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 20,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            extraStopPlacePickerValue.address,
                                                                                            'Extra stop address',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            FlutterFlowPlacePicker(
                                                                              iOSGoogleMapsApiKey: 'AIzaSyC4YFYximcDuX5li-jDvK6cqqn7Rqh3LQg',
                                                                              androidGoogleMapsApiKey: 'AIzaSyByje3cEUTAXjHdQ6IuofGhM3vzNJBbiUc',
                                                                              webGoogleMapsApiKey: 'AIzaSyD8nQtxfTR-P8iCVDjeWa66uGJXTD_KxF0',
                                                                              onSelect: (place) async {
                                                                                setState(() => extraStopPlacePickerValue = place);
                                                                              },
                                                                              defaultText: '',
                                                                              icon: Icon(
                                                                                Icons.location_searching_sharp,
                                                                                color: Colors.white,
                                                                                size: 20,
                                                                              ),
                                                                              buttonOptions: FFButtonOptions(
                                                                                width: 43,
                                                                                height: 45,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      fontSize: 14,
                                                                                    ),
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 1,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(14),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            32,
                                                                            10,
                                                                            10),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Drop off',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Container(
                                                                              width: 100,
                                                                              height: 1,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(16),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Container(
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.pin_drop,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 20,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          dropoffPlacePickerValue.address,
                                                                                          'Drop off address',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          FlutterFlowPlacePicker(
                                                                            iOSGoogleMapsApiKey:
                                                                                'AIzaSyC4YFYximcDuX5li-jDvK6cqqn7Rqh3LQg',
                                                                            androidGoogleMapsApiKey:
                                                                                'AIzaSyByje3cEUTAXjHdQ6IuofGhM3vzNJBbiUc',
                                                                            webGoogleMapsApiKey:
                                                                                'AIzaSyD8nQtxfTR-P8iCVDjeWa66uGJXTD_KxF0',
                                                                            onSelect:
                                                                                (place) async {
                                                                              setState(() => dropoffPlacePickerValue = place);
                                                                            },
                                                                            defaultText:
                                                                                '',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.location_searching_sharp,
                                                                              color: Colors.white,
                                                                              size: 20,
                                                                            ),
                                                                            buttonOptions:
                                                                                FFButtonOptions(
                                                                              width: 43,
                                                                              height: 45,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    fontSize: 14,
                                                                                  ),
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(14),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                5,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('HOME_PAGE_PAGE_dropoffDate_ON_TAP');
                                                                                logFirebaseEvent('dropoffDate_Date-Time-Picker');
                                                                                if (kIsWeb) {
                                                                                  final _datePicked3Date = await showDatePicker(
                                                                                    context: context,
                                                                                    initialDate: getCurrentTimestamp,
                                                                                    firstDate: getCurrentTimestamp,
                                                                                    lastDate: DateTime(2050),
                                                                                  );

                                                                                  if (_datePicked3Date != null) {
                                                                                    setState(
                                                                                      () => datePicked3 = DateTime(
                                                                                        _datePicked3Date.year,
                                                                                        _datePicked3Date.month,
                                                                                        _datePicked3Date.day,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  await DatePicker.showDatePicker(
                                                                                    context,
                                                                                    showTitleActions: true,
                                                                                    onConfirm: (date) {
                                                                                      setState(() => datePicked3 = date);
                                                                                    },
                                                                                    currentTime: getCurrentTimestamp,
                                                                                    minTime: getCurrentTimestamp,
                                                                                    locale: LocaleType.values.firstWhere(
                                                                                      (l) => l.name == FFLocalizations.of(context).languageCode,
                                                                                      orElse: () => LocaleType.en,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              },
                                                                              child: Container(
                                                                                width: 100,
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                                                                                        child: Icon(
                                                                                          Icons.calendar_today,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          dateTimeFormat('yMd', datePicked3),
                                                                                          'mm/dd/yyyy',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('HOME_PAGE_PAGE_dropoffTime_ON_TAP');
                                                                                logFirebaseEvent('dropoffTime_Date-Time-Picker');
                                                                                if (kIsWeb) {
                                                                                  final _datePicked4Time = await showTimePicker(
                                                                                    context: context,
                                                                                    initialTime: TimeOfDay.fromDateTime(getCurrentTimestamp),
                                                                                  );
                                                                                  if (_datePicked4Time != null) {
                                                                                    setState(
                                                                                      () => datePicked4 = DateTime(
                                                                                        getCurrentTimestamp.year,
                                                                                        getCurrentTimestamp.month,
                                                                                        getCurrentTimestamp.day,
                                                                                        _datePicked4Time.hour,
                                                                                        _datePicked4Time.minute,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  await DatePicker.showTimePicker(
                                                                                    context,
                                                                                    showTitleActions: true,
                                                                                    onConfirm: (date) {
                                                                                      setState(() => datePicked4 = date);
                                                                                    },
                                                                                    currentTime: getCurrentTimestamp,
                                                                                    locale: LocaleType.values.firstWhere(
                                                                                      (l) => l.name == FFLocalizations.of(context).languageCode,
                                                                                      orElse: () => LocaleType.en,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              },
                                                                              child: Container(
                                                                                width: 100,
                                                                                height: 45,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                                                                                        child: Icon(
                                                                                          Icons.access_time,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          dateTimeFormat('jm', datePicked4),
                                                                                          '00:00 AM/PM',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'Date',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'Time',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            32,
                                                                            10,
                                                                            10),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Rider preferences',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Container(
                                                                              width: 100,
                                                                              height: 1,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          45,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(16),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.carSide,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                FlutterFlowDropDown(
                                                                              options: [
                                                                                'SUV',
                                                                                'Sprinter Van'
                                                                              ],
                                                                              onChanged: (val) => setState(() => vehicleTypeValue = val),
                                                                              width: 180,
                                                                              height: 50,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                              hintText: 'Vehicle Type',
                                                                              elevation: 2,
                                                                              borderColor: Colors.transparent,
                                                                              borderWidth: 1,
                                                                              borderRadius: 16,
                                                                              margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                                                              hidesUnderline: true,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (rideTypeValue ==
                                                                      'Hourly')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              5,
                                                                              5,
                                                                              5),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            45,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                child: Icon(
                                                                                  Icons.hourglass_top,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 20,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                child: Text(
                                                                                  'Total hours',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      borderRadius: BorderRadius.circular(14),
                                                                                    ),
                                                                                    child: Slider(
                                                                                      activeColor: Colors.white,
                                                                                      inactiveColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      min: 3,
                                                                                      max: 24,
                                                                                      value: totalHoursValue ??= 3,
                                                                                      label: totalHoursValue.toString(),
                                                                                      divisions: 21,
                                                                                      onChanged: (newValue) {
                                                                                        setState(() => totalHoursValue = newValue);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          45,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(16),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                              child: Icon(
                                                                                Icons.cases,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 20,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                'Total Luggage',
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 150,
                                                                              height: 50,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                borderRadius: BorderRadius.circular(14),
                                                                                shape: BoxShape.rectangle,
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 1,
                                                                                ),
                                                                              ),
                                                                              child: FlutterFlowCountController(
                                                                                decrementIconBuilder: (enabled) => FaIcon(
                                                                                  FontAwesomeIcons.minus,
                                                                                  color: enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                                                                                  size: 20,
                                                                                ),
                                                                                incrementIconBuilder: (enabled) => FaIcon(
                                                                                  FontAwesomeIcons.plus,
                                                                                  color: enabled ? Colors.white : Color(0xFFEEEEEE),
                                                                                  size: 20,
                                                                                ),
                                                                                countBuilder: (count) => Text(
                                                                                  count.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                        color: Colors.white,
                                                                                      ),
                                                                                ),
                                                                                count: totalLuggageCountValue ??= 1,
                                                                                updateCount: (count) => setState(() => totalLuggageCountValue = count),
                                                                                stepSize: 1,
                                                                                minimum: 1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          45,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(16),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                              child: Icon(
                                                                                Icons.person_add,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 20,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                'Total Passengers',
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 150,
                                                                              height: 50,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                borderRadius: BorderRadius.circular(14),
                                                                                shape: BoxShape.rectangle,
                                                                                border: Border.all(
                                                                                  color: Color(0xFF9E9E9E),
                                                                                  width: 1,
                                                                                ),
                                                                              ),
                                                                              child: FlutterFlowCountController(
                                                                                decrementIconBuilder: (enabled) => FaIcon(
                                                                                  FontAwesomeIcons.minus,
                                                                                  color: enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                                                                                  size: 20,
                                                                                ),
                                                                                incrementIconBuilder: (enabled) => FaIcon(
                                                                                  FontAwesomeIcons.plus,
                                                                                  color: enabled ? Colors.white : Color(0xFFEEEEEE),
                                                                                  size: 20,
                                                                                ),
                                                                                countBuilder: (count) => Text(
                                                                                  count.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                        color: Colors.white,
                                                                                      ),
                                                                                ),
                                                                                count: totalPassengerCountValue ??= 1,
                                                                                updateCount: (count) => setState(() => totalPassengerCountValue = count),
                                                                                stepSize: 1,
                                                                                minimum: 1,
                                                                                maximum: 4,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        5,
                                                                        5),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                                                              child: TextFormField(
                                                                                controller: specialRequestsController,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  hintText: 'Special Requests or extra information.',
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(16),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(16),
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                                maxLines: 8,
                                                                                keyboardType: TextInputType.multiline,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (vehicleTypeValue ==
                                                                          'SUV')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              16),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(16),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 16, 0, 0),
                                                                                  child: Text(
                                                                                    'Total',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Price Breakdown',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'SUV Base Rate per hour',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$135.00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Min 3 hours',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$405.00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Taxes',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$24.20',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Total hours:',
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: 'Roboto Mono',
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                            child: Text(
                                                                                              totalHoursValue.toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Roboto Mono',
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 12,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        '\$40.00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Total',
                                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                  fontFamily: 'Outfit',
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 18,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 36,
                                                                                            icon: Icon(
                                                                                              Icons.info_outlined,
                                                                                              color: Color(0xFF57636C),
                                                                                              size: 18,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          formatNumber(
                                                                                            functions.total(405.0, totalHoursValue!, 135.0),
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.commaDecimal,
                                                                                            currency: '\$',
                                                                                          ),
                                                                                          '0',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).title1.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 34,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (vehicleTypeValue ==
                                                                          'Sprinter Van')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              16),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(16),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 16, 0, 0),
                                                                                  child: Text(
                                                                                    'Total',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Price Breakdown',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Base Rate',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$220,00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Min 3 hours',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$660,00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Taxes',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 12,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '\$24.20',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Total hours:',
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: 'Roboto Mono',
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                            child: Text(
                                                                                              totalHoursValue.toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Roboto Mono',
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 12,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        '\$40.00',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Roboto Mono',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Total',
                                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                  fontFamily: 'Outfit',
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 18,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 36,
                                                                                            icon: Icon(
                                                                                              Icons.info_outlined,
                                                                                              color: Color(0xFF57636C),
                                                                                              size: 18,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          formatNumber(
                                                                                            functions.total(660.0, totalHoursValue!, 220.0),
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.commaDecimal,
                                                                                            currency: '\$',
                                                                                          ),
                                                                                          '0',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).title1.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 34,
                                                                                              fontWeight: FontWeight.w500,
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
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        32),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'HOME_PAGE_PAGE_REQUEST_BTN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Button_Validate-Form');
                                                                if (formKey.currentState ==
                                                                        null ||
                                                                    !formKey
                                                                        .currentState!
                                                                        .validate()) {
                                                                  return;
                                                                }

                                                                logFirebaseEvent(
                                                                    'Button_Backend-Call');

                                                                final ridesCreateData =
                                                                    {
                                                                  ...createRidesRecordData(
                                                                    rideId: random_data
                                                                        .randomString(
                                                                      0,
                                                                      32,
                                                                      true,
                                                                      true,
                                                                      true,
                                                                    ),
                                                                    passengerId:
                                                                        currentUserReference,
                                                                    ridePickupDay:
                                                                        datePicked1,
                                                                    ridePickupTime:
                                                                        datePicked2,
                                                                    rideDropoffDay:
                                                                        datePicked3,
                                                                    rideDropoffTime:
                                                                        datePicked4,
                                                                    rideTimeRequested:
                                                                        getCurrentTimestamp,
                                                                    rideSpecialRequest:
                                                                        specialRequestsController!
                                                                            .text,
                                                                    ridePickupAddress:
                                                                        pickupPlacePickerValue
                                                                            .address,
                                                                    rideDropoffAddress:
                                                                        dropoffPlacePickerValue
                                                                            .address,
                                                                    rideType:
                                                                        vehicleTypeValue,
                                                                    ridePickupLocation:
                                                                        pickupPlacePickerValue
                                                                            .latLng,
                                                                    rideDropoffLocation:
                                                                        dropoffPlacePickerValue
                                                                            .latLng,
                                                                  ),
                                                                  'ride_extra_stops':
                                                                      [
                                                                    valueOrDefault<
                                                                        String>(
                                                                      extraStopPlacePickerValue
                                                                          .address,
                                                                      'No extra stop',
                                                                    )
                                                                  ],
                                                                };
                                                                var ridesRecordReference =
                                                                    RidesRecord
                                                                        .collection
                                                                        .doc();
                                                                await ridesRecordReference
                                                                    .set(
                                                                        ridesCreateData);
                                                                requestSent = RidesRecord
                                                                    .getDocumentFromData(
                                                                        ridesCreateData,
                                                                        ridesRecordReference);

                                                                setState(() {});
                                                              },
                                                              text: 'Request',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130,
                                                                height: 60,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 16),
                                      child: TopNavigationWidget(),
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
              ),
            ],
          ),
        ));
  }
}
