import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hotelscreen extends StatefulWidget {
  const hotelscreen({Key? key}) : super(key: key);

  @override
  State<hotelscreen> createState() => _hotelscreenState();
}

class _hotelscreenState extends State<hotelscreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.zero)),
        toolbarHeight: 100,
        backgroundColor: Colors.white60,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
                child: Image.asset(
                  'assets/images/setting.jpg',
                  width: 20,
                )),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            maxLines: 2,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[300],
              hintText: 'Manali\nAug31-Sep1 . 2guests',
              hintStyle: const TextStyle(color: Colors.black87),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              prefixIcon: const Icon(Icons.arrow_back),
            ),
            onChanged: (value) {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Display Total Price',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          FlutterSwitch(
                            width: 55,
                            activeIcon: const FaIcon(FontAwesomeIcons.check),
                            activeColor: Colors.black,
                            value: _switchValue,
                            onToggle: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Includes all fees, before taxes',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
