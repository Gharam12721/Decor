import 'package:flutter/material.dart';
import 'package:final_project/screens/login/login_screen.dart.dart';
import 'package:final_project/screens/Details/details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}
class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {

    return Scaffold(

     body:Center(

      child:Container(

        padding: EdgeInsets.only( top:60),

         child:Column(
             children: [
              Text(
              "Decor & ",
              style: TextStyle(color: Color(0xff070707), fontSize: 35, fontWeight: FontWeight.bold ,letterSpacing: 2 ),
              ),
             Text(
              " enjoy !",
              style: TextStyle(color: Color(0xff070707), fontSize: 35, fontWeight: FontWeight.bold ,letterSpacing: 2 ),
              ),
            Container(
                padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 20
                ),
              child: Image(image: AssetImage('image/icon-09.png'),
                height: 320,
                ),
            ),
         /* FloatingActionButton.extended(
              onPressed: () { },
              label: Text('Cet started',
                  style: TextStyle(color: Color(0xfff8f8f8),

                  )
          )
         ),*/
              TextButton(
                child:
                Text("Get started"),
                  style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepPurple.shade300,
                  elevation: 20,
                  minimumSize: Size(120, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.only(
                    left: 70,
                    right: 70,
                    top: 15,
                    bottom: 15
                  )

                ),

              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }

              ),
                Container(
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    bottom: 25,
                    top: 30,


                  ),
                 child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                   children:[


                     Text(
                       "Already have an account?",
                     ),

                     TextButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => DetailsScreen()),
                         );
                       },
                       child: Text(
                           "Sign up",
                           style : TextStyle( color: Color(0xff090909),fontWeight: FontWeight.bold , )
                       ),
                     ),

                   ]
               )
                )



             ]

     ),

     ),
     )
    );
    }


  }