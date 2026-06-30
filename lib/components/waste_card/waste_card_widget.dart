import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'waste_card_model.dart';
export 'waste_card_model.dart';

class WasteCardWidget extends StatefulWidget {
  const WasteCardWidget({
    super.key,
    String? decomposition,
    String? imgDesc,
    String? impact,
    String? name,
    String? status,
    bool? discovered,
  })  : this.decomposition = decomposition ?? '450 years',
        this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/crushed%20plastic%20water%20bottle',
        this.impact = impact ?? 'High',
        this.name = name ?? 'Plastic PET',
        this.status = status ?? 'Discovered',
        this.discovered = discovered ?? true;

  final String decomposition;
  final String imgDesc;
  final String impact;
  final String name;
  final String status;
  final bool discovered;

  @override
  State<WasteCardWidget> createState() => _WasteCardWidgetState();
}

class _WasteCardWidgetState extends State<WasteCardWidget> {
  late WasteCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WasteCardModel());
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
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    children: [
                      CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 0),
                        fadeOutDuration: Duration(milliseconds: 0),
                        imageUrl: valueOrDefault<String>(
                          widget!.imgDesc,
                          'https://dimg.dreamflow.cloud/v1/image/crushed%20plastic%20water%20bottle',
                        ),
                        height: 120.0,
                        fit: BoxFit.cover,
                        alignment: Alignment(0.0, 0.0),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 4.0,
                                    sigmaY: 4.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .onWarning40,
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 8.0, 4.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 14.0,
                                              height: 14.0,
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  if (valueOrDefault<bool>(
                                                    valueOrDefault<bool>(
                                                      widget!.discovered,
                                                      true,
                                                    )
                                                        ? true
                                                        : false,
                                                    true,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .check_circle_rounded,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        valueOrDefault<bool>(
                                                          widget!.discovered,
                                                          true,
                                                        )
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .success
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .success,
                                                      ),
                                                      size: 14.0,
                                                    ),
                                                  if (valueOrDefault<bool>(
                                                    valueOrDefault<bool>(
                                                      widget!.discovered,
                                                      true,
                                                    )
                                                        ? false
                                                        : true,
                                                    false,
                                                  ))
                                                    Icon(
                                                      Icons.lock_rounded,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        valueOrDefault<bool>(
                                                          widget!.discovered,
                                                          true,
                                                        )
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .success
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .success,
                                                      ),
                                                      size: 14.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                valueOrDefault<bool>(
                                                  widget!.discovered,
                                                  true,
                                                )
                                                    ? 'Discovered'
                                                    : 'Locked',
                                                'Discovered',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .onPrimary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.name,
                      'Plastic PET',
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.outfit(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.status,
                      'Discovered',
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
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget!.discovered,
                              true,
                            )
                                ? FlutterFlowTheme.of(context).success
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).success,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  if (valueOrDefault<bool>(
                    widget!.discovered,
                    true,
                  ))
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 4.0),
                            child: Container(
                              child: Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 0.0,
                                endIndent: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Decomposition',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              Text(
                                valueOrDefault<String>(
                                  widget!.decomposition,
                                  '450 years',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Impact',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              Text(
                                valueOrDefault<String>(
                                  widget!.impact,
                                  'High',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
