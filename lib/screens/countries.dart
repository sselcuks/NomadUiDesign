import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import '../constants/text_style.dart';
import 'package:flutter/cupertino.dart';




class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries",style: TextStyle(color:Colors.black))
      ),
      body: Column(
        children: [
          Container(height: 160,child: Padding(
          padding:EdgeInsets.only(top:15.0,right: 15,left:15),
          child: SearchBar(
            
            hintText: "Search",
            onSearch: null, 
            onItemFound: null),
        ),),
        Container(color:Colors.transparent  ,height:400 ,child:GridView.count(crossAxisCount: 2,
        children: <Widget>[
        Card(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/a/a8/Afghanistan_Flag.jpg"), 
                
                )
              ),
              Container(
                alignment: Alignment.bottomCenter,
            
                child: Text(
                  'Afganistan',style: kFlagCountryTextStyle
                    )
                    ),
              
            ],
          ),
        ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://images-na.ssl-images-amazon.com/images/I/51AO4JInYBL._AC_SX679_.jpg"), 
                
                )
                ),
                Container(
                  alignment: Alignment.bottomCenter,
             
                  child: Text('Alan Islands',style: kFlagCountryTextStyle),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                   child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://m.media-amazon.com/images/I/31P8xPwzUBL._AC_SX450_.jpg"), 
                
                ),
                ),
                Container(
           
                  alignment: Alignment.bottomCenter,
                  child: Text('Albania',style: kFlagCountryTextStyle),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                   child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/250px-Flag_of_Egypt.svg.png"), 
                
                )
                ),
                Container(
               
                  alignment: Alignment.bottomCenter,
                  child: Text('Egypt',style: kFlagCountryTextStyle),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                   child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://www.bayrakreyonu.com/wp-content/uploads/turk-bayragi-fiyatlari.jpg"), 
                
                ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  
                  child: Text('Turkey',style: kFlagCountryTextStyle),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                   child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://4.bp.blogspot.com/-YheOVB4HEpY/TzT_oo5N5vI/AAAAAAAAAgA/wqJZYPtdmE8/s1600/united-states-flag_2098_28950428-500x500.jpg"), 
                
                ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  
                  child: Text('Japan',style: kFlagCountryTextStyle),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                   child: CircleAvatar(
                  radius:30,
                  backgroundImage: NetworkImage(
                    "https://earthquake-report.com/wp-content/uploads/2011/07/flag-italy.jpg"),  
                )
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                 
                  child: Text('Italy',style: kFlagCountryTextStyle),
                )
              ],
            ),
          )
        ],
        )
        )
        ],      
      ),
    );   
  }}