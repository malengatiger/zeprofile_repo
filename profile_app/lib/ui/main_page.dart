import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_app/ui/profile_page.dart';
import 'package:profile_app/ui/projects_page.dart';
import 'package:profile_app/ui/skills_page.dart';
import 'package:profile_app/util/functions.dart';
import 'package:url_launcher/url_launcher.dart';
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
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Aubrey St Vincent Malabie'),
        ),
        actions: <Widget>[
          IconButton(
              // Use the FontAwesomeIcons class for the IconData
              icon: new Icon(FontAwesomeIcons.angellist),
              onPressed: () {
                print("Pressed");
              }),
        ],
        backgroundColor: Colors.brown[50],
        elevation: 0,
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16.0, top: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Builder. Craftsman. Software Engineer.  Entrepreneur.  Curious DLT Cat',
                    style: Styles.blackBoldSmall,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      _selectedIndex == 0
                          ? Container()
                          : FlatButton(
                              child: Text(
                                'Profile',
                                style: Styles.blueSmall,
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
                      _selectedIndex == 1
                          ? Container()
                          : FlatButton(
                              child: Text(
                                'Skills Matrix',
                                style: Styles.blueSmall,
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
                      _selectedIndex == 2
                          ? Container()
                          : FlatButton(
                              child: Text(
                                'Projects',
                                style: Styles.blueSmall,
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
            ),
            preferredSize: Size.fromHeight(100)),
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[50],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(
              'Profile',
              style: Styles.brownMedium,
            ),
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

  _launch() async {
    const url = 'https://github.com/malengatiger';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
