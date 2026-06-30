import '/components/news_card/news_card_widget.dart';
import '/components/progress_stat/progress_stat_widget.dart';
import '/components/xp_bar/xp_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_dashboard_widget.dart' show HomeDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDashboardModel extends FlutterFlowModel<HomeDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for XpBar.
  late XpBarModel xpBarModel;
  // Model for ProgressStat.
  late ProgressStatModel progressStatModel1;
  // Model for ProgressStat.
  late ProgressStatModel progressStatModel2;
  // Model for ProgressStat.
  late ProgressStatModel progressStatModel3;
  // Model for NewsCard.
  late NewsCardModel newsCardModel1;
  // Model for NewsCard.
  late NewsCardModel newsCardModel2;
  // Model for NewsCard.
  late NewsCardModel newsCardModel3;

  @override
  void initState(BuildContext context) {
    xpBarModel = createModel(context, () => XpBarModel());
    progressStatModel1 = createModel(context, () => ProgressStatModel());
    progressStatModel2 = createModel(context, () => ProgressStatModel());
    progressStatModel3 = createModel(context, () => ProgressStatModel());
    newsCardModel1 = createModel(context, () => NewsCardModel());
    newsCardModel2 = createModel(context, () => NewsCardModel());
    newsCardModel3 = createModel(context, () => NewsCardModel());
  }

  @override
  void dispose() {
    xpBarModel.dispose();
    progressStatModel1.dispose();
    progressStatModel2.dispose();
    progressStatModel3.dispose();
    newsCardModel1.dispose();
    newsCardModel2.dispose();
    newsCardModel3.dispose();
  }
}
