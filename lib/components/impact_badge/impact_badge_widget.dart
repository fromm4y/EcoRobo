import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'impact_badge_model.dart';
export 'impact_badge_model.dart';

class ImpactBadgeWidget extends StatefulWidget {
  const ImpactBadgeWidget({
    super.key,
    Color? bg,
    Color? color,
    this.icon,
    String? label,
  })  : this.bg = bg ?? const Color(0x00000000),
        this.color = color ?? const Color(0x00000000),
        this.label = label ?? 'Recyclable';

  final Color bg;
  final Color color;
  final Widget? icon;
  final String label;

  @override
  State<ImpactBadgeWidget> createState() => _ImpactBadgeWidgetState();
}

class _ImpactBadgeWidgetState extends State<ImpactBadgeWidget> {
  late ImpactBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImpactBadgeModel());
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
          widget!.bg,
          FlutterFlowTheme.of(context).success15,
        ),
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget!.icon!,
              Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Recyclable',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        widget!.color,
                        FlutterFlowTheme.of(context).success,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        ),
      ),
    );
  }
}
