import 'package:flutter/material.dart';

List<String> arr = [
  "assets/img1.png",
  "assets/img2.png",
  "assets/img3.png",
  "assets/img4.png",
  "assets/img5.png"
];
List<String> topSong = [
  "assets/img6.png",
  "assets/img7.png",
  "assets/img8.png",
  "assets/img9.png",
  "assets/img10.png"
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(128, 64, 105, 1),
          Color.fromRGBO(118, 64, 85, 1),
          Colors.black,
          Colors.black
        ], begin: Alignment.topCenter)),
        child: Stack(
          children: [
            Row(
              children: [
                ClipPath(
                  clipper: NotchClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.red],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: const Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.05,
                      left: mediaQueryData.size.width * 0.52),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/img.jpg"),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.17,
                  left: mediaQueryData.size.width * 0.05),
              child: const Text(
                "Hello Divyanshu ",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.215,
                  left: mediaQueryData.size.width * 0.05),
              child: const Text(
                "Find the best Song of 2023",
                style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.white54),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.26,
                  left: mediaQueryData.size.width * 0.05),
              child: Container(
                width: mediaQueryData.size.width * 0.89,
                height: mediaQueryData.size.height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: mediaQueryData.size.width * 0.1),
                      child: const Text(
                        "Looking for...",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: mediaQueryData.size.width * 0.25),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.35,
                        left: mediaQueryData.size.width * 0.05),
                    child: const Text(
                      "Popular Song",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.white),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.36,
                        left: mediaQueryData.size.width * 0.35),
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.white30),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.41),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String s in arr)
                      Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.02,
                            right: mediaQueryData.size.width * 0.02),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            width: mediaQueryData.size.width * 0.45,
                            height: mediaQueryData.size.height * 0.22,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  s,
                                  fit: BoxFit.fill,
                                ))),
                      )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.655,
                  left: mediaQueryData.size.width * 0.05),
              child: Row(
                children: [
                  const Text(
                    "Top Albums",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: mediaQueryData.size.width * 0.39,
                    height: 3,
                  ),
                  const Text(
                    "See All",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15,
                        color: Colors.white30),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.7),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String s in topSong)
                      Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.02,
                            right: mediaQueryData.size.width * 0.02),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            width: mediaQueryData.size.width * 0.35,
                            height: mediaQueryData.size.height * 0.15,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  s,
                                  fit: BoxFit.fill,
                                ))),
                      )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.89,
                  left: mediaQueryData.size.width * 0.05),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(20)),
                width: mediaQueryData.size.width * 0.9,
                height: mediaQueryData.size.height * 0.08,
                child:  const TabBar(tabs: [
                  Icon(Icons.home_outlined)
                ],

                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = size.height / 5.0; // Radius of the circular notch

    path.lineTo(0, size.width);
    path.lineTo(size.width, size.height);
    path.arcToPoint(
      Offset(0, size.height / 1.5),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
