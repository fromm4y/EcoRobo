import '/components/achievement_card/achievement_card_widget.dart';
import '/components/button/button_widget.dart';
import '/components/stat_item/stat_item_widget.dart';
import '/components/xp_bar3/xp_bar3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for XpBar.
  late XpBar3Model xpBarModel;
  // Model for StatItem.
  late StatItemModel statItemModel1;
  // Model for StatItem.
  late StatItemModel statItemModel2;
  // Model for StatItem.
  late StatItemModel statItemModel3;
  // Model for AchievementCard.
  late AchievementCardModel achievementCardModel1;
  // Model for AchievementCard.
  late AchievementCardModel achievementCardModel2;
  // Model for AchievementCard.
  late AchievementCardModel achievementCardModel3;
  // Model for AchievementCard.
  late AchievementCardModel achievementCardModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    xpBarModel = createModel(context, () => XpBar3Model());
    statItemModel1 = createModel(context, () => StatItemModel());
    statItemModel2 = createModel(context, () => StatItemModel());
    statItemModel3 = createModel(context, () => StatItemModel());
    achievementCardModel1 = createModel(context, () => AchievementCardModel());
    achievementCardModel2 = createModel(context, () => AchievementCardModel());
    achievementCardModel3 = createModel(context, () => AchievementCardModel());
    achievementCardModel4 = createModel(context, () => AchievementCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    xpBarModel.dispose();
    statItemModel1.dispose();
    statItemModel2.dispose();
    statItemModel3.dispose();
    achievementCardModel1.dispose();
    achievementCardModel2.dispose();
    achievementCardModel3.dispose();
    achievementCardModel4.dispose();
    buttonModel.dispose();
  }
}
