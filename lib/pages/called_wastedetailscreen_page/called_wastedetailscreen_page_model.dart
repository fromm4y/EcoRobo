import '/components/information_section_widget.dart';
import '/components/waste_detail_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'called_wastedetailscreen_page_widget.dart'
    show CalledWastedetailscreenPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class CalledWastedetailscreenPageModel
    extends FlutterFlowModel<CalledWastedetailscreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WasteDetailCard.
  late WasteDetailCardModel wasteDetailCardModel;
  // Model for InformationSection.
  late InformationSectionModel informationSectionModel1;
  // Model for InformationSection.
  late InformationSectionModel informationSectionModel2;
  // Model for InformationSection.
  late InformationSectionModel informationSectionModel3;

  @override
  void initState(BuildContext context) {
    wasteDetailCardModel = createModel(context, () => WasteDetailCardModel());
    informationSectionModel1 =
        createModel(context, () => InformationSectionModel());
    informationSectionModel2 =
        createModel(context, () => InformationSectionModel());
    informationSectionModel3 =
        createModel(context, () => InformationSectionModel());
  }

  @override
  void dispose() {
    wasteDetailCardModel.dispose();
    informationSectionModel1.dispose();
    informationSectionModel2.dispose();
    informationSectionModel3.dispose();
  }
}
