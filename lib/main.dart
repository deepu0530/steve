import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 500,
                    child: Image(image: AssetImage("assets/images/steve.jfif"),fit: BoxFit.cover,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      height: 15,
                      width: 40,
                      color: Colors.black,
                      child:Center(child: Text("2:41",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/universal.jfif"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Steve Jobs - Offical Trailer (HD)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            SizedBox(width: 80,),
                            Icon(Icons.more_vert,size: 20,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Universal Pictures",style: TextStyle(color: Colors.black,fontSize: 14),),
                            SizedBox(width: 3,),
                            Icon(Icons.circle,size: 2,),
                            SizedBox(width: 3,),
                            Text("1.5 crore views",style: TextStyle(color: Colors.black,fontSize: 14),),
                            SizedBox(width: 3,),
                            Icon(Icons.circle,size: 2,),
                            SizedBox(width: 3,),
                            Text("5 years ago",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      color: Colors.red,
                      child:  Icon(Icons.play_arrow,color: Colors.white,size: 16,),
                    ),
                    SizedBox(width: 20,),
                    Text("Shorts",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
                      horizontalrows(image: "assets/images/prasad2.jpg",shortname: "Entertainer",personname: "Lakshmi Prasad",),
                      SizedBox(width: 10,),
                      horizontalrows(image: "assets/images/sunil2.jpg",shortname: "Beard Boys",personname: "Sunil Chowdary",),
                      SizedBox(width: 10,),
                      horizontalrows(image: "assets/images/deepu.jpg",shortname: "Girls love beard guys",personname: "Deepika Deepu",),
                      SizedBox(width: 10,),
                      horizontalrows(image: "assets/images/sowmya.jpg",shortname: "Lots Of Love",personname: "Sowmya Sow",),
                      SizedBox(width: 10,),
                      horizontalrows(image: "assets/images/apparna.jpg",shortname: "Beautiful",personname: "Apparna Appu",),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

class horizontalrows extends StatelessWidget {
  const horizontalrows({
    this.image,this.shortname,this.personname,
    Key key,
  }) : super(key: key);
  final String image;
final String shortname;
  final String personname;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          height: 330,
          width: 180,
          child: Image(image: AssetImage(image),fit: BoxFit.cover,),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(shortname,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text(personname,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            child: Icon(Icons.more_vert,color: Colors.white,size: 20,),
          ),
        )
      ],
    );
  }
}
