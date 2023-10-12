import 'package:flutter/material.dart';
import 'package:music/Screens/HomePaage.dart';
import 'package:music/Screens/Setting.dart';
import 'package:music/Screens/library.dart';
import 'package:music/Screens/music.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
      selectedIndex=tabController.index;
      });
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return    DefaultTabController(
        length: 3,
        child: Scaffold(backgroundColor: Colors.black,

            bottomNavigationBar: Padding(
              padding:  EdgeInsets.only(
                  bottom: mediaQueryData.size.height*0.05),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(20)),
                width: mediaQueryData.size.width * 0.4,
                height: mediaQueryData.size.height * 0.07,
                child:   TabBar(
                  indicator: CustomTabIndicator(),
                  controller: tabController,
                  tabs:   [
                    Tab(icon: Icon(Icons.home, shadows: selectedIndex==0?[const BoxShadow(
                      color: Colors.pink, // Shadow color
                      offset: Offset(1, 2),
                      spreadRadius: 19,// Offset of the shadow
                      blurRadius: 30,
                    )]:[],)),
                    Tab(icon: Icon(Icons.library_music, shadows: selectedIndex==1?[const BoxShadow(
                      color: Colors.pink, // Shadow color
                      offset: Offset(0, 2),
                      spreadRadius: 19,// Offset of the shadow
                      blurRadius: 30,
                    )]:[],)),
                    Tab(icon: Icon(Icons.settings, shadows: selectedIndex==2?[
                    const BoxShadow(
                      color: Colors.pink, // Shadow color
                      offset: Offset(0, 2),
                      spreadRadius: 9,// Offset of the shadow
                      blurRadius: 20,
                    )
                    ]:[],)),
                  ],
                ),
              ),
            ),

          body:   TabBarView(
            controller: tabController,
            children: [
               HomePage(),
              Library(),
              Setting()
            ],
          ),
        ),

    );
  }
}


class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = Offset(
      offset.dx + configuration.size!.width / 2 - 20.0, // Adjust the horizontal position
      offset.dy , // Shift the indicator above the tabs
    ) & const Size(40.0, 4.0); // Adjust the size and shape of the indicator

    final Paint paint = Paint();
    paint.color = Colors.pink.shade500; // Indicator color

    canvas.drawRect(rect, paint);
  }
}