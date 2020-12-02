import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{


  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen=false;




  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        color: Colors.teal.shade800,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            offset: Offset(5.0, 10.0), //(x,y)
            blurRadius: 50.0,
          ),
        ],

      ),

      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 300),


      child: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(
                    "WhatsApp",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 20.0,

                    ),
                  ),
                ),
                isDrawerOpen? IconButton(icon: Icon(CupertinoIcons.arrow_right,color: Colors.white,), onPressed:(){
                  setState(() {
                    xOffset=0;
                    yOffset=0;
                    scaleFactor=1;
                    isDrawerOpen=false;

                  });

                }
                ):IconButton(icon: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white,), onPressed:(){
                  setState(() {
                     xOffset=-50;
                    yOffset=150;
                    scaleFactor=0.6;
                     isDrawerOpen=true;
                  });

                }
                ),
              ],
            ),
          ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),

            child: ContainedTabBarView(
              initialIndex: 1,

              tabs: [
                Icon(Icons.camera_alt),
                Text('CHATS'),
                Text('STATUS'),
                Text('CALLS')
              ],
              tabBarProperties: TabBarProperties(

                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey[400],
              ),
              views: [

                Container(color: Colors.green),
                ClipRRect(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(isDrawerOpen?40:0)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(5.0, 5.0), //(x,y)
                          blurRadius: 20.0,
                        ),
                      ],

                    ),
                    child:Chats(),

                  ),
                ),

                Container(color: Colors.green),
                Container(color: Colors.red),

              ],
              onChange: (index) => print(index),
            ),
          ),
        ),


        ],
      ),
    );
  }
}

//
// class Status extends StatefulWidget{
//
//   StatusState createState() => StatusState();
//
// }
//
// class StatusState extends State<Status>{
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Color(0xFF25d366),
//           child: Icon(Icons.photo_camera),
//           onPressed: null
//       ),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('My Status'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//           Container(
//             color: Colors.grey[200],
//             width: MediaQuery.of(context).size.width,
//             height: 25.0,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 20.0,top: 5.0),
//               child: Text('Recent updates', style: TextStyle(color: Colors.grey),),
//             ),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('Rahul'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('bhavya'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('jane'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('My Status'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/image/profile_pic.png'),
//             ),
//             title: Text('My Status'),
//             subtitle: Text('Tap to Add Status'),
//           ),
//
//         ],
//       ),
//     );
//   }
//
// }
//
//
// class Calls extends StatefulWidget{
//   CallsState createState() => CallsState();
// }
// class CallsState extends State<Calls>{
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/image/profile_pic.png'),
//           ),
//           title: Text('Bhavya'),
//           subtitle: Row(
//             children: <Widget>[
//               Icon(Icons.arrow_downward, color: Colors.red,),
//               Text('Today 1:25 pm'),
//             ],
//           ),
//           trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/image/profile_pic.png'),
//           ),
//           title: Text('Bhavya'),
//           subtitle: Row(
//             children: <Widget>[
//               Icon(Icons.arrow_downward, color: Colors.red,),
//               Text('Today 1:25 pm'),
//             ],
//           ),
//           trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/image/profile_pic.png'),
//           ),
//           title: Text('Bhavya'),
//           subtitle: Row(
//             children: <Widget>[
//               Icon(Icons.arrow_downward, color: Colors.red,),
//               Text('Today 1:25 pm'),
//             ],
//           ),
//           trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/image/profile_pic.png'),
//           ),
//           title: Text('Bhavya'),
//           subtitle: Row(
//             children: <Widget>[
//               Icon(Icons.arrow_downward, color: Colors.red,),
//               Text('Today 1:25 pm'),
//             ],
//           ),
//           trailing: Icon(Icons.video_call, color: Color(0xFF075e54),),
//         ),
//
//       ],
//     );
//   }
//
// }

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> names = [
    'Trump',
    'Narendra Modi',
    'Andrew',
    'Michael',
    'Noah',

  ];

  List<String> text = [
    ':(',
    'You Blocked Narendra Modi',
    'Whatcha doin ?',
    'Hey ya',
    ' Toodles ',

  ];
  List <String> image =[
    'https://upload.wikimedia.org/wikipedia/commons/5/56/Donald_Trump_official_portrait.jpg',
    'https://images.firstpost.com/wp-content/uploads/large_file_plugin/2020/09/1601130794_Modiunga.jpg?impolicy=website&width=320&height=180',
    'https://pickaface.net/gallery/avatar/unr_random_160817_0304_2mvqp69.png',
        'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4aa68f80-158e-4744-95e9-da53a23e1eba/dasli0e-0189993a-d23c-4825-a6fc-aa0403374080.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNGFhNjhmODAtMTU4ZS00NzQ0LTk1ZTktZGE1M2EyM2UxZWJhXC9kYXNsaTBlLTAxODk5OTNhLWQyM2MtNDgyNS1hNmZjLWFhMDQwMzM3NDA4MC5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.OutLqtFTitm13Es6-IsETgnadnjOtEh5xT7ruAM7czY',
        'https://byuc.files.wordpress.com/2012/07/avat-2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF25d366),
            child: Center(
              child: Icon(Icons.message),
            ),
            onPressed: null),
        body: Container(
          child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(

                        backgroundImage:
                        NetworkImage(image[index]),
                      ),
                      title: Text(names[index]),
                      subtitle: Text(text[index]),
                      trailing: Text('10:00',style: TextStyle(
                        color: Colors.grey,
                      ),),
                    ),
                    Divider(
                      height: 0.5,
                    ),
                  ],
                );
              }),
        ));
  }
}