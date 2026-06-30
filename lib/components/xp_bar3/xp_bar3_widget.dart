import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'xp_bar3_model.dart';
export 'xp_bar3_model.dart';

class XpBar3Widget extends StatefulWidget {
  const XpBar3Widget({
    super.key,
    String? currentXp,
    String? level,
    double? progress,
    String? totalXp,
  })  : this.currentXp = currentXp ?? '2,450',
        this.level = level ?? '14',
        this.progress = progress ?? 0.82,
        this.totalXp = totalXp ?? '3,000';

  final String currentXp;
  final String level;
  final double progress;
  final String totalXp;

  @override
  State<XpBar3Widget> createState() => _XpBar3WidgetState();
}

class _XpBar3WidgetState extends State<XpBar3Widget> {
  late XpBar3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XpBar3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                'Level ${widget!.level}',
                'Level 14',
              ),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                '${widget!.currentXp} / ${widget!.totalXp} XP',
                '2,450 / 3,000 XP',
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: valueOrDefault<double>(
            widget!.progress,
            0.82,
          ),
          lineHeight: 8.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: FlutterFlowTheme.of(context).primary,
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          barRadius: Radius.circular(9999.0),
          padding: EdgeInsets.zero,
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
