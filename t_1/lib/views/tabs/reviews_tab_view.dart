import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: screenHieght / 25, left: screenWidth / 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "4.0",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      width: screenWidth / 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          ratingWidget: RatingWidget(
                            full: const Icon(Icons.star, color: Colors.amber),
                            half: const Icon(Icons.star_half,
                                color: Colors.amber),
                            empty: const Icon(Icons.star_border,
                                color: Color.fromRGBO(62, 59, 59, 100)),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(
                          height: screenHieght / 70,
                        ),
                        Text(
                          "354 Reviews",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  "Add Review",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w300, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: screenHieght / 45,
            ),
            Expanded(
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: screenHieght / 65);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHieght / 9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth / 50,
                            right: screenWidth / 50,
                            top: screenHieght / 50,
                            bottom: screenHieght / 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.supervised_user_circle,
                              size: 35,
                            ),
                            SizedBox(
                              width: screenWidth / 35,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "GOVIND KUMAR (YOU)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    const Icon(Icons.delete)
                                  ],
                                ),
                                RatingBar(
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star,
                                        color: Colors.amber),
                                    half: const Icon(Icons.star_half,
                                        color: Colors.amber),
                                    empty: const Icon(Icons.star_border,
                                        color: Color.fromRGBO(62, 59, 59, 100)),
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                Text(
                                  "It has been a pleasure reading through this",
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
