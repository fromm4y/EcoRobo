import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'planet_progress_card_model.dart';
export 'planet_progress_card_model.dart';

class PlanetProgressCardWidget extends StatefulWidget {
  const PlanetProgressCardWidget({
    super.key,
    bool? completed,
    String? phase,
    String? status,
  })  : this.completed = completed ?? true,
        this.phase = phase ?? 'Industrial Cleanup',
        this.status = status ?? 'Completed · 2.4 tons removed';

  final bool completed;
  final String phase;
  final String status;

  @override
  State<PlanetProgressCardWidget> createState() =>
      _PlanetProgressCardWidgetState();
}

class _PlanetProgressCardWidgetState extends State<PlanetProgressCardWidget> {
  late PlanetProgressCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanetProgressCardModel());
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.completed,
              true,
            )
                ? FlutterFlowTheme.of(context).success
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).success,
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget!.completed,
                      true,
                    )
                        ? FlutterFlowTheme.of(context).success
                        : Color(0x00000000),
                    FlutterFlowTheme.of(context).success,
                  ),
                  borderRadius: BorderRadius.circular(9999.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 16.0,
                  height: 16.0,
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
                          Icons.check_rounded,
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget!.completed,
                              true,
                            )
                                ? Color(0x00000000)
                                : FlutterFlowTheme.of(context).secondaryText,
                            Color(0x00000000),
                          ),
                          size: 16.0,
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
                                ? Color(0x00000000)
                                : FlutterFlowTheme.of(context).secondaryText,
                            Color(0x00000000),
                          ),
                          size: 16.0,
                        ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.phase,
                        'Industrial Cleanup',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              valueOrDefault<bool>(
                                widget!.completed,
                                true,
                              )
                                  ? FlutterFlowTheme.of(context).primaryText
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.status,
                        'Completed · 2.4 tons removed',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
