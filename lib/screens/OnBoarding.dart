import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../PageModel.dart';
import 'home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final pageIndexNotifier = ValueNotifier<int>(0);

  List<PageModel> pages;

  void _add_pages() {
    pages.add(PageModel("assets/images/bg.jpg", "Welcome",
        "1-m happy to see here in my small application", Icons.add_alarm));
    pages.add(PageModel("assets/images/2.jpg", "ODAY",
        "2- im happy to see here in my small application", Icons.face));
    pages.add(PageModel("assets/images/3.jpg", "New App",
        "3- im happy to see here in my small application", Icons.login));
    pages.add(PageModel("assets/images/4.jpg", "Thanks",
        "4- im happy to see here in my small application", Icons.alarm_off));
  }

  @override
  Widget build(BuildContext context) {
    pages = List<PageModel>();

    _add_pages();

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -100),
                        child: Icon(
                          pages[index].icon,
                          size: 120.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          pages[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          pages[index].desc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            onPageChanged: (index) => pageIndexNotifier.value = index,
            itemCount: pages.length,
          ),
          Align(
            alignment: Alignment.center,
            child: Transform.translate(
              offset: Offset(0, 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: _DrawPageIndicator(pages.length),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.red.shade600,
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              _update_screen();
                              return HomeScreen();
                            },
                          ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _DrawPageIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) =>
          Circle(
            size: 8.0,
            color: Colors.grey,
          ),
      highlightedBuilder: (animationController, index) =>
          ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 8.0,
              color: Colors.red,
            ),
          ),
    );
  }

  void _update_screen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);


  }

}
