import 'package:babyhelpshop/Dashboard.dart';
import 'package:babyhelpshop/SignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffFF7F50),
                  Color(0xffDE3163)


                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize:40 ),),
                  )
                ],

              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(

                          decoration:InputDecoration(
                            hintText: 'Enter Your Email',
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.pink,),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.amber
                                )
                            ),
                            focusedBorder:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.red
                                )
                            ),
                          ) ,
                        ),
                      ),//User email

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(

                          decoration:InputDecoration(
                            hintText: 'Enter Your Password',
                            prefixIcon: Icon(Icons.key,color: Colors.pink,),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.amber
                                )
                            ),
                            focusedBorder:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.red
                                )
                            ),
                          ) ,
                        ),
                      ),//User Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:15),
                            child: Text("Forget Password??",style: TextStyle(color: Colors.pink,fontSize:12)),
                          )
                        ],
                      ),//Forget Password text
                      SizedBox(height: 5,),
                      Container(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400)
                            )),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                return Dashboard();
                              },));

                            }, child: Text("LOGIN")),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return SignUpScreen();
                          },));
                        },
                          child: Text("Dont Have an account??...Create New",
                            style: TextStyle(color: Colors.pink),)),
                      SizedBox(height: 10,)

                    ],
                  ),
                ),
              )




            ],



          ),
        ),



      ),

    );
  }
}
