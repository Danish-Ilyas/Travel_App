import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Second_Screen.dart';
class ThirdScreen extends StatefulWidget {
  Map details;

  ThirdScreen(this.details);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

var desc1='There is a great deal of talk and endeavour to protect nature, the animals, the birds, the whales and dolphins, to clean the polluted rivers, lakes, fields and so on. Nature is not put together by thought, as religion and belief are. Nature is the tiger, that extraordinary animal with its energy, its great sense of power.';
var desc2='There is a great deal of talk and endeavour to protect nature, the animals, the birds, the whales and dolphins, to clean the polluted rivers, lakes, fields and so on. Nature is not put together by thought, as religion and belief are. Nature is the tiger, that extraordinary animal with its energy, its great sense of power.';
var desc3='There is a great deal of talk and endeavour to protect nature, the animals, the birds, the whales and dolphins, to clean the polluted rivers, lakes, fields and so on. Nature is not put together by thought, as religion and belief are. Nature is the tiger, that extraordinary animal with its energy, its great sense of power.';
class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite,color: Colors.redAccent,),
            Text("200",style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 13,fontWeight: FontWeight.bold),),
          ],
        ),
      ),

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(widget.details['images']),
                fit: BoxFit.cover
              ),
            ),alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 38,left: 18),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.24),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: GestureDetector(
                      onTap: (){},
                      child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 24,)),),
                ),
              ),
            ),
          ),

          ListView(
            children: [
              SizedBox(height: 250,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Icon(Icons.location_on,color: Colors.white.withOpacity(0.7),size: 32,),
                  Text(widget.details['location'],style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 25,fontWeight: FontWeight.w700),),
              ],),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(widget.details['titledesc'],style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 23,fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text(desc1,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18),),
                    SizedBox(height: 10,),
                    Text(desc2,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18),),
                    SizedBox(height: 10,),
                    Text(desc3,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18),),
                    SizedBox(height: 50,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.5),width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text('Wanna Explore',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text('nothing is too far',style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
