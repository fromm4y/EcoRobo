import '/components/category_badge_widget.dart';
import '/components/waste_info_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'called_wasteresultscreen_page_widget.dart'
    show CalledWasteresultscreenPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalledWasteresultscreenPageModel
    extends FlutterFlowModel<CalledWasteresultscreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryBadge.
  late CategoryBadgeModel categoryBadgeModel;
  // Model for WasteInfoCard.
  late WasteInfoCardModel wasteInfoCardModel1;
  // Model for WasteInfoCard.
  late WasteInfoCardModel wasteInfoCardModel2;
  // Model for WasteInfoCard.
  late WasteInfoCardModel wasteInfoCardModel3;
  // Model for WasteInfoCard.
  late WasteInfoCardModel wasteInfoCardModel4;

  @override
  void initState(BuildContext context) {
    categoryBadgeModel = createModel(context, () => CategoryBadgeModel());
    wasteInfoCardModel1 = createModel(context, () => WasteInfoCardModel());
    wasteInfoCardModel2 = createModel(context, () => WasteInfoCardModel());
    wasteInfoCardModel3 = createModel(context, () => WasteInfoCardModel());
    wasteInfoCardModel4 = createModel(context, () => WasteInfoCardModel());
  }

  @override
  void dispose() {
    categoryBadgeModel.dispose();
    wasteInfoCardModel1.dispose();
    wasteInfoCardModel2.dispose();
    wasteInfoCardModel3.dispose();
    wasteInfoCardModel4.dispose();
  }
}
