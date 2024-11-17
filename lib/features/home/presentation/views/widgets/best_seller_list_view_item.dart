import 'package:bookly/Features/home/data/models/book_model/book.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.books});

  final Book books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.rBookDetailsView, extra: books);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imageUrl: books.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(books.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(width: 3,),
                   Text(books.volumeInfo.authors![0],
                    style: Styles.textStyle14,),
                  const SizedBox(width: 3,),
                  Row(
                    children: [
                      Text('Free',
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        )
                        ,),
                      const Spacer(),
                       BookRating(
                         rating: books.volumeInfo.pageCount ?? 0,
                         count: books.volumeInfo.pageCount ?? 0,
                       ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

