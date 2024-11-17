
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book.dart';
import 'custom_book_details_app_bar.dart';
import 'details_books_section.dart';
import 'detials_books_list_view_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        // عشان الريسبونسف اذا تغير الحجم في الشاشه
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                DetailsBookSection(
                  book: book,
                ),
                const Flexible(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const DetailsBooksListViewSection(),
              ],
            ),
          ) ,
        ),
      ],
    );
  }
}







