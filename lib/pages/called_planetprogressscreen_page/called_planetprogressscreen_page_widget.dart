import '/components/planet_progress_card_widget.dart';
import '/components/recovery_bar_widget.dart';
import '/components/statistic_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'called_planetprogressscreen_page_model.dart';
export 'called_planetprogressscreen_page_model.dart';

/// Create a new screen called "PlanetProgressScreen" for EcoRobo.
///
/// IMPORTANT:
/// Do not modify existing screens.
///
/// Purpose:
///
/// Show how the player's actions improve the planet.
///
/// This screen represents environmental evolution.
/// Design:
///
/// Create a visual transformation concept:
/// Before:
///
/// Polluted world
///
/// After:
///
/// Clean green world
/// Screen elements:
/// Header:
///
/// Title:
///
/// "Planet Progress"
/// Main visualization:
///
/// Large progress area.
///
/// Show:
///
/// Pollution level decreasing
///
/// Nature recovering
/// Create progress bar:
///
/// Example:
///
/// Planet Recovery:
///
/// 65%
/// Statistics cards:
/// Waste recycled
///
/// Areas cleaned
///
/// Environmental points
/// Add motivational message:
/// "Every action helps rebuild the planet."
/// Create reusable components:
///
/// - PlanetProgressCard
/// - StatisticCard
/// - RecoveryBar
class CalledPlanetprogressscreenPageWidget extends StatefulWidget {
  const CalledPlanetprogressscreenPageWidget({super.key});

  static String routeName = 'CalledPlanetprogressscreenPage';
  static String routePath = '/calledPlanetprogressscreenPage';

  @override
  State<CalledPlanetprogressscreenPageWidget> createState() =>
      _CalledPlanetprogressscreenPageWidgetState();
}

class _CalledPlanetprogressscreenPageWidgetState
    extends State<CalledPlanetprogressscreenPageWidget> {
  late CalledPlanetprogressscreenPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalledPlanetprogressscreenPageModel());
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Planet Progress',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                Text(
                                  'EcoRobo Evolution',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.info_outline_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32.0),
                    child: Container(
                      height: 240.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF87CEEB), Color(0xFF2E8B57)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(32.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.forest_rounded,
                                      color: Color(0x661B5E20),
                                      size: 80.0,
                                    ),
                                    Icon(
                                      Icons.water_drop_rounded,
                                      color: Color(0x99B2EBF2),
                                      size: 40.0,
                                    ),
                                    Icon(
                                      Icons.terrain_rounded,
                                      color: Color(0x4D388E3C),
                                      size: 100.0,
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Container(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 8.0,
                                            sigmaY: 8.0,
                                          ),
                                          child: Container(
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xCCF8FAF9),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Container(
                                                child: wrapWithModel(
                                                  model:
                                                      _model.recoveryBarModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: RecoveryBarWidget(
                                                    label: 'Planet Recovery',
                                                    percentage: '65',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0x1AE76F51),
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0x4DE76F51),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.factory_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 14.0,
                                                ),
                                                Text(
                                                  'Pollution: -42%',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.statisticCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: StatisticCardWidget(
                              tone: FlutterFlowTheme.of(context).success,
                              icon: Icon(
                                Icons.recycling_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              value: '1,284 kg',
                              label: 'Waste Recycled',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.statisticCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: StatisticCardWidget(
                              tone: FlutterFlowTheme.of(context).tertiary,
                              icon: Icon(
                                Icons.cleaning_services_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              value: '12 Sectors',
                              label: 'Areas Cleaned',
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.statisticCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: StatisticCardWidget(
                              tone: FlutterFlowTheme.of(context).warning,
                              icon: Icon(
                                Icons.local_fire_department_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              value: '8,450',
                              label: 'Eco Points',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.statisticCardModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: StatisticCardWidget(
                              tone: FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.park_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              value: '156',
                              label: 'Trees Planted',
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x0D2D6A4F),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0x332D6A4F),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.auto_awesome_rounded,
                              color: FlutterFlowTheme.of(context).success,
                              size: 24.0,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Every action helps rebuild the planet. You\'ve restored 3 major habitats this week!',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Environmental Milestones',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.outfit(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    wrapWithModel(
                      model: _model.planetProgressCardModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: PlanetProgressCardWidget(
                        completed: true,
                        phase: 'Industrial Cleanup',
                        status: 'Completed · 2.4 tons removed',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.planetProgressCardModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: PlanetProgressCardWidget(
                        completed: false,
                        phase: 'Ocean Filtration',
                        status: 'In Progress · 65% operational',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.planetProgressCardModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: PlanetProgressCardWidget(
                        completed: false,
                        phase: 'Atmospheric Renewal',
                        status: 'Locked · Reach Level 15',
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Container(
                          width: 0.0,
                          height: 0.0,
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
    );
  }
}
