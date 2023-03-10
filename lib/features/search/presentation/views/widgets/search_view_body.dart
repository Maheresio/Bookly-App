import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/newest_books_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          'Search for a book',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 20.h,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Your Book...',
            prefixIconColor: AppColors.kbuttonColor,
            alignLabelWithHint: true,
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            border: outLineInputBorder(),
            focusedBorder: outLineInputBorder(),
            filled: true,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const Expanded(
          child: NewestBooksListView(
            physics: BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    );
  }
}
