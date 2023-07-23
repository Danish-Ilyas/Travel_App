import 'package:flutter/material.dart';
import 'package:travel_app/First_Screen.dart';
import 'package:travel_app/Profile_Screen.dart';
import 'package:travel_app/Third_Screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List recommendaion = [
    'images/ocean.jpeg',
    'images/snow.jpeg',
    'images/beach.jpg',
    'images/desert.jpeg',
    'images/forest.jpg',
    'images/Mountain.jpg',
  ];
  List places = ['Ocean', 'Snow', 'Beach', 'Desert', 'Forest', 'Mountains'];
  List topics = ['Top', 'Popular', 'Trending', 'Favourite', 'Most Visited'];
  List topicsimages = [
    'images/Mountain.jpg',
    'images/forest.jpg',
    'images/ocean.jpeg',
    'images/snow.jpeg',
    'images/beach.jpg',
    'images/desert.jpeg',
  ];
  List topicdesc = [
    'Come and feels the silence of mountains',
    'Come and feels the silence of mountains',
    'Come and feels the silence of mountains',
    'Come and feels the silence of mountains',
    'Come and feels the silence of mountains',
    'Come and feels the silence of mountains',
  ];
  List location = [
    'Kashmir',
    'Lahore',
    'Punjab',
    'BLN',
    'FATA',
    'KPK',
  ];
  String topicchosen = 'Top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        leading: Icon(
          Icons.sort,
          color: Colors.black.withOpacity(0.5),
          size: 35,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.5),
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context)=> ProfileScreen()),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/explore2.jpeg'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10),
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Your daily',
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
          Text(
            'Recommendation',
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 270,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: recommendaion.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(
                      left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(recommendaion[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.6)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        places[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: topics.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        topicchosen = topics[index];
                      });
                    },
                    child: Text(
                      topics[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: topicchosen == topics[index]
                            ? FontWeight.w700
                            : FontWeight.w400,
                        color: topicchosen == topics[index]
                            ? Colors.black
                            : Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 400,
            // Adjust the h// eight as per your requirement
            child: ListView.builder(
              itemCount: recommendaion.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdScreen(
                          {
                            'images': topicsimages[index],
                            'title': places[index],
                            'location': location[index],
                            'titledesc': topicdesc[index],
                          },
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 36,
                            child: Container(
                              margin:   EdgeInsets.all(10),
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    topicsimages[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: Colors.grey.withOpacity(0.6),
                                      size: 20,
                                    ),
                                    Text(
                                      topicdesc[index],
                                      style: TextStyle(
                                          color:
                                          Colors.black.withOpacity(0.7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Text(
                                  topicdesc[index],
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
