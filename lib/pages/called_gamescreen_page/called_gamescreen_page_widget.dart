import '/components/game_preview_card_widget.dart';
import '/components/objective_item_widget.dart';
import '/components/score_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'called_gamescreen_page_model.dart';
export 'called_gamescreen_page_model.dart';

/// Create a new screen called "GameScreen" for the EcoRobo app.
///
/// IMPORTANT:
/// Do not modify existing screens.
///
/// This screen represents the entrance to the environmental game.
///
/// Game concept:
///
/// A 2D endless runner game inspired by Subway Surfers.
///
/// The player controls a recycling robot that runs through polluted
/// environments and collects recyclable materials.
/// Design:
///
/// Style:
///
/// - Pixel art inspired
/// - Green and futuristic
/// - Environmental game aesthetic
/// Screen structure:
/// Header:
///
/// Title:
///
/// "EcoRobo Adventure"
/// Main game preview card:
///
/// Include:
///
/// - Recycling robot illustration placeholder
/// - Polluted city background
/// - Green transformation elements
/// Game information:
/// Score:
///
/// 0
/// High Score:
///
/// 0
/// Recycling Points:
///
/// 0
/// Buttons:
/// Primary:
///
/// "Play Game"
/// Secondary:
///
/// "How to Play"
/// Add section:
///
/// "Objectives"
/// Cards:
///
/// Collect recyclable materials
///
/// Clean polluted areas
///
/// Restore the planet
/// Create reusable components:
///
/// - GamePreviewCard
/// - ScoreCard
/// - GameButton
/// Prepare this screen for future GDevelop integration.
class CalledGamescreenPageWidget extends StatefulWidget {
  const CalledGamescreenPageWidget({super.key});

  static String routeName = 'CalledGamescreenPage';
  static String routePath = '/calledGamescreenPage';

  @override
  State<CalledGamescreenPageWidget> createState() =>
      _CalledGamescreenPageWidgetState();
}

class _CalledGamescreenPageWidgetState
    extends State<CalledGamescreenPageWidget> {
  late CalledGamescreenPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalledGamescreenPageModel());
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
                                  'EcoRobo Adventure',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                Text(
                                  'World 1: Neo-Trash City',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                Icons.settings_rounded,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    wrapWithModel(
                      model: _model.gamePreviewCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: GamePreviewCardWidget(
                        title: 'Ready to Recycle?',
                        subtitle: 'Run, jump, and save the planet!',
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.scoreCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ScoreCardWidget(
                              tone: FlutterFlowTheme.of(context).warning,
                              icon: Icon(
                                Icons.help,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              label: 'High Score',
                              value: '24,500',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.scoreCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ScoreCardWidget(
                              tone: FlutterFlowTheme.of(context).success,
                              icon: Icon(
                                Icons.help,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              label: 'Total Points',
                              value: '1,280',
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Current Objectives',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            wrapWithModel(
                              model: _model.objectiveItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ObjectiveItemWidget(
                                icon: Icon(
                                  Icons.inventory_2_rounded,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 18.0,
                                ),
                                title: 'Collect 500 plastic bottles',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.objectiveItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ObjectiveItemWidget(
                                icon: Icon(
                                  Icons.cleaning_services_rounded,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 18.0,
                                ),
                                title: 'Clean 3 polluted zones',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.objectiveItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ObjectiveItemWidget(
                                icon: Icon(
                                  Icons.park_rounded,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 18.0,
                                ),
                                title: 'Restore the central park',
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Container(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'v1.0.4 - GDevelop Engine Ready',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).accent3,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
