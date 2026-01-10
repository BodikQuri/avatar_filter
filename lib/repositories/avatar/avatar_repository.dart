import 'package:avatar_filter/models/avatar/avatar_model.dart';

abstract class AvatarRepository {
  Future<List<AvatarModel>> fetchAvatars();
}
