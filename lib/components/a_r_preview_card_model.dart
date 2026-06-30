import '/components/material_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_r_preview_card_widget.dart' show ARPreviewCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ARPreviewCardModel extends FlutterFlowModel<ARPreviewCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MaterialBadge.
  late MaterialBadgeModel materialBadgeModel;

  @override
  void initState(BuildContext context) {
    materialBadgeModel = createModel(context, () => MaterialBadgeModel());
  }

  @override
  void dispose() {
    materialBadgeModel.dispose();
  }
}
