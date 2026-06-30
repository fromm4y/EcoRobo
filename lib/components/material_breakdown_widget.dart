import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'material_breakdown_model.dart';
export 'material_breakdown_model.dart';

class MaterialBreakdownWidget extends StatefulWidget {
  const MaterialBreakdownWidget({
    super.key,
    String? name,
    String? percent,
    Color? tone,
  })  : this.name = name ?? 'PET Plastic',
        this.percent = percent ?? '75',
        this.tone = tone ?? const Color(0x00000000);

  final String name;
  final String percent;
  final Color tone;

  @override
  State<MaterialBreakdownWidget> createState() =>
      _MaterialBreakdownWidgetState();
}

class _MaterialBreakdownWidgetState extends State<MaterialBreakdownWidget> {
  late MaterialBreakdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaterialBreakdownModel());
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget!.name,
                'PET Plastic',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                '${widget!.percent}%',
                '75%',
              ),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      widget!.tone,
                      FlutterFlowTheme.of(context).primary,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: 0.0,
          lineHeight: 8.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: valueOrDefault<Color>(
            widget!.tone,
            FlutterFlowTheme.of(context).primary,
          ),
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          barRadius: Radius.circular(24.0),
          padding: EdgeInsets.zero,
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
