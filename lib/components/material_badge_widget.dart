import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'material_badge_model.dart';
export 'material_badge_model.dart';

class MaterialBadgeWidget extends StatefulWidget {
  const MaterialBadgeWidget({
    super.key,
    Color? tone,
    this.icon,
    String? label,
  })  : this.tone = tone ?? const Color(0x00000000),
        this.label = label ?? '';

  final Color tone;
  final Widget? icon;
  final String label;

  @override
  State<MaterialBadgeWidget> createState() => _MaterialBadgeWidgetState();
}

class _MaterialBadgeWidgetState extends State<MaterialBadgeWidget> {
  late MaterialBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaterialBadgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget!.tone,
          FlutterFlowTheme.of(context).success,
        ),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget!.icon!,
          Text(
            widget!.label,
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget!.tone,
                    FlutterFlowTheme.of(context).success,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(width: 4.0)),
      ),
    );
  }
}
