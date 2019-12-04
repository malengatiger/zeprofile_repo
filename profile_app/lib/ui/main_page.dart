import 'dart:async';
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_app/functions.dart';
import 'package:profile_app/ui/profile_page.dart';
import 'package:profile_app/ui/projects_page.dart';
import 'package:profile_app/ui/skills_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Completer<WebViewController> _controller = Completer();
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    ProfilePage(),
    SkillsPage(),
    ProjectsPage(),
  ];

  @override
  void initState() {
    super.initState();
//    _launchURL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Aubrey Malabie'),
        ),
        actions: <Widget>[
          IconButton(
              // Use the FontAwesomeIcons class for the IconData
              icon: new Icon(FontAwesomeIcons.angellist),
              onPressed: () {
                print("Pressed");
              }),
        ],
        backgroundColor: Colors.brown[100],
        elevation: 0,
        bottom: PreferredSize(
            child: Column(
              children: <Widget>[
                Text(
                  'Builder.  Craftsman.  Software Engineer.   Entrepreneur.  Curious DLT Cat',
                  style: Styles.blackBoldMedium,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        'Profile',
                        style: Styles.blueMedium,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    FlatButton(
                      child: Text(
                        'Skills Matrix',
                        style: Styles.blueMedium,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    FlatButton(
                      child: Text(
                        'Projects',
                        style: Styles.blueMedium,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
            preferredSize: Size.fromHeight(80)),
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[50],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Skills Matrix'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }

  _launchURL() async {
    print(' 🍀 🍀 🍀 Launching URL ....');
    print(js.context['location']['href']);
    js.context.callMethod("open", ["https://github.com/malengatiger"]);
  }
}
