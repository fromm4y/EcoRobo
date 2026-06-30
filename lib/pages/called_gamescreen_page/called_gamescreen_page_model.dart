import '/components/game_preview_card_widget.dart';
import '/components/objective_item_widget.dart';
import '/components/score_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'called_gamescreen_page_widget.dart' show CalledGamescreenPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalledGamescreenPageModel
    extends FlutterFlowModel<CalledGamescreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GamePreviewCard.
  late GamePreviewCardModel gamePreviewCardModel;
  // Model for ScoreCard.
  late ScoreCardModel scoreCardModel1;
  // Model for ScoreCard.
  late ScoreCardModel scoreCardModel2;
  // Model for ObjectiveItem.
  late ObjectiveItemModel objectiveItemModel1;
  // Model for ObjectiveItem.
  late ObjectiveItemModel objectiveItemModel2;
  // Model for ObjectiveItem.
  late ObjectiveItemModel objectiveItemModel3;

  @override
  void initState(BuildContext context) {
    gamePreviewCardModel = createModel(context, () => GamePreviewCardModel());
    scoreCardModel1 = createModel(context, () => ScoreCardModel());
    scoreCardModel2 = createModel(context, () => ScoreCardModel());
    objectiveItemModel1 = createModel(context, () => ObjectiveItemModel());
    objectiveItemModel2 = createModel(context, () => ObjectiveItemModel());
    objectiveItemModel3 = createModel(context, () => ObjectiveItemModel());
  }

  @override
  void dispose() {
    gamePreviewCardModel.dispose();
    scoreCardModel1.dispose();
    scoreCardModel2.dispose();
    objectiveItemModel1.dispose();
    objectiveItemModel2.dispose();
    objectiveItemModel3.dispose();
  }
}
