import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recovery_bar_model.dart';
export 'recovery_bar_model.dart';

class RecoveryBarWidget extends StatefulWidget {
  const RecoveryBarWidget({
    super.key,
    String? label,
    String? percentage,
  })  : this.label = label ?? 'Planet Recovery',
        this.percentage = percentage ?? '65';

  final String label;
  final String percentage;

  @override
  State<RecoveryBarWidget> createState() => _RecoveryBarWidgetState();
}

class _RecoveryBarWidgetState extends State<RecoveryBarWidget> {
  late RecoveryBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecoveryBarModel());
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
                widget!.label,
                'Planet Recovery',
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                '${widget!.percentage}%',
                '65%',
              ),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primary,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(9999.0),
          child: Container(
            height: 12.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999.0),
              shape: BoxShape.rectangle,
            ),
            child: Container(
              height: 12.0,
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                  borderRadius: BorderRadius.circular(9999.0),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
