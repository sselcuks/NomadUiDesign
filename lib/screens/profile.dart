import 'package:flutter/material.dart';
import 'package:nomad_project/constants/images.dart';
import 'package:nomad_project/constants/text_style.dart';
import 'package:flutter/cupertino.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var followers = 'Followers     76000   ';
  var following = 'Following     400';
  var trips = 'Trips              20';
  var countries = 'Countries     15';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: GestureDetector(child: Text("Profile",style: TextStyle(color: Colors.grey),)),
    ),
      body: SingleChildScrollView(
              child: Column(children: [
         
            Padding(
              padding:  EdgeInsets.only(top:8.0,left:10,right:10),
              child: Container(
                height: 300,
                //color:Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage(mappins))
                ),
                ),
            ),
            
               Container(child: 
               Card(
                 child: Stack(
                   children: [ 
                     Container(
                    
                     color: Colors.white,
                     height:250,
                     width:450
                   ),
                   Container(child:
                    CircleAvatar(radius: 60,
                    backgroundImage: AssetImage(profile),
                    ),        
                    ),
                    Container(child: 
                    Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: Text("Elon Musk",style:kProfileTextStyle),
                    
                    ),
                    
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:150,top: 40),
                      child: Container(
                        child: Text(
                          " \nEnerpreneur and CEO of Space X \ contact me at elon@spaceX.com",
                          style: TextStyle(
                            color:Colors.grey
                            ),), 
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:150,top:95),
                      child: Container(
                        
                        child: CupertinoButton.filled(child: Text('Follow \u{1F4E7}'),
                          onPressed: (){},
                        ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(top:160,left:150),
                      child: Container(
                        child: Text(
                          '$followers\n$following\n$trips\n$countries')
                      ),
                    )

               ],),
               ),
               
                ),
        

             
        ],
        

        ),
        
      ),
      
    );
  }
}
