import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarksTab   extends StatelessWidget {
  const BookmarksTab  ({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenHieght / 25,left: screenWidth/30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "11 Bookmarks",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "Download all",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(decoration: TextDecoration.underline,fontWeight: FontWeight.w400),
                ),
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
                      decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth / 45,
                            right: screenWidth / 50,
                            top: screenHieght / 50,
                            bottom: screenHieght / 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                                Column(
                                  children: [
                                    Text("Chapter 1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w500,)),
                                    SizedBox(
                                      height: screenWidth / 60,
                                    ),
                                    Text("Adi Parva",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,fontSize: 18))
                                  ],
                                ),
                            Row(
                              children: [
                                Text("04:29:36",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: screenWidth / 25,
                                ),
                                const Icon(
                                  Icons.delete_outline,
                                  size: 25,
                                ),
                              ],
                            )
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