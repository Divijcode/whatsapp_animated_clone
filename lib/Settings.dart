import 'package:flutter/material.dart';
import 'homeScreen.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text(
          'Settings'
        ),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: Column(
          children :[
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  CircleAvatar(
                    backgroundImage : NetworkImage("https://pbs.twimg.com/profile_images/1302657767921135616/7LTFqyqu.jpg"),
                    radius: 33,
                  ),
                  SizedBox(
                    width:15
                  ),
                  Column(
                    children: [
                      Text('DIVIJ',style: TextStyle(
                        fontSize: 20,
                          color: Colors.grey.shade300
                      ),),
                      Text('Busy',style: TextStyle(
                          color: Colors.grey
                      ),),

                    ],
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(Icons.qr_code,color: Colors.grey,)
                ],
              ),
            ),
            Divider(
              thickness: 0.3,

              color: Colors.grey,

            ),
            ReusableListTile(title: 'Accounts',subtitle: 'Primary,security,change number',
              icon: Icon(Icons.vpn_key,color: Colors.grey,),),
            ReusableListTile(title: 'Chats',subtitle: 'Theme, wallpapers, chat history',
              icon: Icon(Icons.chat_sharp,color: Colors.grey,),),
            ReusableListTile(title: 'Notifications',subtitle: 'Message, group & call tones',
              icon: Icon(Icons.notifications,color: Colors.grey,),),
            ReusableListTile(title: 'Storage and data',subtitle: 'Network usage, auto-download',
              icon: Icon(Icons.cloud_upload_sharp,color: Colors.grey,),),
            ReusableListTile(title: 'Help',subtitle: 'FAQ, contact us, privacy policy',
              icon: Icon(Icons.chat_sharp,color: Colors.grey,),),
            ReusableListTile(title: 'Invite a friend',subtitle: '',
              icon: Icon(Icons.group,color: Colors.grey,),),


          ]
        ),
      ),
    );
  }
}

class ReusableListTile extends StatelessWidget {
  ReusableListTile({this.icon,this.subtitle,this.title});
  String title,subtitle;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title,style: TextStyle(
        color: Colors.grey.shade300
      ),),
      subtitle: Text(subtitle,style: TextStyle(
          color: Colors.grey
      ),),
    );
  }
}
