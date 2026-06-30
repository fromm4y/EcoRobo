import '/components/planet_progress_card_widget.dart';
import '/components/recovery_bar_widget.dart';
import '/components/statistic_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'called_planetprogressscreen_page_widget.dart'
    show CalledPlanetprogressscreenPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalledPlanetprogressscreenPageModel
    extends FlutterFlowModel<CalledPlanetprogressscreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RecoveryBar.
  late RecoveryBarModel recoveryBarModel;
  // Model for StatisticCard.
  late StatisticCardModel statisticCardModel1;
  // Model for StatisticCard.
  late StatisticCardModel statisticCardModel2;
  // Model for StatisticCard.
  late StatisticCardModel statisticCardModel3;
  // Model for StatisticCard.
  late StatisticCardModel statisticCardModel4;
  // Model for PlanetProgressCard.
  late PlanetProgressCardModel planetProgressCardModel1;
  // Model for PlanetProgressCard.
  late PlanetProgressCardModel planetProgressCardModel2;
  // Model for PlanetProgressCard.
  late PlanetProgressCardModel planetProgressCardModel3;

  @override
  void initState(BuildContext context) {
    recoveryBarModel = createModel(context, () => RecoveryBarModel());
    statisticCardModel1 = createModel(context, () => StatisticCardModel());
    statisticCardModel2 = createModel(context, () => StatisticCardModel());
    statisticCardModel3 = createModel(context, () => StatisticCardModel());
    statisticCardModel4 = createModel(context, () => StatisticCardModel());
    planetProgressCardModel1 =
        createModel(context, () => PlanetProgressCardModel());
    planetProgressCardModel2 =
        createModel(context, () => PlanetProgressCardModel());
    planetProgressCardModel3 =
        createModel(context, () => PlanetProgressCardModel());
  }

  @override
  void dispose() {
    recoveryBarModel.dispose();
    statisticCardModel1.dispose();
    statisticCardModel2.dispose();
    statisticCardModel3.dispose();
    statisticCardModel4.dispose();
    planetProgressCardModel1.dispose();
    planetProgressCardModel2.dispose();
    planetProgressCardModel3.dispose();
  }
}
