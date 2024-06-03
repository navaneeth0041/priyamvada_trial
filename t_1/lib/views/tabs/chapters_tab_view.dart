import 'package:flutter/material.dart';

class ChaptersTab extends StatefulWidget {
  const ChaptersTab({super.key});

  @override
  State<ChaptersTab> createState() => _ChaptersTabState();
}

double provideLength(BuildContext context1){ // this can be called in other pages
  return MediaQuery.of(context1).size.height;
}
class _ChaptersTabState extends State<ChaptersTab> {
  @override
  Widget build(BuildContext context) {

    double provideLength(){ // this cannot be called in other pages
  return MediaQuery.of(context).size.height;
}

    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenHieght / 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "18 Chapters",
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
                scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
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
                            left: screenWidth / 50,
                            right: screenWidth / 50,
                            top: screenHieght / 50,
                            bottom: screenHieght / 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.play_arrow,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: screenWidth / 40,
                                ),
                                Column(
                                  children: [
                                    Text("Chapter $index",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: screenWidth / 60,
                                    ),
                                    Text("$screenHieght",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600))
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("3hrs 41 min",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: screenWidth / 25,
                                ),
                                const Icon(
                                  Icons.download_for_offline_outlined,
                                  size: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
