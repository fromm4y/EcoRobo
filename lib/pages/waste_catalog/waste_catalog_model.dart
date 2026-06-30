import '/components/news_card2/news_card2_widget.dart';
import '/components/waste_card/waste_card_widget.dart';
import '/components/xp_bar2/xp_bar2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'waste_catalog_widget.dart' show WasteCatalogWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WasteCatalogModel extends FlutterFlowModel<WasteCatalogWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for XpBar.
  late XpBar2Model xpBarModel;
  // Model for NewsCard.
  late NewsCard2Model newsCardModel1;
  // Model for NewsCard.
  late NewsCard2Model newsCardModel2;
  // Model for NewsCard.
  late NewsCard2Model newsCardModel3;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel1;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel2;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel3;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel4;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel5;
  // Model for WasteCard.
  late WasteCardModel wasteCardModel6;

  @override
  void initState(BuildContext context) {
    xpBarModel = createModel(context, () => XpBar2Model());
    newsCardModel1 = createModel(context, () => NewsCard2Model());
    newsCardModel2 = createModel(context, () => NewsCard2Model());
    newsCardModel3 = createModel(context, () => NewsCard2Model());
    wasteCardModel1 = createModel(context, () => WasteCardModel());
    wasteCardModel2 = createModel(context, () => WasteCardModel());
    wasteCardModel3 = createModel(context, () => WasteCardModel());
    wasteCardModel4 = createModel(context, () => WasteCardModel());
    wasteCardModel5 = createModel(context, () => WasteCardModel());
    wasteCardModel6 = createModel(context, () => WasteCardModel());
  }

  @override
  void dispose() {
    xpBarModel.dispose();
    newsCardModel1.dispose();
    newsCardModel2.dispose();
    newsCardModel3.dispose();
    wasteCardModel1.dispose();
    wasteCardModel2.dispose();
    wasteCardModel3.dispose();
    wasteCardModel4.dispose();
    wasteCardModel5.dispose();
    wasteCardModel6.dispose();
  }
}
