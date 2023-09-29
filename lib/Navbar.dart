import 'package:flutter/material.dart';
import 'package:music/Screens/HomePaage.dart';
import 'package:music/Screens/Setting.dart';
import 'package:music/Screens/music.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
                height: mediaQueryData.size.height * 0.08,
                child:   TabBar(
                  indicator: CustomTabIndicator(),

                  tabs: const [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.settings_outlined)),
                    Tab(icon: Icon(Icons.music_note_outlined)),
                  ],
                ),
              ),
            ),

          body: const TabBarView(
            children: [
               HomePage(),
              Setting(),
              Music()
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
    paint.color = Colors.blue; // Indicator color

    canvas.drawRect(rect, paint);
  }
}