import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2)),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        Container(
          height: 90,
          decoration: BoxDecoration(color: Colors.blue[800]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "500+",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.amber,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  )
                ],
              ),
              VerticalDivider(
                thickness: 1,
                color: Colors.white,
                indent: 10,
                endIndent: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "56",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.amber,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                  Text(
                    "Members",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/member.png"),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text("Member Details >",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.amber,
                          )))
                ],
              ),
              Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/project.png"),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text("Ongoing Projects >",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.amber,
                          )))
                ],
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(bottom: 5, left: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Recent Projects",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5,
                        color: Colors.grey[800])))),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                onTap: (){},
                leading: Icon(Icons.assignment,size: 40,),
                title: Text('Project Name',style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                subtitle: Text("Jul 9, 2020",style: TextStyle(fontFamily: "Poppins"),),
                trailing: Icon(Icons.arrow_forward_ios)
              )),
                Card(
                child: ListTile(
                onTap: (){},
                leading: Icon(Icons.assignment,size: 40,),
                title: Text('Project Name',style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                subtitle: Text("Jul 9, 2020",style: TextStyle(fontFamily: "Poppins"),),
                trailing: Icon(Icons.arrow_forward_ios)
              )),
            ],
          ),
        )
      ],
    ));
  }
}
