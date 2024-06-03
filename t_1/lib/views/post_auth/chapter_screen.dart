import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_1/views/tabs/bookmarks_tab_view.dart';
import 'package:t_1/views/tabs/notes_tab_view.dart';
import 'package:t_1/views/tabs/reviews_tab_view.dart';
import 'package:t_1/views/tabs/chapters_tab_view.dart';
import 'package:t_1/widgets/gnav.dart';
import 'package:t_1/widgets/rounded_button.dart';

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({super.key});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  bool heartClicked = false;
  final GlobalKey _chaptersTabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    void clickHeart() {
      setState(() {
        heartClicked = !heartClicked;
      });
    }

  ChaptersTab chaptersTab=new ChaptersTab();

  double Chapterlength= provideLength(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mahabharata",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => (Navigator.pop(context)),
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  clickHeart();
                },
                icon: heartClicked
                    ? const Icon(CupertinoIcons.heart)
                    : const Icon(CupertinoIcons.heart_fill))
          ],
        ),
        body: Padding(
          padding:
              EdgeInsets.only(left: screenWidth / 18, right: screenWidth / 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHieght / 30, bottom: screenHieght / 50),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset("assets/icons/mahabharata.png"),
                        SizedBox(
                          height: screenHieght / 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "04 hr 49 min",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            SizedBox(
                              width: screenWidth / 60,
                            ),
                            Container(
                                width: screenWidth / 70,
                                height: screenHieght / 70,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle)),
                            SizedBox(
                              width: screenWidth / 60,
                            ),
                            Text(
                              "1.2k views",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            SizedBox(
                              width: screenWidth / 60,
                            ),
                            Container(
                                width: screenWidth / 70,
                                height: screenHieght / 70,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle)),
                            SizedBox(
                              width: screenWidth / 60,
                            ),
                            Container(
                              width: screenWidth * 0.1,
                              height: screenHieght * 0.02,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.007,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    size: screenWidth * 0.035,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.012,
                                  ),
                                  Text("4.4",
                                      style: TextStyle(
                                          fontSize: screenHieght * 0.012,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255))),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHieght / 60,
                        ),
                        const CircularButton(text: "Start playing chapter 1 ")
                      ],
                    ),
                  ),
                ),
                Text(
                  "Mahabharata revolves around the belief in one's sacred duty called dharma.  In this epic, life is depicted as a long journey where immorality is  put down by justice, and morality triumphs in the end. It is the  responsibility  the individual to follow the right path, since life in  the world is short lived.",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall, // have to add font size in the headline small thingy
                ),
                SizedBox(
                  height: screenHieght / 25,
                ),
                const TabBar(
                    padding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: Text("Chapters"),
                      ),
                      Tab(
                        child: Text("Reviews"),
                      ),
                      Tab(
                        child: Text("Notes"),
                      ),
                      Tab(
                        child: Text("Bookmarks"),
                      )
                    ]),
                SizedBox(
                  height: 2187 , // ( screenHieght/9 + screenHieght+65 )* lenght of listView
                  child: const TabBarView(children: [
                    Center(
                      child: ChaptersTab(),
                    ),
                    Center(
                      child: ReviewsTab(),
                    ),
                    Center(
                      child: NotesTab(),
                    ),
                    Center(
                      child: BookmarksTab(),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
        // this is not necessary do remove this while pushing to gitlab
        bottomNavigationBar: const CustomGNav(),
      ),
    );
  }
}
