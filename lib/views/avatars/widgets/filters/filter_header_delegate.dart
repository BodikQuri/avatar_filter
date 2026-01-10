import 'package:flutter/material.dart';

class FiltersHeaderDelegate extends SliverPersistentHeaderDelegate {
  FiltersHeaderDelegate({required this.child});
  final Widget child;

  @override
  double get minExtent => 60.0; 
  @override
  double get maxExtent => 60.0; 

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(FiltersHeaderDelegate oldDelegate) => false;
}
