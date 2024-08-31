import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterpractise1/Navigator/screen2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  final ImagePicker picker = ImagePicker();
  XFile? pickedImage;
  // late TextEditingController _emailcontrol;
  // late TextEditingController _passwordcontrol;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _emailcontrol = TextEditingController();
  //   _passwordcontrol = TextEditingController();
  // }
  // @override
  // void dispose() {
  //   _emailcontrol.dispose();
  //   _passwordcontrol.dispose();
  //   super.dispose();
  // }

  bool isHomeselected = false;
  bool isListselected = false;

  Widget commonDrawer({
    required Widget icon,
    required String title,
    required bool isselected,
    Function()? onTap,
  }) {
    return ListTile(
      leading: icon,
      trailing: Icon(Icons.arrow_forward),
      title: Text(title),
      selectedTileColor: Colors.yellow,
      selectedColor: Colors.red,
      focusColor: Colors.red,
      selected: isselected,
      textColor: Colors.black,
      onTap: onTap,
    );
  }

  int isGroupValue = 0;
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  bool isCricketBox = false;
  bool isFootballBox = false;

  String? isDropDown;
  DateTime currentdate = DateTime.now();
  Future calenderFunction() async {
    var pickdate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000, 1, 1),
        lastDate: DateTime.now());
    currentdate = pickdate!;
    setState(() {});
  }

  final List<String> isDropDownList = [
    "vadodara",
    "Mumbai",
    "Gandhinagar",
    "banglore",
    "Delhi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen1'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      endDrawer: Drawer(
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext Context, int index) {
              index += 1;
              return Column(
                children: [
                  commonDrawer(
                    icon: Icon(Icons.home),
                    title: 'Home-Screen',
                    isselected: isHomeselected,
                    onTap: () {
                      isHomeselected = true;
                      isListselected = false;
                      setState(() {});
                    },
                  ),
                  commonDrawer(
                    icon: Icon(Icons.list),
                    title: 'List-Screen',
                    isselected: isListselected,
                    onTap: () {
                      isListselected = true;
                      isHomeselected = false;
                      setState(() {});
                    },
                  )
                ],
              );
            }),
      ),
      body: ListView(
        children: [
          pickedImage != null
              ? CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue,
                  backgroundImage: FileImage(File((pickedImage!.path))),
                )
              : CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/image/avatar.png'),
                ),

          ElevatedButton(
              onPressed: () async {
                pickedImage =
                    await picker.pickImage(source: ImageSource.camera);
                setState(() {});
              },
              child: Text('Pick Image')),
          // Row(
          //   children: [
          //     Radio(
          //         value: 2,
          //         groupValue: isGroupValue,
          //         onChanged: (value) {
          //           isGroupValue = value!;
          //           setState(() {});
          //         }),
          //     Text('Male'),
          //     Radio(
          //         value: 1,
          //         groupValue: isGroupValue,
          //         onChanged: (value) {
          //           isGroupValue = value!;
          //           setState(() {});
          //         }),
          //     Text('Female'),
          //   ],
          // ),
          Column(
            children: [
              RadioListTile(
                  title: Text('Male'),
                  activeColor: Colors.red,
                  selected: isMaleSelected,
                  selectedTileColor: Colors.cyanAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  value: 3,
                  groupValue: isGroupValue,
                  onChanged: (value) {
                    isGroupValue = value!;
                    isMaleSelected = true;
                    isFemaleSelected = false;
                    setState(() {});
                  }),
              RadioListTile(
                  title: Text('Female'),
                  activeColor: Colors.red,
                  value: 4,
                  groupValue: isGroupValue,
                  selected: isFemaleSelected,
                  selectedTileColor: Colors.cyanAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onChanged: (value) {
                    isGroupValue = value!;
                    isMaleSelected = false;
                    isFemaleSelected = true;
                    setState(() {});
                  }),
              CheckboxListTile(
                  title: Text('Cricket'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isCricketBox,
                  onChanged: (bool? value) {
                    isCricketBox = value!;
                    setState(() {});
                  }),
              CheckboxListTile(
                  title: Text('Football'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isFootballBox,
                  onChanged: (bool? value) {
                    isFootballBox = value!;
                    setState(() {});
                  }),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DropdownButton(
                      icon: Icon(Icons.arrow_circle_down),
                      value: isDropDown,
                      isExpanded: true,
                      hint: Text('select city'),
                      items: isDropDownList.map((element) {
                        return DropdownMenuItem(
                            value: element, child: Text(element));
                      }).toList(),
                      // DropdownMenuItem(
                      //     value: 'vadodara', child: Text('Vadodara city')),
                      // DropdownMenuItem(
                      //     value: 'Rajkot', child: Text('Rajkot city')),
                      // DropdownMenuItem(
                      //     value: 'surat', child: Text('Surat city')),
                      onChanged: (value) {
                        isDropDown = value!;
                        setState(() {});
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                            'Date of Birth: ${DateFormat.yMMMd().format(currentdate)}'),
                        IconButton(
                            onPressed: () {
                              calenderFunction();
                            },
                            icon: Icon(Icons.calendar_month))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext C)
              // {
              //   return screen2(
              //     arguments:
              //   );
              // })
              Navigator.pushNamed(
                  context,
                  arguments: {
                    "gender": isGroupValue == 1 ? "Male" : "Female",
                    "Cricket": isCricketBox ? "cricket" : "",
                    "football": isFootballBox ? "football" : "",
                    "citys": isDropDown,
                    "dob": DateFormat.yMMMd().format(currentdate)
                  },
                  '/screen2');
            },
            child: Text('go to screen2'),
          ),
        ],
      ),
    );
  }
}
