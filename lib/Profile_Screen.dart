import 'package:flutter/material.dart';
import 'package:travel_app/First_Screen.dart';
import 'package:travel_app/Second_Screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:  (context)=> SecondScreen()),
                                );
                              },
                              child: Icon(Icons.arrow_back,color: Colors.white,)),
                        ],),
                        SizedBox(height: 30,),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/explore2.jpeg'),
                        ),
                        SizedBox(height: 20,),
                        Text('Malik Shahib',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('Malik@gmail.com',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 18),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(Icons.person,size: 30,color: Colors.white,)),
                      title: Text('Your Name',style: TextStyle(fontSize: 18),),
                      subtitle: Text('Change Your Name'),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(Icons.home_outlined,color: Colors.white,size: 30,)),
                      title: Text('Manage Address',style: TextStyle(fontSize: 18),),
                      subtitle: Text('Change Your Address'),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(Icons.notifications_none,color: Colors.white,size: 30,)),
                      title: Text('Notification',style: TextStyle(fontSize: 18),),
                      subtitle: Text('Notification Received'),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(Icons.settings,size: 30,color: Colors.white,)),
                      title: Text('Setting',style: TextStyle(fontSize: 18),),
                      subtitle: Text('Customize Your Account'),
                    ),
                    Divider(),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.5),width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text('Logout',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
