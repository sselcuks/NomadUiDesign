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





















// class CountryScreen extends StatefulWidget {
//   @override
//   _CountryScreenState createState() => _CountryScreenState();
// }

// class _CountryScreenState extends State<CountryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
      
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           //crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/background.jpg'),
//                   fit: BoxFit.cover
//                 ),
//               ),
//               child: Container(

                
              
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.bottomRight,
//                     colors: [
//                       Colors.black.withOpacity(.1),
//                       Colors.black.withOpacity(.1),
//                     ]
//                   )
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
                
//                     //SizedBox(height: 30),
//                     Container(
//                       padding: EdgeInsets.symmetric(vertical: 3),
//                       margin: EdgeInsets.symmetric(horizontal: 40),
//                       height: 50,
                
                   
//                     ),
//                     SizedBox(height: 30,)
//                   ],
//                 ),
//               ),
//             ),
//             //SizedBox(height: 2,),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
                  
//                   //SizedBox(height: 100,),
//                   Container(
//                     height: 600,
//                     child: ListView(
//                       scrollDirection: Axis.vertical,
//                       children: <Widget>[
//                         makeItem(image: bangkok, title: 'Bangkok'),
//                         makeItem(image: bali, title: 'Bali'),
//                         makeItem(image: berlin, title: 'Berlin'),
//                         //makeItem(image: 'assets/images/united-states.jpg', title: 'United States')
//                       ],
//                     ),
//                   ),

//                   //SizedBox(height: 20,),
//                   //SizedBox(height: 20,),                
//                 // Container(
//                 //     height: 200,
//                 //     child: ListView(
//                 //       scrollDirection: Axis.vertical,
//                 //       children: <Widget>[
//                 //         makeItem(image: 'assets/images/united-states.jpg', title: ''),
//                 //         makeItem(image: 'assets/images/greece.jpg', title: 'Italy'),
//                 //         makeItem(image: 'assets/images/Italy.jpg', title: 'Greece'),
//                 //         makeItem(image: 'assets/images/canada.jpg', title: 'United States')
//                 //       ],
//                 //     ),
//                 //   ),
//                   //SizedBox(height: 10,),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget makeItem({image, title}) {
//     return AspectRatio(
//       aspectRatio: 1 / 1,
//       child: Container(
        
//         //margin: EdgeInsets.only(right: 15),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           image: DecorationImage(
//             image: AssetImage(image),
//             fit: BoxFit.cover
//           )
//         ),
//         child: Container(
        
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               begin: Alignment.bottomRight,
//               colors: [
//                 Colors.black.withOpacity(.8),
//                 Colors.black.withOpacity(.2),
//               ]
//             )
//           ),
//           child: Align(
            
//             alignment: Alignment.bottomLeft,
//             child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
//           ),
//         ),
//       ),
//     );
//   }


// }
