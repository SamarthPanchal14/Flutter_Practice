import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isobsecuretext = true;
  String emailtext = '';
  late TextEditingController _emailcontrol;
  late TextEditingController _passwordcontrol;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();

  bool isHomeSelected = false;
  bool isListSelected = false;
  bool isImageSelected = false;

  Widget functionListtile({
    required Widget icon,
    required String title,
    required bool isSelected,
    Function()? onTap,

}){
      return ListTile(
        leading: icon,
        trailing: Icon(Icons.arrow_forward),
        title: Text(title),
        selectedTileColor: Colors.yellow,
        selectedColor: Colors.red,
        focusColor: Colors.red,
        selected: isSelected,
        textColor: Colors.black,
        onTap: onTap,
      );
  }

  @override
  void initState() {
    _emailcontrol = TextEditingController();
    _passwordcontrol = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailcontrol.text;
    _passwordcontrol.text;
    _passwordController.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            functionListtile(
              icon: Icon(Icons.home),
              title: 'Home-Screen',
              isSelected: isHomeSelected,
              onTap: () {
                isHomeSelected = true;
                isListSelected = false;
                isImageSelected = false;
                setState(() {});
              },
            ),
            functionListtile(
              icon: Icon(Icons.list),
              title: 'List-Screen',
              isSelected: isListSelected,
              onTap: () {
                isHomeSelected = false;
                isListSelected = true;
                isImageSelected = false;
                setState(() {});
              },
            ),
            functionListtile(
              icon: Icon(Icons.image),
              title: 'image-Screen',
              isSelected: isImageSelected,
              onTap: () {
                isHomeSelected = false;
                isListSelected = false;
                isImageSelected = true;
                setState(() {});
              },
            ),
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 50,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           print('clicked');
      //         },
      //         child: Container(
      //             padding: EdgeInsets.all(4),
      //             color: Colors.blueAccent,
      //             child: Row(
      //               children: [
      //                 IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      //                 TextButton(
      //                     onPressed: () {},
      //                     child: Text(
      //                       'Menu-1',
      //                       style: TextStyle(color: Colors.black),
      //                     )),
      //                 SizedBox(
      //                   width: 132,
      //                 ),
      //                 CircleAvatar(
      //                   child: Image.asset('assets/image/avatar.png'),
      //                 )
      //               ],
      //             )),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           print('clicked');
      //         },
      //         child: Container(
      //             padding: EdgeInsets.all(4),
      //             color: Colors.blueAccent,
      //             child: Row(
      //               children: [
      //                 IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      //                 TextButton(
      //                     onPressed: () {},
      //                     child: Text(
      //                       'Menu-2',
      //                       style: TextStyle(color: Colors.black),
      //                     )),
      //                 SizedBox(
      //                   width: 132,
      //                 ),
      //                 CircleAvatar(
      //                   child: Image.asset('assets/image/avatar.png'),
      //                 )
      //               ],
      //             )),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           print('clicked');
      //         },
      //         child: Container(
      //             padding: EdgeInsets.all(4),
      //             color: Colors.blueAccent,
      //             child: Row(
      //               children: [
      //                 IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      //                 TextButton(
      //                     onPressed: () {},
      //                     child: Text(
      //                       'Menu-3',
      //                       style: TextStyle(color: Colors.black),
      //                     )),
      //                 SizedBox(
      //                   width: 132,
      //                 ),
      //                 CircleAvatar(
      //                   child: Image.asset('assets/image/avatar.png'),
      //                 )
      //               ],
      //             )),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          //autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                //autovalidateMode: AutovalidateMode.always,
                controller: _emailcontrol,
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onChanged: (String s) {
                  emailtext = s;
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  //label: Text('This is label'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordcontrol,
                keyboardType: TextInputType.emailAddress,
                onChanged: (String s) {
                  emailtext = s;
                  setState(() {});
                },
                validator: (String? value) {
                  if (value == null || value == '') {
                    return "Enter a password";
                  } else if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
                    return "Should contain at least one upper case";
                  } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(value)) {
                    return "Should contain at least one lower case";
                  } else if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
                    return "Should contain at least one digit";
                  } else if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value)) {
                    return "Should contain at least one Special character";
                  } else if (!RegExp(r'^.{10,}').hasMatch(value)) {
                    return "Must be at least 10 characters in length ";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                  ),
                  //label: Text('This is label'),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _passwordController,
                obscureText: isobsecuretext,
                keyboardType: TextInputType.number,
                validator: (String? s) {
                  if (s == null || s.isEmpty) {
                    return 'Please enter password';
                  } else if (s != _passwordController.text) {
                    return "Both password must be same!";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      //borderSide: BorderSide
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.black, width: 3)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isobsecuretext = !isobsecuretext;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_outlined,
                          color: isobsecuretext ? Colors.grey : Colors.green),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    _emailcontrol.text;
                    _passwordcontrol.text;

                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Success'),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.green,
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Error'),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        duration: Duration(seconds: 3),
                        action: SnackBarAction(
                          onPressed: () {},
                          label: 'Close',
                          textColor: Colors.black,
                        ),
                        showCloseIcon: true,
                        closeIconColor: Colors.black,
                      ));
                    }

                    setState(() {});
                  },
                  child: Text('Click')),
              //Text('Email: ${emailtext}'),
              Text('Email:${_emailcontrol.text} '),
              Text('Password: ${_passwordcontrol.text}'),
              ElevatedButton(
                  onPressed: () {
                    _emailcontrol.clear();
                    _passwordcontrol.clear();
                    setState(() {});
                  },
                  child: Text('Reset')),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginscreen2');
                },
                child: Text('go to login2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen1');
                },
                child: Text('go to screen1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilepage');
                },
                child: Text('go to Profile Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
