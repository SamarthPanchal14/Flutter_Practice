import 'package:flutter/material.dart';

class row_colomn extends StatefulWidget {
  const row_colomn({Key? key}) : super(key: key);

  @override
  State<row_colomn> createState() => _row_colomnState();
}

class _row_colomnState extends State<row_colomn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP'),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person))
        ],
        )
      );
  }
}
