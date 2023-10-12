
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.91,

      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(128, 64, 105, 1),
            Color.fromRGBO(118, 64, 85, 1),
            Colors.black,
            Colors.black
          ], begin: Alignment.topCenter)
      ),
      child:   Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: mediaQueryData.size.height*0.1, left: mediaQueryData.size.width*0.05),
            child:   Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/pxfuel.jpg"),
                  radius: 50,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: mediaQueryData.size.width*0.07),
                      child: const Text("Divyanshu Singh", style: TextStyle(fontSize: 24, color: Colors.white),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text("0 followers. 0 Following ",style: TextStyle(fontSize: 12, color: Colors.white70),),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:   EdgeInsets.only(top: mediaQueryData.size.width*0.06),
            child: Row(
              children: [
                Padding(
                  padding:   EdgeInsets.only(left: mediaQueryData.size.width*0.08 ),
                  child: Container(
                    height: 32,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white70, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    child: Center(child: const Text("Edit", style: TextStyle(fontSize: 16, color:Colors.white),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Icon(Icons.more_vert_outlined,color: Colors.white,),
                )
              ],
            ),
          ),
          SizedBox(height: mediaQueryData.size.height*0.03,),
          Text("No Recent acticity", style: TextStyle(color: Colors.white, fontSize: 22),)
        ],
      )
    );
  }
}
