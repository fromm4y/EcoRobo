import '/components/button/button_widget.dart';
import '/components/impact_badge/impact_badge_widget.dart';
import '/components/scan_stat/scan_stat_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'scan_camera_widget.dart' show ScanCameraWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScanCameraModel extends FlutterFlowModel<ScanCameraWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ImpactBadge.
  late ImpactBadgeModel impactBadgeModel1;
  // Model for ImpactBadge.
  late ImpactBadgeModel impactBadgeModel2;
  // Model for ScanStat.
  late ScanStatModel scanStatModel1;
  // Model for ScanStat.
  late ScanStatModel scanStatModel2;
  // Model for ScanStat.
  late ScanStatModel scanStatModel3;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    impactBadgeModel1 = createModel(context, () => ImpactBadgeModel());
    impactBadgeModel2 = createModel(context, () => ImpactBadgeModel());
    scanStatModel1 = createModel(context, () => ScanStatModel());
    scanStatModel2 = createModel(context, () => ScanStatModel());
    scanStatModel3 = createModel(context, () => ScanStatModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    impactBadgeModel1.dispose();
    impactBadgeModel2.dispose();
    scanStatModel1.dispose();
    scanStatModel2.dispose();
    scanStatModel3.dispose();
    buttonModel.dispose();
  }
}
