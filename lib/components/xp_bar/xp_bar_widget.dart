import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'xp_bar_model.dart';
export 'xp_bar_model.dart';

class XpBarWidget extends StatefulWidget {
  const XpBarWidget({
    super.key,
    String? currentXp,
    String? level,
    double? percent,
    String? totalXp,
  })  : this.currentXp = currentXp ?? '850',
        this.level = level ?? '12',
        this.percent = percent ?? 0.85,
        this.totalXp = totalXp ?? '1000';

  final String currentXp;
  final String level;
  final double percent;
  final String totalXp;

  @override
  State<XpBarWidget> createState() => _XpBarWidgetState();
}

class _XpBarWidgetState extends State<XpBarWidget> {
  late XpBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XpBarModel());
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
                'Level 12',
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
                '850 / 1000 XP',
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
            widget!.percent,
            0.85,
          ),
          lineHeight: 8.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: FlutterFlowTheme.of(context).success,
          backgroundColor: FlutterFlowTheme.of(context).surfaceVariant,
          barRadius: Radius.circular(9999.0),
          padding: EdgeInsets.zero,
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
