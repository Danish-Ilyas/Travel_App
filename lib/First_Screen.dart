import 'package:flutter/material.dart';
import 'package:travel_app/Second_Screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child:Image.asset('images/explore2.jpeg',fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
              ),
          ),
          ListView(padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(height: 50,),
              Text("Travel",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              Text("before you run out of time",style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 20,fontWeight: FontWeight.w400),),
            SizedBox(height: 460,),
              InkWell(
                onTap: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context)=> SecondScreen()
                  ));
                   },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.double_arrow,color: Colors.white,),
                      Text("  Let's travel",style: TextStyle(color: Colors.white,fontSize: 25,),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text('Not all who wander',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),),
              Center(child: Text('all last',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),),
              SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
