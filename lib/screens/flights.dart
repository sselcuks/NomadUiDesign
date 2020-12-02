import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Flights extends StatefulWidget {
  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Return", style: TextStyle(color: Colors.black))),
         body: SingleChildScrollView(
                    child: Column(children: [
             SingleChildScrollView(
                          child: Container(
                 color:Colors.grey,
                 width: double.infinity,
                 height: 305,
                 child: Card(child: Stack(children: [
                   
                   Padding(
                     padding:  EdgeInsets.only(top:25.0,left: 8),
                     child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 224, 224, 1),
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.topLeft,
                      height: 150,
                      width: 150,
                      //color: Color.fromRGBO(224, 224,224, 1),
                      child: Stack(
                        children: [

                              Center(
                                child: Text(
                            "BGO",
                            style: TextStyle(color:Colors.red, fontWeight: FontWeight.w700),
                          ),
                              ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,children:[
                            Text("From",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold ),)
                          ] )
                        ],
                      )),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(top: 200,left:18,right:20,bottom:20),
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Color.fromRGBO(224, 224, 223, 1),
                         
                         ),
                       child: Center(child: Text("Thu. Nov 7")),
                       height: 40,
                       width: 140,
                       //color: Colors.red,
                       
                       ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top:200,left:218.0),
                     child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(224, 224, 223, 1),
                           
                           ),
                         child: Center(child: Text("Fri. Nov 22")),
                         height: 40,
                         width: 140,
                         //color: Colors.red,
                         
                         ),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top:248.0,left: 80),
                     child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Color.fromRGBO(224, 224, 223, 1),
                             
                             ),
                           child: Center(child: Text("1 Adult, Economy")),
                           height: 40,
                           width: 240,
                           //color: Colors.red,
                           
                           ),
                   ),
                    

                    Padding(
                      padding: EdgeInsets.only(left:208.0,top: 25,right: 8),
                      child: Container(
                        
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 224, 224, 1),
                          borderRadius: BorderRadius.circular(10)),
                      
                      height: 150,
                      width: 150,
                      //color: Color.fromRGBO(224, 224,224, 1),
                      child: Stack(
                        children: [

                              Center(
                                child: Text(
                            "SYD",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                              ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,children:[
                            Text("To",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold ),)
                          ] )
                        ],
                      )),
                      
                    ),
                     Padding(
                       padding:  EdgeInsets.only(bottom:90,left: 12,right:10),
                       child: Center(
                         child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey[200],
                          radius: 45,
                          child: Icon(Icons.compare_arrows,color: Colors.white,),
                    ),
                  ),
                       ),
                     ),

                 ]),
                 
                 )
                 ),
             ),
               SingleChildScrollView(
                              child: Container(height:350, child:ListView(children: [
                   ListTile(
                    
                     
                    leading: CircleAvatar(
                      radius: 24,
                      
                      backgroundImage: NetworkImage(
                        "https://www.webtekno.com/images/editor/default/0001/56/ac9906c5940c52483cb72ac7ceb9a7e864a37c59.jpeg")
                        ,),
                        trailing: Text("\$900"),
                        title: Text("14:10 - 12:15"),
                        subtitle: Text("1 Stop, 36h 5 min"),
                        //shape: border,
                  ),
                    ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      
                      backgroundImage: NetworkImage(
                        
                        "https://logos-world.net/wp-content/uploads/2020/03/Emirates-Logo.png")
                        ,),
                        trailing: Text("\$1000"),
                        title: Text("05:00 - 10:00 "),
                        subtitle: Text("non-stop 5h 40 min"),
                        //shape: border,
                  ),
                    ListTile(
                    leading: CircleAvatar(
                      
                      backgroundImage: NetworkImage(
                        "https://www.webtekno.com/images/editor/default/0001/56/ac9906c5940c52483cb72ac7ceb9a7e864a37c59.jpeg")
                        ,),
                        trailing: Text("\$458"),
                        title: Text("01:30 - 12:00"),
                        subtitle: Text("non-stop 10h 30min"),
                        //shape: border,
                  ),
                    ListTile(
                    leading: CircleAvatar(
                      
                      backgroundImage: NetworkImage(
                        "https://www.webtekno.com/images/editor/default/0001/56/ac9906c5940c52483cb72ac7ceb9a7e864a37c59.jpeg")
                        ,),
                        trailing: Text("\$100"),
                        title: Text("9:00 - 12:00"),
                        subtitle: Text("non-stop, 3h 0min"),
                        //shape: border,
                  ),
                    ListTile(
                    leading: CircleAvatar(
                      
                      backgroundImage: NetworkImage(
                        "https://www.logolynx.com/images/logolynx/ae/ae3c19c499551acf7ec06eea3e964cd9.jpeg")
                        ,),
                        trailing: Text("\$600"),
                        title: Text("17:25- 06:10"),
                        subtitle: Text("non-stop,26h 45min"),
                        //shape: border,
                  ),

                 ],)),
               )  
            ]
           ,),
         )
          );
  }
}
