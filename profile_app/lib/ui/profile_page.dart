// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:profile_app/util/avatar.dart';
import 'package:profile_app/util/util.dart';

import '../util/constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.addStatusListener((status) {
      p('controller status: $status');
      if (status == AnimationStatus.completed) {
        p(".......... 💦 💦 💦 Forward Animation completed");
      }
    });
    controller.addListener(() {
      p('🍎 🍎 controller value: 🍎 ${animation.value}');
      setState(() {});
    });
    _startAnim();
  }

  bool isForward = false;
  _startAnim() {
    p(".......... 💦 💦 💦 Forward Animation starting .... 🍎");
    isForward = !isForward;
    if (isForward)
      controller.forward();
    else
      controller.reverse();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Card(
          color: Colors.brown[50],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _startAnim,
                    child: RoundAvatar(
                        path: 'assets/tiger.jpg',
                        radius: animation == null ? 0.0 : animation.value * 240,
                        fromNetwork: false),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: GestureDetector(
                      onTap: _startAnim,
                      child: Text(
                        'Aubrey Malabie',
                        textScaleFactor: 3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                        'A software engineer and developer that has a ton of experience building enterprise and consumer applications. With technology changing and improving at a much more dynamic pace it has become a significant challenge to keep up with the industry and new tools and technologies constantly evolving. '
                        'I endeavour to meet that challenge on a daily basis. While I have a multi-year background in the development of large internal corporate applications I have since transitioned to working with startups and led development of '
                        'cloud based applications and services with mobile apps as the front end experience.'
                        '\n\nI am a very fortunate person. I love what I do for a living! '),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      'Corda. Stellar. Hyperledger Fabric. Node. Android. Flutter. iOS. \n\nJava. Kotlin. Dart. Typescript. Javascript. Swift.\n\nDocker. SpringBoot. Serverless. Firebase. Firestore. MongoDB \n\nAzure. Google Cloud. IBM Cloud. Amazon Web Services',
                      style: Theme.of(context).textTheme.subtitle1,
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 48,
                            height: 48,
                            child: Image.asset('assets/git0.png')),
                        label: Text('Github'),
                        onPressed: () => html.window
                            .open(Constants.gitHubMain, 'adityadroid'),
                      ),
                      FlatButton.icon(
                          icon: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/pin.png')),
                          label: Text('Base Location'),
                          onPressed: () {}),
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/linkedin.png')),
                        label: Text('Linkedin'),
                        onPressed: () =>
                            html.window.open(Constants.linkedIn, 'adityadroid'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
