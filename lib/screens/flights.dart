import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nomad_project/utils/appbar.dart';


class Flights extends StatefulWidget {
  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return",style:TextStyle(color: Colors.black))
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        SafeArea(
            child: Stack(children: [
              Card(
                child: Padding(
                  padding:  EdgeInsets.only(left: 14 ,top:10),
                  child: Container(
                    height: 140.0,
                    width: 150.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child:  Text("BGO",
                        style: TextStyle(fontSize: 22, color: Colors.white), 
                          textAlign: TextAlign.center,),
                      )),
                      
                  ),
                ),
                
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top:33.0,left:80),
                child: Text("From",style: TextStyle(color: Colors.white),),
              ),),
              
              Padding(
                padding: EdgeInsets.only(left: 205,top:14),
                child: Container(
                    height: 140.0,
                    width: 150.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child:  Text("SYD",
                        style: TextStyle(fontSize: 22, color: Colors.white), 
                          textAlign: TextAlign.center,),
                      ),)
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 158.0,left: 17),
                child: Container(
                      height: 40.0,
                      width: 150.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child:  Text("Thu. 7 Nov",
                          style: TextStyle(fontSize: 22, color: Colors.white), 
                            textAlign: TextAlign.center,),
                        ),
                        )
                    ),

              ),
                 Padding(
                padding: EdgeInsets.only(top: 158.0,left: 207),
                child: Container(
                      height: 40.0,
                      width: 150.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child:  Text("Fri. 22 Nov",
                          style: TextStyle(fontSize: 22, color: Colors.white), 
                            textAlign: TextAlign.center,),
                        ),
                        )
                    ),
                    
              ),
               Padding(
                 padding: EdgeInsets.only(top:205,left: 40,right: 40),
                 child: Container(
                        height: 40.0,
                        width: 290.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child:  Text("1 Adult, Economy",
                            style: TextStyle(fontSize: 18, color: Colors.black), 
                              textAlign: TextAlign.center,),
                          ),
                          )
                      ),
               ),
            
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Padding(
                  padding:  EdgeInsets.only(top: 33,left: 100,right:85),
                  child: Text("To",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                )
              ],
              )
              )
            ],        
            ),
          ),
        ],
    ));
  }
}


 