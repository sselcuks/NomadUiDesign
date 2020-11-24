import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad_project/constants/images.dart';
import 'package:nomad_project/constants/text_style.dart';
import 'package:nomad_project/utils/appbar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';



class Cities extends StatefulWidget {
  @override
  _CitiesState createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
              child: Column(children: [
            Container(height: 160,child: Padding(
            padding:EdgeInsets.only(top:75.0,right: 15,left:15),
            child: SearchBar(
              hintText: "Search",
              onSearch: null, 
              onItemFound: null),
          ),),
          Row(children: [
            //Segmented Control
           
          ],),
          Container(
            margin: EdgeInsets.only(top:20),
            width: 350,
            height: 200,
            child: Card(
              child: Stack( children: [
              Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10) ,
                image: DecorationImage(image:AssetImage(bali),fit: BoxFit.fill)
              ),
              ),
              // City Title
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Canggu Bali",style:kCitiesTextStyle)
                ],),
              ),
              // Country Title
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [            
                  Padding(
                    padding: const EdgeInsets.only(top:120),
                    child: Text("Indonesia", style:kCountyTextStyle ),
                  ),
              ],
              ),
                Row(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top:10.0,left: 4),
                    child: Icon(Icons.wb_sunny,color: Colors.white,size: 22.0,), 
                  )
                ],),
                Padding(
                  padding: EdgeInsets.only(top:160.0,left: 4),
                  //Wifi Speed
                  child: Row(children: [
                    Icon(Icons.wifi,color:Colors.white),
                    Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child: Text('19 Mbps',style:kWiFiSpeedTextStyle ),
                    ),
                  ],),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:164.0,right:3),
                  //Price
                  child: Row(mainAxisAlignment:MainAxisAlignment.end ,children: [
                    Text("\$1,150 month",style:kPriceTextStyle)
                  ],),
                ),
                Row(
                  children: [],
                )
            ],
            ),),
            
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            width: 350,
            height: 200,
            child: Card(
              child: Stack( children: [
              Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10) ,
                image: DecorationImage(image:AssetImage(bangkok),fit: BoxFit.fill)
              ),
              ),
              // City Title
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Bangkok",style:kCitiesTextStyle)
                ],),
              ),
              // Country Title
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [            
                  Padding(
                    padding: const EdgeInsets.only(top:120),
                    child: Text("Thailand", style:kCountyTextStyle ),
                  ),
              ],
              ),
                Row(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top:10.0,left: 4),
                    child: Icon(Icons.wb_sunny,color: Colors.white,size: 22.0,), 
                  )
                ],),
                Padding(
                  padding: EdgeInsets.only(top:160.0,left: 4),
                  //Wifi Speed
                  child: Row(children: [
                    Icon(Icons.wifi,color:Colors.white),
                    Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child: Text('1 Mbps',style:kWiFiSpeedTextStyle ),
                    ),
                  ],),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:164.0,right:3),
                  //Price
                  child: Row(mainAxisAlignment:MainAxisAlignment.end ,children: [
                    Text("\$1,163 month",style:kPriceTextStyle)
                  ],),
                ),
                Row(
                  children: [],
                )
            ],
            ),),
            
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            width: 350,
            height: 200,
            child: Card(
              child: Stack( children: [
              Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10) ,
  
                image: DecorationImage(image:AssetImage(berlin),fit: BoxFit.fill)
              ),
              ),
              // City Title
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Berlin",style:kCitiesTextStyle)
                ],),
              ),
              // Country Title
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [            
                  Padding(
                    padding:  EdgeInsets.only(top:120),
                    child: Text("Germany", style:kCountyTextStyle ),
                  ),
              ],
              ),
                Row(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top:10.0,left: 4),
                    child: Icon(Icons.wb_sunny,color: Colors.white,size: 22.0,), 
                  )
                ],),
                Padding(
                  padding: EdgeInsets.only(top:160.0,left: 4),
                  //Wifi Speed
                  child: Row(children: [
                    Icon(Icons.wifi,color:Colors.white),
                    Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child: Text('26 Mbps',style:kWiFiSpeedTextStyle ),
                    ),
                  ],),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:164.0,right:3),
                  //Price
                  child: Row(mainAxisAlignment:MainAxisAlignment.end ,children: [
                    Text("\$ 3026 month",style:kPriceTextStyle)
                  ],),
                ),
                Row(
                  children: [],
                )
            ],
            ),),
            
          ),
        ],),
      )  
    );
  }}

