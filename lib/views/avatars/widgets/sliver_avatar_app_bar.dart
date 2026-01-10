import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:avatar_filter/widgets/base_widgets/icon_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SliverAvatarAppBar extends StatelessWidget {
  const SliverAvatarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textTheme = Theme.of(context).textTheme;

    final Widget backButton = BaseIconButton(
      icon: Assets.icons.backArrow,
      iconColor: colors.black,
      onTap: () => Navigator.of(context).pop(),
    );

    return SliverAppBar.large(
      snap: true,
      floating: true,
      toolbarHeight: 32,
      collapsedHeight: 32,
      expandedHeight: 32 + 12 + 42,
      backgroundColor: colors.whiteMain,
      leading: backButton,
      centerTitle: false,
      flexibleSpace:  FlexibleSpaceBar(
        titlePadding: const EdgeInsetsDirectional.only(
          top: 20,
          start: 20, 
          bottom: 16,
        ),
        centerTitle: false,
        expandedTitleScale: 1.0,
        title: Text(
          LocaleKeys.sliver_avatar_widget_title.tr(),
          style: textTheme.headlineMedium?.copyWith(
            color: colors.black,
          ),
        ),
      ),
      
      
    );
  }
}
