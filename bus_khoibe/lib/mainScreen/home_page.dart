
import 'package:bus_khoibe/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

          child:

          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("BusKothay!", style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 30
                    ),

                    ),
                    SizedBox(height: 20,),
                        Text("Track those pesky little bus, anytime anywhere", style: TextStyle(fontWeight: FontWeight.bold
                        , fontSize: 15, color: Colors.grey[500]),
                        ),
                  ],
                ),

                  Container(
                    height:MediaQuery.of(context).size.height / 3,

                    decoration: BoxDecoration(

                      image:  DecorationImage(

                        image: AssetImage("assets/map.png")
                      )
                    ),
                  ),
                SizedBox(height: 5),
                Column(
                  children: [
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width/2,
                      height: 60,
                        onPressed: (){},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Login", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15 ),),
                    ),
                    SizedBox(height: 10),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width/2,
                      height: 60,
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("SignUp", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15 ),),
                    ),
                    SizedBox(height: 10,),
                    Text("Already have  an account?", textAlign: TextAlign.center, style: TextStyle(fontSize: 24),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(foregroundImage: AssetImage("assets/facebook.png")),
                        CircleAvatar(foregroundImage: AssetImage("assets/facebook.png")),
                        CircleAvatar(foregroundImage: AssetImage("assets/facebook.png"))
                      ],
                    )


                  ],
                )

              ],
            ),
          )
      ),
    );
  }
}