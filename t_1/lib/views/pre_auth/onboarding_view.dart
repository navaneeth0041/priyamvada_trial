import 'package:flutter/material.dart';
import 'package:t_1/widgets/onboarding/Builddot.dart';



class OnboardingScreenitems {
  String image;
  String title;
  String description;

  OnboardingScreenitems({required this.image, required this.title, required this.description});
}

List<OnboardingScreenitems> contents = [
  OnboardingScreenitems(
    title: 'Discover Realm',
    image: 'assets/icons/onb1.gif',
    description: "Explore a world of audio wonders with intuitive search, tailored recommendations, and curated lists."
  ),
  OnboardingScreenitems(
    title: 'Library Archive',
    image: 'assets/icons/onb2.gif',
    description: "Dive into your personalized library, where you can bookmark favorite sections and revisit them at your leisure."
  ),
  OnboardingScreenitems(
    title: 'Offline Audiobook ',
    image: 'assets/icons/onb3.gif',
    description: "Enhance your listening convenience by downloading audiobooks for offline enjoyment."
  ),
];





class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  int _currentIndex = 0;


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.05,
            right: screenWidth * 0.05,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: screenWidth * 0.04, 
                  color: Colors.black,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: screenHeight * 0.08),
                          Image.asset(
                            contents[index].image,
                            width: screenWidth*2.0,
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Text(
                            contents[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              color: Colors.black,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.02,
                                ),
                                child: Text(
                                  contents[index].description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.09, 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => BuildDot(currentIndex: _currentIndex, index: index),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}


