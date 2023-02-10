import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_list_view_item.dart';

class SimilarBookslistView extends StatelessWidget {
  const SimilarBookslistView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200.h,
      width: double.infinity,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const FeaturedListViewItem(),
        separatorBuilder: (context, index) => SizedBox(
          width: 12.w,
        ),
      ),
    );
  }
}