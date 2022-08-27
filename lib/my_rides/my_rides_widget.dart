import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/logo_widget.dart';
import '../components/navigation_widget.dart';
import '../components/top_navigation_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyRidesWidget extends StatefulWidget {
  const MyRidesWidget({Key? key}) : super(key: key);

  @override
  _MyRidesWidgetState createState() => _MyRidesWidgetState();
}

class _MyRidesWidgetState extends State<MyRidesWidget> {
  PagingController<DocumentSnapshot?, RidesRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'myRides'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'My Rides',
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
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
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
                            bgColorTwo:
                                FlutterFlowTheme.of(context).primaryColor,
                            iconColorTwo:
                                FlutterFlowTheme.of(context).primaryText,
                            bgColorThree: Colors.transparent,
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
                                      'MY_RIDES_PAGE_powerOff_ICN_ON_TAP');
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                              child: TopNavigationWidget(),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: double.infinity,
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32, 32, 32, 32),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ))
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 12, 16, 12),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Pick up address',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Drop off address',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Pick up date/time',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Drop off date/time',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Total',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  PagedListView<
                                                      DocumentSnapshot<
                                                          Object?>?,
                                                      RidesRecord>(
                                                    pagingController: () {
                                                      final Query<Object?> Function(
                                                              Query<Object?>)
                                                          queryBuilder =
                                                          (ridesRecord) =>
                                                              ridesRecord.where(
                                                                  'passenger_id',
                                                                  isEqualTo:
                                                                      currentUserReference);
                                                      if (_pagingController !=
                                                          null) {
                                                        final query =
                                                            queryBuilder(
                                                                RidesRecord
                                                                    .collection);
                                                        if (query !=
                                                            _pagingQuery) {
                                                          // The query has changed
                                                          _pagingQuery = query;
                                                          _streamSubscriptions
                                                              .forEach((s) =>
                                                                  s?.cancel());
                                                          _streamSubscriptions
                                                              .clear();
                                                          _pagingController!
                                                              .refresh();
                                                        }
                                                        return _pagingController!;
                                                      }

                                                      _pagingController =
                                                          PagingController(
                                                              firstPageKey:
                                                                  null);
                                                      _pagingQuery =
                                                          queryBuilder(
                                                              RidesRecord
                                                                  .collection);
                                                      _pagingController!
                                                          .addPageRequestListener(
                                                              (nextPageMarker) {
                                                        queryRidesRecordPage(
                                                          queryBuilder: (ridesRecord) =>
                                                              ridesRecord.where(
                                                                  'passenger_id',
                                                                  isEqualTo:
                                                                      currentUserReference),
                                                          nextPageMarker:
                                                              nextPageMarker,
                                                          pageSize: 25,
                                                          isStream: true,
                                                        ).then((page) {
                                                          _pagingController!
                                                              .appendPage(
                                                            page.data,
                                                            page.nextPageMarker,
                                                          );
                                                          final streamSubscription =
                                                              page.dataStream
                                                                  ?.listen(
                                                                      (data) {
                                                            final itemIndexes =
                                                                _pagingController!
                                                                    .itemList!
                                                                    .asMap()
                                                                    .map((k,
                                                                            v) =>
                                                                        MapEntry(
                                                                            v.reference.id,
                                                                            k));
                                                            data.forEach(
                                                                (item) {
                                                              final index =
                                                                  itemIndexes[item
                                                                      .reference
                                                                      .id];
                                                              final items =
                                                                  _pagingController!
                                                                      .itemList!;
                                                              if (index !=
                                                                  null) {
                                                                items
                                                                    .replaceRange(
                                                                        index,
                                                                        index +
                                                                            1,
                                                                        [item]);
                                                                _pagingController!
                                                                    .itemList = {
                                                                  for (var item
                                                                      in items)
                                                                    item.reference:
                                                                        item
                                                                }
                                                                    .values
                                                                    .toList();
                                                              }
                                                            });
                                                            setState(() {});
                                                          });
                                                          _streamSubscriptions.add(
                                                              streamSubscription);
                                                        });
                                                      });
                                                      return _pagingController!;
                                                    }(),
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    builderDelegate:
                                                        PagedChildBuilderDelegate<
                                                            RidesRecord>(
                                                      // Customize what your widget looks like when it's loading the first page.
                                                      firstPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: Color(
                                                                0xFF262626),
                                                          ),
                                                        ),
                                                      ),

                                                      itemBuilder: (context, _,
                                                          listViewIndex) {
                                                        final listViewRidesRecord =
                                                            _pagingController!
                                                                    .itemList![
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 0, 16),
                                                          child: FutureBuilder<
                                                              List<
                                                                  RidesRecord>>(
                                                            future:
                                                                queryRidesRecordOnce(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: Color(
                                                                          0xFF262626),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<RidesRecord>
                                                                  rideCardRidesRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              2),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
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
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                child: Text(
                                                                                  listViewRidesRecord.ridePickupAddress!,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 14,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                child: Text(
                                                                                  listViewRidesRecord.rideDropoffAddress!,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 14,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                dateTimeFormat('d/M H:mm', listViewRidesRecord.ridePickupDay!),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      fontSize: 14,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                listViewRidesRecord.ridePickupAddress!,
                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                formatNumber(
                                                                                  listViewRidesRecord.totalRide!,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.automatic,
                                                                                  currency: '\$',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
