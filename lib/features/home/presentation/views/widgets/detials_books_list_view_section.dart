import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsBooksListViewSection extends StatelessWidget {
  const DetailsBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('You can also like',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}