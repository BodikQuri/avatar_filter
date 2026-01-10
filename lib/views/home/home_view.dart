import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:avatar_filter/router/app_routes.dart';
import 'package:avatar_filter/services/avatar/avatar_service.dart';
import 'package:avatar_filter/utils/const.dart';
import 'package:avatar_filter/widgets/avatar/avatar_widget.dart';
import 'package:avatar_filter/widgets/base_widgets/primary_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedAvatar = context.select<AvatarService, AvatarModel?>((service) => service.selectedAvatar);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_view_title.tr()),
      ),
      extendBody: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: kDefaultAnimationDuration,
                child: selectedAvatar != null ? AvatarWidget(avatar: selectedAvatar, width: 224, height: 304,) : const AvatarWidget.empty(width: 224, height: 304,),
              ),
          
              const SizedBox(height: 60),
              PrimaryButton(
                text: LocaleKeys.home_view_button_title.tr(),
                onTap: () {
                  const AvatarsFiltersRoute().push(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
