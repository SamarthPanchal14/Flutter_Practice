import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  void _simpleDialoge() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hello world!!'),
            ),
          );
        });
  }

  void _alertDialog() {
    showDialog(
        barrierDismissible: true,
        useSafeArea: true,
        barrierLabel: 'barrierLabel',
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            title: Text('Text title'),
            icon: Icon(Icons.warning_outlined),
            content: Text('''
       The framework can call this method multiple times over the lifetime of a StatefulWidget. For example, if the widget is inserted into the tree in multiple locations, the framework will create a separate State object for each location. Similarly, if the widget is removed from the tree and later inserted into the tree again, the framework will call createState again to create a fresh State object, simplifying the 
        lifecycle of State objects. Copied from StatefulWidget.
        ''', textAlign: TextAlign.justify),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          );
        });
  }

  void _aboutDialog() {
    showDialog(
      context: context,
      barrierLabel: 'barrierLabel',
      barrierColor: Colors.pink.shade100,
      useSafeArea: true,
      builder: (BuildContext context) {
        return const AboutDialog(
          applicationIcon: Icon(Icons.app_blocking),
          applicationName: 'My App',
          applicationVersion: '1.0.0',
          applicationLegalese: '''
       The framework can call this method multiple times over the lifetime of a StatefulWidget. For example, if the widget is inserted into the tree in multiple locations, the framework will create a separate State object for each location. Similarly, if the widget is removed from the tree and later inserted into the tree again, the framework will call createState again to create a fresh State object, simplifying the 
        lifecycle of State objects. Copied from StatefulWidget.
        ''',
          children: [
            Text('Hello'),
            Text('World'),
          ],
        );
      },
    );
  }

  void _showOptions() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      backgroundColor: Colors.pink.shade100,
      isScrollControlled: true, // Allows the bottom sheet to be full screen if needed
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CloseButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  hintText: "First Name",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  hintText: "Last Name",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  void _logoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Logout'),
          content: const Text('Are you sure want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                //_preferences.remove(prefIsLogin);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                      (Route r) => false,
                );
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilePage'),
        centerTitle: true,
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/avatar.png',
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('Edit Profile'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('Privacy Policy'),
              leading: Icon(Icons.privacy_tip_outlined),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                _simpleDialoge();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('about us'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                _aboutDialog();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('send feedback'),
              leading: Icon(Icons.feedback),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                _showOptions();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('help and support'),
              leading: Icon(Icons.help_outline),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                _alertDialog();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('Login'),
              leading: Icon(Icons.login),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {_logoutDialog();},
            ),
          ),
        ],
      ),
    );
  }
}
