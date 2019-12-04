import 'dart:html' as html;

import 'package:flutter/material.dart';

import '../constants.dart';

class ProfilePage extends StatelessWidget {
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
                  CircleAvatar(
                    radius: 200,
                    backgroundImage: Image.asset('assets/tiger.jpg').image,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Aubrey Malabie',
                    textScaleFactor: 3,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                        'A software engineer and developer that has a ton of experience building applications. With technology changing and improving at a much more dynamic pace it has become a significant challenge to keep up with the industry and new tools and technologies constantly evolving. '
                        'I endeavour to meet that challenge on a daily basis. While I have a multi-year background in the development of large internal corporate applications I have since transitioned to working with startups and led development of '
                        'cloud based applications and services with mobile apps as the front end experiece.'
                        '\n\nI am a very fortunate person. I love what I do for a living! '),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      'Corda. Hyperledger. Node. Android. Flutter. iOS. Java. Javascript. Dart. Typescript. Swift. Docker. Azure. Google Cloud. IBM Cloud. Amazon Web Services',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
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
