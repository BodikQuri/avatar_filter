import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:avatar_filter/services/avatar/avatar_service.dart';
import 'package:avatar_filter/views/avatars/controller/avatars_filter_controller.dart';
import 'package:avatar_filter/views/avatars/widgets/filters/list_view.dart';
import 'package:avatar_filter/views/avatars/widgets/sliver_avatar_app_bar.dart';
import 'package:avatar_filter/widgets/avatar/avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/empty_filters.dart';
import 'widgets/filters/filter_header_delegate.dart';

class AvatarsView extends StatelessWidget {
  const AvatarsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AvatarsFilterController>(
      create: (context) => AvatarsFilterController(
        allAvatars: context.read<AvatarService>().avatars,
      ),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: CustomScrollView(
            
            slivers: [
              const SliverAvatarAppBar(),
              SliverPersistentHeader(
                pinned: true,
                delegate: FiltersHeaderDelegate(child: const FiltersListView()),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                sliver: Builder(
                  builder: (context) {
                    final controller = context.watch<AvatarsFilterController>();
                    final selectedAvatar = context.select<AvatarService, AvatarModel?>(
                      (service) => service.selectedAvatar,
                    );

                    if (controller.filteredAvatars.isEmpty) {
                      return const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: EmptyFiltersWidget(),
                        ),
                      );
                    }

                    return SliverGrid.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 112 / 152,
                      ),
                      itemCount: controller.filteredAvatars.length,
                      itemBuilder: (context, index) {
                        return AvatarWidget(
                          avatar: controller.filteredAvatars[index],
                          isSelected: selectedAvatar == controller.filteredAvatars[index],
                          onTap: () => context.read<AvatarService>().selectAvatar(controller.filteredAvatars[index]),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
