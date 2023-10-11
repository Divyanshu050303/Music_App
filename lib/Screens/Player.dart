import 'package:flutter/material.dart';
import 'package:music/Screens/HomePaage.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double _volume = 0.5;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mediaQueryData.size.height,
        width: mediaQueryData.size.width,
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
                  top: mediaQueryData.size.height * 0.06,
                  left: mediaQueryData.size.width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      DefaultTabController.of(context).animateTo(0);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: mediaQueryData.size.width * 0.04),
                    child: GestureDetector(onTap:(){
                      PopupMenuButton(
                        icon: Icon(Icons.more_vert_outlined, color: Colors.white,size: 26,),
                          elevation: 1,
                          padding: const EdgeInsets.only(bottom: 5),
                          itemBuilder: (context)=>[
                        const PopupMenuItem(
                            child: Text("Privacy & Security",)
                        ),
                        const PopupMenuItem(
                            child: Text("Theme")
                        ),
                        const PopupMenuItem(
                            child: Text("Language")
                        ),
                        const PopupMenuItem(
                            child: Text("User Agreement")
                        ),
                      ],
                      );

                    },child: const Icon(Icons.more_vert_outlined, color: Colors.white,size: 26,)),


                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQueryData.size.height * 0.18,
                  left: mediaQueryData.size.width * 0.1,
                  right: mediaQueryData.size.width * 0.1),
              child: Container(
                width: mediaQueryData.size.width * 0.8,
                height: mediaQueryData.size.height * 0.4,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(128, 64, 105, 1),
                          blurRadius: 19,
                          offset: Offset(0, 3),
                          spreadRadius: 4),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(850)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(850),
                    child: Image.asset(
                      "assets/sing.jpeg",
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 100,
                startAngle: 0,
                endAngle: 180,
                showLabels: false,
                showTicks: false,
                radiusFactor: 0.94,
                centerY: 0.41,
                axisLineStyle: const AxisLineStyle(
                    cornerStyle: CornerStyle.bothFlat,
                    color: Color.fromRGBO(128, 64, 105, 1),
                    thickness: 12),
                pointers: <GaugePointer>[
                  RangePointer(
                    value: _volume,
                    cornerStyle: CornerStyle.bothFlat,
                    width: 12,
                    sizeUnit: GaugeSizeUnit.logicalPixel,
                    color: Colors.white54,
                  ),
                  MarkerPointer(
                    value: _volume,
                    enableDragging: true,
                    onValueChanged: (newValue) {
                      setState(() {
                        _volume = newValue;
                      });
                    },
                    markerHeight: 20,
                    markerWidth: 20,
                    markerType: MarkerType.circle,
                    color: const Color(0xFFF8BBD0),
                    borderWidth: 2,
                    borderColor: const Color.fromRGBO(128, 64, 105, 1),
                  )
                ],
              )
            ]),
            Positioned(
                top: mediaQueryData.size.height * 0.36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryData.size.width * 0.02,
                    ),
                    const Icon(
                      Icons.volume_off_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: mediaQueryData.size.width * 0.83,
                    ),
                    const Icon(
                      Icons.volume_up_outlined,
                      color: Colors.white,
                    )
                  ],
                )),

            Padding(
              padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.5,
              ),
              child: const Center(
                  child: Text(
                "Divyanshu singh",
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
            ),

            Positioned(
                top: mediaQueryData.size.height * 0.79,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryData.size.width * 0.05,
                    ),
                    const Icon(
                      Icons.file_download_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: mediaQueryData.size.width * 0.78,
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.7),
              child: Slider(value: 0.7, onChanged: (_) {}, activeColor: Color.fromRGBO(128, 64, 105, 1),inactiveColor: Colors.grey,),
            ),

            Positioned(
                top: mediaQueryData.size.height * 0.87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryData.size.width * 0.07,
                    ),
                    const Text(
                      "2:00",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: mediaQueryData.size.width * 0.74,
                    ),
                    const Text(
                      "4:00",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Positioned(
                top: mediaQueryData.size.height * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: mediaQueryData.size.width*0.05,),
                    const Icon(
                      Icons.repeat,
                      color: Colors.white,
                    ),
                    SizedBox(width: mediaQueryData.size.width*0.2,),
                    const Icon(
                      Icons.fast_rewind,
                      color: Colors.white,
                    ),
                    SizedBox(width: mediaQueryData.size.width*0.05,),
                    Container(
                      height: mediaQueryData.size.height * 0.06,
                      width: mediaQueryData.size.width * 0.12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.play_arrow,
                        size: 32,
                      ),
                    ),
                    SizedBox(width: mediaQueryData.size.width*0.05,),
                    const Icon(
                      Icons.fast_forward,
                      color: Colors.white,
                    ),
                    SizedBox(width: mediaQueryData.size.width*0.2,),
                    const Icon(
                      Icons.shuffle,
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: mediaQueryData.size.height*0.65,
                left: mediaQueryData.size.width*0.35,
                child: Row(children: [
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
            ],))
          ],
        ),
      ),
    );
  }
}
