import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/functions.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      print(' 🍀 🍀 🍀 Launching URL ....');
      print(js.context['location']['href']);
      js.context.callMethod("open", ["https://github.com/malengatiger"]);
    }

    try {
      return Container(
        color: Colors.brown[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView(
            children: <Widget>[
              ProjectCard(
                  images: [
                    Image.asset('assets/mongo1.png'),
                    Image.asset('assets/node1.png'),
                    Image.asset('assets/flutter.png'),
                    Image.asset('assets/firebase.png'),
                    Image.asset('assets/azure1.png')
                  ],
                  title: 'AftaRobot Mobility Platform',
                  links: [
                    MyLink(
                        link:
                            'https://github.com/malengatiger/dancer-repo/tree/master/dancer-3033-v2',
                        label: 'AftaRobot Node Backend API on GitHub'),
                    MyLink(
                        link:
                            'https://github.com/malengatiger/dancer-repo/tree/master/marshalx',
                        label: 'Taxi Dispatcher App on GitHub'),
                    MyLink(
                        link:
                            'https://github.com/malengatiger/dancer-repo/tree/master/marshalx',
                        label: 'Route Builder App on GitHub'),
                  ],
                  text:
                      'AftaRobot seeks to formalize operations and planning for the informal minibus taxi industry prevalent in most developing countries. '
                      'The services are hosted as a set of Docker containers on Azure and taxi operators interact with these services via mobile devices and web portals.'),
              ProjectCard(
                  images: [
                    Image.asset('assets/mongo1.png'),
                    Image.asset('assets/java-48.png'),
                    Image.asset('assets/flutter.png')
                  ],
                  title: 'Flutter/MongoDB',
                  links: [
                    MyLink(
                        link:
                            'https://github.com/malengatiger/flutter-mongdb-mobile',
                        label: 'GitHub'),
                  ],
                  subText:
                      'AftaRobot shaved 65% off networking costs for devices on the platform',
                  text:
                      'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage. This plugin is used in the AftaRobot project to enable offline features. '),
              ProjectCard(
                  images: [
                    Image.asset('assets/corda.png'),
                    Image.asset('assets/java-48.png'),
                    Image.asset('assets/dart-icon.png'),
                    Image.asset('assets/springboot.png')
                  ],
                  title: 'Invoice Discounting Platform',
                  text:
                      'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage'),
              ProjectCard(
                  images: [
                    Image.asset('assets/fabric1.png'),
                    Image.asset('assets/node1.png'),
                    Image.asset('assets/ts1.png'),
                    Image.asset('assets/android-64.png'),
                    Image.asset('assets/ibm2.png'),
                  ],
                  title: 'Deaths & Insurance Blockchain',
                  text:
                      'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage'),
              ProjectCard(
                  images: [
                    Image.asset('assets/mongo1.png'),
                    Image.asset('assets/java-48.png'),
                    Image.asset('assets/dart.png')
                  ],
                  title: 'National Project Monitor',
                  links: [
                    MyLink(
                        link:
                            'https://github.com/malengatiger/new-monitor-repo',
                        label: "Code on GitHub")
                  ],
                  text:
                      'The National Project Monitor is a set of cloud based services and Android apps used by housing agencies of the South African government to help manage and monitor community housing and infrastructure projects'),
              ProjectCard(
                  images: [
                    Image.asset('assets/mongo1.png'),
                    Image.asset('assets/java-48.png'),
                    Image.asset('assets/dart.png')
                  ],
                  title: 'Land & Property Investment Platform',
                  text:
                      'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage'),
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 600,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
          ),
        ),
      );
    } catch (e, s) {
      print(s);
    }
  }
}

class ProjectCard extends StatelessWidget {
  final List<Image> images;
  final String title, text, subText;
  final List<MyLink> links;

  ProjectCard(
      {@required this.images,
      @required this.title,
      @required this.text,
      this.links,
      this.subText});

  @override
  Widget build(BuildContext context) {
    _launchURL(String link) async {
      print(' 🍀 🍀 🍀 Launching URL ....');
      js.context.callMethod("open", [link]);
    }

    List<Widget> widgets = List();
    widgets.add(
      Text(
        title,
        style: Styles.blackBoldMedium,
      ),
    );
    widgets.add(SizedBox(
      height: 8,
    ));
    var list = List<Widget>();
    images.forEach((im) {
      list.add(SizedBox(
        width: 64,
        height: 64,
        child: im,
      ));
      list.add(SizedBox(width: 20));
    });
    widgets.add(Row(
      children: list,
    ));
    widgets.add(SizedBox(
      height: 20,
    ));
    widgets.add(Text(
      text,
      style: TextStyle(fontWeight: FontWeight.normal),
    ));
    widgets.add(SizedBox(
      height: 20,
    ));
    subText == null ? widgets.add(Container()) : widgets.add(Text(subText));
    if (links != null) {
      links.forEach((l) {
        widgets.add(FlatButton(
            onPressed: () {
              _launchURL(l.link);
            },
            child: Row(
              children: <Widget>[
                Text(
                  l.label,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w100),
                ),
              ],
            )));
      });
    }

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, index) {
              return widgets.elementAt(index);
            }),
      ),
    );
  }
}

class MyLink {
  final String link, label;
  MyLink({this.link, this.label});
}
