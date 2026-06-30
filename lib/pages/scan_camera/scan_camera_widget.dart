import '/components/button/button_widget.dart';
import '/components/impact_badge/impact_badge_widget.dart';
import '/components/scan_stat/scan_stat_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scan_camera_model.dart';
export 'scan_camera_model.dart';

class ScanCameraWidget extends StatefulWidget {
  const ScanCameraWidget({super.key});

  static String routeName = 'ScanCamera';
  static String routePath = '/scanCamera';

  @override
  State<ScanCameraWidget> createState() => _ScanCameraWidgetState();
}

class _ScanCameraWidgetState extends State<ScanCameraWidget> {
  late ScanCameraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanCameraModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 9999.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.goNamed(HomeDashboardWidget.routeName);
                          },
                        ),
                        Text(
                          'Scanner',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 9999.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.flash_on_rounded,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: AlignmentDirectional(-1.0, -1.0),
                children: [
                  CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 0),
                    fadeOutDuration: Duration(milliseconds: 0),
                    imageUrl:
                        'https://dimg.dreamflow.cloud/v1/image/close%20up%20of%20a%20plastic%20bottle%20on%20grass%2C%20cinematic%20lighting',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary40,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 1.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.5),
                              child: Container(
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(32.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 64.0,
                                      height: 64.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.delete_sweep_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 32.0,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'PET Plastic Bottle',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'Category: Plastic #1',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model: _model.impactBadgeModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ImpactBadgeWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .success15,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  icon: Icon(
                                                    Icons.help,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 14.0,
                                                  ),
                                                  label: 'Recyclable',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.impactBadgeModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ImpactBadgeWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .error15,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  icon: Icon(
                                                    Icons.warning_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 14.0,
                                                  ),
                                                  label: 'High Impact',
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                                Divider(
                                  height: 16.0,
                                  thickness: 1.0,
                                  indent: 0.0,
                                  endIndent: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.scanStatModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScanStatWidget(
                                        label: 'Decomposition',
                                        value: '450 yrs',
                                      ),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.scanStatModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScanStatWidget(
                                        label: 'CO2 Emission',
                                        value: '0.2kg',
                                      ),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.scanStatModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScanStatWidget(
                                        label: 'Risk Level',
                                        value: 'High',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 44.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.photo_library_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 28.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9999.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 4.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Container(
                                  child: Container(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.goNamed(
                                            ScanCameraWidget.routeName);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.center_focus_strong_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 32.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 44.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.info_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 28.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(WasteCatalogWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: ButtonWidget(
                              icon: Icon(
                                Icons.explore_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              iconPresent: true,
                              iconEndPresent: false,
                              content: 'Explore Waste Data',
                              variant: 'primary',
                              size: 'medium',
                              fullWidth: true,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
