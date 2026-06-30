import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'discovery_badge_model.dart';
export 'discovery_badge_model.dart';

class DiscoveryBadgeWidget extends StatefulWidget {
  const DiscoveryBadgeWidget({
    super.key,
    bool? completed,
    String? label,
  })  : this.completed = completed ?? true,
        this.label = label ?? 'Discovery Completed';

  final bool completed;
  final String label;

  @override
  State<DiscoveryBadgeWidget> createState() => _DiscoveryBadgeWidgetState();
}

class _DiscoveryBadgeWidgetState extends State<DiscoveryBadgeWidget> {
  late DiscoveryBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscoveryBadgeModel());
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
          valueOrDefault<bool>(
            widget!.completed,
            true,
          )
              ? Color(0x262D6A4F)
              : Color(0x00000000),
          Color(0x262D6A4F),
        ),
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 14.0,
                height: 14.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget!.completed,
                        true,
                      )
                          ? true
                          : false,
                      true,
                    ))
                      Icon(
                        Icons.check_circle_rounded,
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget!.completed,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).warning,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 14.0,
                      ),
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget!.completed,
                        true,
                      )
                          ? false
                          : true,
                      false,
                    ))
                      Icon(
                        Icons.hourglass_empty_rounded,
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget!.completed,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).warning,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Discovery Completed',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget!.completed,
                          true,
                        )
                            ? FlutterFlowTheme.of(context).success
                            : FlutterFlowTheme.of(context).warning,
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
