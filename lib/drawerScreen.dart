import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawerListItems.dart';
import 'package:shadowed_image/shadowed_image.dart';
import 'Settings.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      height: double.infinity,
      width: double.infinity,
      color: Colors.teal.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,






        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [


                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Text(
                      'Divij Chhabra',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                        letterSpacing: 1.5
                      ),

                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+91 1234567890',

                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300,
                          fontSize: 12,
                          letterSpacing: 2
                      ),

                    ),


                  ],
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 36,
                  child: CircleAvatar(
                    backgroundImage : NetworkImage("https://pbs.twimg.com/profile_images/1302657767921135616/7LTFqyqu.jpg"),
                    radius: 33,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Column(

            children: drawerItems.map((element) =>Padding(
              padding: const EdgeInsets.only(right:8.0,bottom: 20,top: 20),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );

                    },
                    child: Text(element['title'],
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey.shade300,
                      shadows: [
                        Shadow(
                          blurRadius: 13.0,
                          color: Colors.teal.shade600,
                          offset: Offset(3.0, 5.0),
                        ),
                      ],

                    ),),
                  ),
                  SizedBox(width: 10,),
                  Icon(element['icon'],color:Colors.grey.shade300,size: 25,),
                ],
              ),
            )).toList(),
          ),
         Padding(
           padding: const EdgeInsets.only(top:80.0),
           child: Column(
             children: [
               Container(
                 color: Colors.transparent,
                 height: 140,
                 width: 140,
                 child: ShadowedImage(
                   blurRadius: 5,
                   scale: 0.9,
                   image: Image.network("https://www.freeiconspng.com/thumbs/logo-whatsapp-png/logo-whatsapp-transparent-background-22.png"),
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
