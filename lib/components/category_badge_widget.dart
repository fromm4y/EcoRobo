import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_badge_model.dart';
export 'category_badge_model.dart';

class CategoryBadgeWidget extends StatefulWidget {
  const CategoryBadgeWidget({
    super.key,
    Color? tone,
    this.icon,
    String? label,
  })  : this.tone = tone ?? const Color(0x00000000),
        this.label = label ?? 'Plastic';

  final Color tone;
  final Widget? icon;
  final String label;

  @override
  State<CategoryBadgeWidget> createState() => _CategoryBadgeWidgetState();
}

class _CategoryBadgeWidgetState extends State<CategoryBadgeWidget> {
  late CategoryBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryBadgeModel());
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
            valueOrDefault<String>(
              widget!.label,
              'Plastic',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget!.tone,
                    FlutterFlowTheme.of(context).success,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(width: 4.0)),
      ),
    );
  }
}
