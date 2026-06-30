import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'news_card2_model.dart';
export 'news_card2_model.dart';

class NewsCard2Widget extends StatefulWidget {
  const NewsCard2Widget({
    super.key,
    String? desc,
    String? imgDesc,
    String? tag,
    String? title,
  })  : this.desc = desc ??
            'New autonomous fleets are mapping plastic hotspots in the Pacific.',
        this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/robotic%20boat%20cleaning%20ocean%20water',
        this.tag = tag ?? 'TECH',
        this.title = title ?? 'Ocean Cleaning Robots';

  final String desc;
  final String imgDesc;
  final String tag;
  final String title;

  @override
  State<NewsCard2Widget> createState() => _NewsCard2WidgetState();
}

class _NewsCard2WidgetState extends State<NewsCard2Widget> {
  late NewsCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsCard2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Container(
            width: 280.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(32.0),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  child: Container(
                    height: 140.0,
                    child: Stack(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      children: [
                        CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl: valueOrDefault<String>(
                            widget!.imgDesc,
                            'https://dimg.dreamflow.cloud/v1/image/robotic%20boat%20cleaning%20ocean%20water',
                          ),
                          height: 140.0,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 4.0,
                                      sigmaY: 4.0,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .onWarning53,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 4.0, 8.0, 4.0),
                                        child: Container(
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget!.tag,
                                              'TECH',
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                                  color: FlutterFlowTheme.of(
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
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'Ocean Cleaning Robots',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
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
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.desc,
                          'New autonomous fleets are mapping plastic hotspots in the Pacific.',
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
