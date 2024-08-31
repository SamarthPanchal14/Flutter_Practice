import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  final dynamic arguments;
  const screen2({Key? key, required this.arguments}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {

  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen2'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text('gender: ${widget.arguments['gender']}'),
          Text('hobbie: ${widget.arguments['Cricket']},${widget.arguments['football']}'),
          Text('citys: ${widget.arguments['citys']}'),
          Text('dob: ${widget.arguments['dob']}'),

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/screen3');
            },
            child: Text('go to screen3'),
          ),
        ],
      ),
    );
  }
}
