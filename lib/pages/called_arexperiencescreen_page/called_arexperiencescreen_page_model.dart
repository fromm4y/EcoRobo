import '/components/a_r_preview_card_widget.dart';
import '/components/action_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'called_arexperiencescreen_page_widget.dart'
    show CalledArexperiencescreenPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalledArexperiencescreenPageModel
    extends FlutterFlowModel<CalledArexperiencescreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ARPreviewCard.
  late ARPreviewCardModel aRPreviewCardModel;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel1;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel2;

  @override
  void initState(BuildContext context) {
    aRPreviewCardModel = createModel(context, () => ARPreviewCardModel());
    actionButtonModel1 = createModel(context, () => ActionButtonModel());
    actionButtonModel2 = createModel(context, () => ActionButtonModel());
  }

  @override
  void dispose() {
    aRPreviewCardModel.dispose();
    actionButtonModel1.dispose();
    actionButtonModel2.dispose();
  }
}
