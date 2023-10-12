import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height * 0.91,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(128, 64, 105, 1),
        Color.fromRGBO(118, 64, 85, 1),
        Colors.black,
        Colors.black
      ], begin: Alignment.topCenter)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.09,
                left: mediaQueryData.size.width * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/pxfuel.jpg"),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: mediaQueryData.size.width * 0.05),
                  child: const Text(
                    "Your Library",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: mediaQueryData.size.width * 0.1),
                  child: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: mediaQueryData.size.width * 0.08),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.18,
                left: mediaQueryData.size.width * 0.1),
            child: const Text(
              "Playlist",
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.24,
                right: mediaQueryData.size.width*0.1
              ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: mediaQueryData.size.width*0.1),
                    child: const Text(
                      "Recents",
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ),
                  const Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  )
                ],
              )),
          Padding(
            padding:   EdgeInsets.only(top: mediaQueryData.size.height*0.3, left: mediaQueryData.size.width*0.06),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: mediaQueryData.size.width*0.2,
                      height: mediaQueryData.size.height*0.1,
                      color: Colors.pink,
                      child: const Icon(Icons.favorite, color: Colors.white,),
                    ),
                    Padding(
                      padding:   EdgeInsets. only(left: mediaQueryData.size.height*0.01),
                      child:     Column(
                        children: [
                          Text("Liked Songs", style: TextStyle(color: Colors.white, fontSize: 18),),
                          Padding(
                            padding: EdgeInsets.only(left: mediaQueryData.size.width*0.06),
                            child: Text("Playlist 4 Song", style: TextStyle(color: Colors.white70, fontSize: 16),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:   EdgeInsets.only(top: mediaQueryData.size.height*0.03),
                  child: Row(
                    children: [
                      Container(
                        height: mediaQueryData.size.height*0.1,
                        width: mediaQueryData.size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Icon(Icons.add,color: Colors.white, size: 40,),
                      ),
                      SizedBox(width: mediaQueryData.size.width*0.05,),
                      Text("Add Artists", style: TextStyle(fontSize:18, color: Colors.white),)
                    ],
                  ),
                ),
                Padding(
                  padding:   EdgeInsets.only(top: mediaQueryData.size.height*0.03),
                  child: Row(
                    children: [
                      Container(
                        height: mediaQueryData.size.height*0.1,
                        width: mediaQueryData.size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,

                        ),
                        child: const Icon(Icons.add,color: Colors.white, size: 40,),
                      ),
                      SizedBox(width: mediaQueryData.size.width*0.05,),
                      Text("Add podcasts & shows", style: TextStyle(fontSize:18, color: Colors.white),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
