import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:avatar_filter/repositories/avatar/avatar_repository.dart';
import 'package:flutter/foundation.dart';

class AvatarService with ChangeNotifier, DiagnosticableTreeMixin {
  AvatarService({required AvatarRepository repository}) : _repository = repository {
    _loadAvatars();
  }

  final AvatarRepository _repository;

  AvatarModel? _selectedAvatar;
  List<AvatarModel> _avatars = [];


  List<AvatarModel> get avatars => _avatars;
  AvatarModel? get selectedAvatar => _selectedAvatar;

  bool loading = false;

  Future<void> _loadAvatars() async {
    if(loading) return;

    loading = true;
    notifyListeners();

    try {
      _avatars = await _repository.fetchAvatars();
    } catch (_) {
      _avatars = [];
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> refreshAvatars() async {
    await _loadAvatars();
  }

  void selectAvatar(AvatarModel avatar) {
    if(selectedAvatar == avatar) return;

    _selectedAvatar = avatar;
    notifyListeners();
  }

}
