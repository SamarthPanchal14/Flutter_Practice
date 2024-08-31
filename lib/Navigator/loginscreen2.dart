import 'package:flutter/material.dart';

class loginscreen2 extends StatefulWidget {
  const loginscreen2({Key? key}) : super(key: key);

  @override
  State<loginscreen2> createState() => _loginscreen2State();
}

class _loginscreen2State extends State<loginscreen2> {
  bool isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black87,
                  Colors.teal,
                  Colors.tealAccent
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(width: 60,),
                Text('Login',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0
                    )),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              //color: Colors.yellow,
              height: 590,
              width: 410,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.tealAccent,
                        Colors.white,
                      ]
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    //bottomLeft: Radius.circular(30)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white70,
                                  Colors.white70
                                ]
                            ),
                            color: Colors.tealAccent[100],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45),
                                bottomLeft: Radius.circular(30)
                            )
                        ),
                        //color: Colors.yellow,
                        height: 550,
                        width: 370,
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text(
                                    'Username',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter User ID or Email',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Password',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Password',
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Checkbox(
                                      value: isCheckBox,
                                      onChanged: (value) {
                                        isCheckBox = value!;
                                        setState(() {});
                                      }),
                                  Text('Remember me'),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.teal,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  bottomRight: Radius.circular(25)
                                              )
                                          )
                                      ),
                                      child: Text('Sign In'))
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Text('--------------------------------------------------------------'),
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 40),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.black,width: 1),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomRight: Radius.circular(15)
                                            )
                                        )
                                    ),
                                    child: Text('G',
                                      style: TextStyle(
                                        color: Colors.black87, // Text color
                                        fontSize: 24, // Font size
                                        fontWeight: FontWeight.bold, // Font weight
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('or'),
                                  SizedBox(width: 10,),
                                  ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 40),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.black,width: 1),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomRight: Radius.circular(15)
                                            )
                                        )
                                    ),
                                    child: Image.asset('assets/image/appleLogo.png',height: 20,width: 20,),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
