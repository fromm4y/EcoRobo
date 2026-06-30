import '/components/discovery_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'waste_detail_card_widget.dart' show WasteDetailCardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WasteDetailCardModel extends FlutterFlowModel<WasteDetailCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for DiscoveryBadge.
  late DiscoveryBadgeModel discoveryBadgeModel;

  @override
  void initState(BuildContext context) {
    discoveryBadgeModel = createModel(context, () => DiscoveryBadgeModel());
  }

  @override
  void dispose() {
    discoveryBadgeModel.dispose();
  }
}
