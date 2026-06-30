import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'xp_bar2_model.dart';
export 'xp_bar2_model.dart';

class XpBar2Widget extends StatefulWidget {
  const XpBar2Widget({
    super.key,
    String? currentXp,
    String? level,
    double? progress,
    String? totalXp,
  })  : this.currentXp = currentXp ?? '2,450',
        this.level = level ?? '14',
        this.progress = progress ?? 245.0,
        this.totalXp = totalXp ?? '3,000';

  final String currentXp;
  final String level;
  final double progress;
  final String totalXp;

  @override
  State<XpBar2Widget> createState() => _XpBar2WidgetState();
}

class _XpBar2WidgetState extends State<XpBar2Widget> {
  late XpBar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XpBar2Model());
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ClipRRect(
          borderRadius: BorderRadius.circular(9999.0),
          child: Container(
            height: 10.0,
            decoration: BoxDecoration(
              color: Color(0xFF2D3E2E),
              borderRadius: BorderRadius.circular(9999.0),
              shape: BoxShape.rectangle,
            ),
            child: Container(
              width: valueOrDefault<double>(
                widget!.progress,
                245.0,
              ),
              height: 10.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    color: Color(0x444CAF50),
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
                gradient: LinearGradient(
                  colors: [Colors.green, Color(0xFF81C784)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(-1.0, 0.0),
                  end: AlignmentDirectional(1.0, 0),
                ),
                borderRadius: BorderRadius.circular(9999.0),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
