import 'package:avatar_filter/enums/age_ranges.dart';
import 'package:avatar_filter/enums/gender.dart';
import 'package:avatar_filter/enums/poses.dart';
import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:flutter/material.dart';

class AvatarsFilterController with ChangeNotifier {
  AvatarsFilterController({required List<AvatarModel> allAvatars})
      : _allAvatars = allAvatars {
    _filteredAvatars = List.from(_allAvatars);
  }

  List<AvatarModel> _filteredAvatars = [];
  List<AvatarModel> get filteredAvatars => _filteredAvatars;

  List<Gender> selectedGenders = [];
  List<AgeRanges> selectedAgeRanges = [];
  List<Poses> selectedPoses = [];

  bool get hasActiveFilters =>
      selectedGenders.isNotEmpty ||
      selectedAgeRanges.isNotEmpty ||
      selectedPoses.isNotEmpty;

  final List<AvatarModel> _allAvatars;

  void selectGender(List<Gender> genders) {
    selectedGenders = List.from(genders);
    _applyFilters();
  }

  void selectAgeRanges(List<AgeRanges> ageRanges) {
    selectedAgeRanges = List.from(ageRanges);
    _applyFilters();
  }

  void selectPoses(List<Poses> poses) {
    selectedPoses = List.from(poses);
    _applyFilters();
  }

  void clearFilters() {
    selectedGenders.clear();
    selectedAgeRanges.clear();
    selectedPoses.clear();
    _applyFilters();
  }

  void _applyFilters() {
    _filteredAvatars = _allAvatars.where((avatar) {
      return (selectedGenders.isEmpty || selectedGenders.contains(avatar.gender)) &&
          (selectedAgeRanges.isEmpty || selectedAgeRanges.contains(AgeRanges.getFromAge(avatar.age ?? 18))) &&
          (selectedPoses.isEmpty || selectedPoses.contains(avatar.pose));
    }).toList();

    notifyListeners();
  }
}
