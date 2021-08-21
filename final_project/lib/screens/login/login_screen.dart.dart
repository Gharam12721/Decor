import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project/screens/Details/details_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() =>_LoginScreenState();
    //return _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen> {
  final _text = TextEditingController();
  final _pass = TextEditingController();
  bool _validate = false;
  //bool _isvalid = false;
  String? email ,password;
  @override

  void dispose() {
    _text.dispose();
    _pass.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return getloginWidget();
  }

  Widget getloginWidget() {

    return Scaffold(
      body: Center(
        child:Container(

        padding: EdgeInsets.only( top:5),

          child:Column(
            children: [


                //elevation: .5,
                Image(image: AssetImage('image/icon-08.png'),
                height: 170,
              ),



              Text(
              "Find Your ",
              style: TextStyle(color: Color(0xff070707), fontSize: 25, fontWeight: FontWeight.bold ,letterSpacing: 2 ),
              ),
              Text(
              " Unique piece !",
              style: TextStyle(color: Color(0xff070707), fontSize: 25, fontWeight: FontWeight.bold ,letterSpacing: 2 ),
              ),
              Container(
                padding:EdgeInsets.only(top: 7) ,
                child:Text(
                " Join us,",
                style: TextStyle(color: Color(0xff070707), fontSize: 15 ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),

                    child: Form(
                      child: Column(
                        children: [
                           TextFormField(
                             controller: _text,
                            decoration: InputDecoration(
                              labelText: "E-mail",
                                errorText: _validate ? 'Value Can\'t Be Empty' : null,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                //borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                //borderRadius: BorderRadius.circular(8),
                              )

                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      TextFormField(
                        obscureText: true,
                        controller: _pass,
                        decoration: InputDecoration(
                          labelText: " Password",
                            errorText: _validate ? 'Value Can\'t Be Empty' : null,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              //borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              //borderRadius: BorderRadius.circular(4),
                            )
                        ),
                      ),

                      ]
                  ),


                )),
              //),
              TextButton(
                  child:
                  Text("Create Account"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepPurple.shade300,
                      elevation: 20,
                      minimumSize: Size(120, 55),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.only(
                          left: 60,
                          right: 60,
                          top: 15,
                          bottom: 15
                      )

                  ),

                  onPressed:() {
                    //_isvalid =vaild.EmailValidator.validate(_text.text);
                    if(_text.text.isNotEmpty &&_pass.text.isNotEmpty){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen()));}

                  }


              ),

              Container(
                padding:EdgeInsets.only(top: 16) ,
                child: Text("sign up with"),
              ),
                  TextButton(
                  child: ImageIcon(
                    AssetImage("image/icon-01.png"),
                    size:100,
                      color: Colors.deepPurple,
                  ),

                  onPressed: (){}),
              Container(
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    bottom: 10,
                    top: 10,

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
          )
        )

    ));
  }
}