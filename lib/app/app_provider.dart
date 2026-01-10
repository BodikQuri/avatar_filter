import 'package:avatar_filter/repositories/avatar/avatar_repository.dart';
import 'package:avatar_filter/repositories/avatar/avatar_repository_mock.dart';
import 'package:avatar_filter/services/avatar/avatar_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AppProvider extends StatelessWidget {
  const AppProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider<AvatarRepository>(
      create: (context) => AvatarRepositoryMock(),
      child: ChangeNotifierProvider(
        create: (context) => AvatarService(
          repository: Provider.of<AvatarRepository>(context, listen: false),
        ),
        child: child),
    );
  }
}
