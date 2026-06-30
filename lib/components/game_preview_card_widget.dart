import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'game_preview_card_model.dart';
export 'game_preview_card_model.dart';

class GamePreviewCardWidget extends StatefulWidget {
  const GamePreviewCardWidget({
    super.key,
    String? title,
    String? subtitle,
  })  : this.title = title ?? 'Ready to Recycle?',
        this.subtitle = subtitle ?? 'Run, jump, and save the planet!';

  final String title;
  final String subtitle;

  @override
  State<GamePreviewCardWidget> createState() => _GamePreviewCardWidgetState();
}

class _GamePreviewCardWidgetState extends State<GamePreviewCardWidget> {
  late GamePreviewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GamePreviewCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(32.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0x4D2D6A4F),
            width: 2.0,
          ),
        ),
        child: Container(
          height: 240.0,
          child: Stack(
            alignment: AlignmentDirectional(-1.0, -1.0),
            children: [
              CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 0),
                fadeOutDuration: Duration(milliseconds: 0),
                imageUrl:
                    'https://dimg.dreamflow.cloud/v1/image/pixel%20art%20polluted%20city%20skyline%20transitioning%20into%20a%20lush%20green%20forest',
                height: 240.0,
                fit: BoxFit.cover,
                alignment: Alignment(0.0, 0.0),
              ),
              Container(
                height: 240.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xCC000000), Colors.transparent],
                    stops: [0.0, 0.6],
                    begin: AlignmentDirectional(0.0, 1.0),
                    end: AlignmentDirectional(0, -1.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Container(
                      child: Lottie.network(
                        'https://dimg.dreamflow.cloud/v1/lottie/pixel+art+recycling+robot+running+animation',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.title,
                              'Ready to Recycle?',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.outfit(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget!.subtitle,
                              'Run, jump, and save the planet!',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xE6FFFFFF),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
