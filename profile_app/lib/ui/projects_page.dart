import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profile_app/util/functions.dart';
import 'package:profile_app/util/util.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  var projectCards = [
    ProjectCard(
        images: [
          Image.asset('assets/mongo1.png'),
          Image.asset('assets/node1.png'),
          Image.asset('assets/flutter.png'),
          Image.asset('assets/firebase.png'),
          Image.asset('assets/gcp1.png'),
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
              label: 'Taxi Dispatcher App (Flutter/Dart) on GitHub'),
          MyLink(
              link:
                  'https://github.com/malengatiger/dancer-repo/tree/master/route_walker',
              label: 'Route Builder App (Flutter/Dart) on GitHub'),
        ],
        text:
            'AftaRobot is a startup project seeks to formalize operations. planning and commuter engagement for the informal minibus taxi industry prevalent in most developing countries. '
            'The platform helps the largely informal industry transform its daily operations and builds capacities that allow it to create new revenue models and opportunities'
            'AftaRobot is a suite or platform of services that are hosted via simple Docker images or Kubernetes clusters on any of the major cloud providers. '
            '\n\nThe platform data is stored on a MongoDB Atlas document based NOSQL database that drives the push messaging integration.'
            '\n\nThe front end is composed of a suite of Flutter based Android apps for each of the stakeholders in the minibus taxi ecosystem. The users of the platform, which includes fleet owners, taxi associations, '
            'dispatchers, drivers and commuters collaborate and communicate with each other using push messaging (Firebase Cloud Messaging) directed at their specific apps.'),
    ProjectCard(
        images: [
          Image.asset('assets/corda.png'),
          Image.asset('assets/kotlin1.png'),
          Image.asset('assets/dart-icon.png'),
          Image.asset('assets/springboot.png')
        ],
        title: 'Invoice Discounting & Finance Platform',
        links: [
          MyLink(
              link:
                  'https://github.com/malengatiger/bfn-super-repo2020/tree/master/bfn-atlas2',
              label: 'BFN Corda DLT in Kotlin'),
          MyLink(
              link:
                  'https://github.com/malengatiger/bfn-super-repo2020/tree/master/anchor',
              label: 'Anchor Investor app (Android & iOS) built on Flutter'),
        ],
        text:
            'The platform is part of a corporate R&D effort to study the feasibility of migrating an existing legacy application to a modern platform. The core of the platform is a set of nodes running Corda DLT '
            'that manage the transactions and other operations for each of the customers, suppliers and payment gateways on the business network.'
            '\n\nA SpringBoot Web application serves the DLT api to mobile app users on both Android and iOS apps '),
    ProjectCard(
        images: [
          Image.asset('assets/stellar.png'),
          Image.asset('assets/java-48.png'),
          Image.asset('assets/dart-icon.png'),
          Image.asset('assets/springboot.png')
        ],
        title: 'Stellar Anchor Backend',
        links: [
          MyLink(
              link:
                  'https://github.com/malengatiger/bfn-super-repo2020/tree/master/bfn-atlas2',
              label: 'BFN Corda DLT in Kotlin'),
          MyLink(
              link:
                  'https://github.com/malengatiger/bfn-super-repo2020/tree/master/anchor',
              label: 'Anchor Investor app (Android & iOS) built on Flutter'),
        ],
        text:
            'The platform is part of a corporate R&D effort to study the feasibility of migrating an existing legacy application to a modern platform. The core of the platform is a set of nodes running Corda DLT '
            'that manage the transactions and other operations for each of the customers, suppliers and payment gateways on the business network.'
            '\n\nA SpringBoot Web application serves the DLT api to mobile app users on both Android and iOS apps '),
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
              link: 'https://github.com/malengatiger/new-monitor-repo',
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
    ProjectCard(
        images: [
          Image.asset('assets/mongo1.png'),
          Image.asset('assets/java-48.png'),
          Image.asset('assets/dart.png')
        ],
        title: 'Mobile Payments Backend',
        text:
            'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage'),
    ProjectCard(
        images: [
          Image.asset('assets/mongo1.png'),
          Image.asset('assets/java-48.png'),
          Image.asset('assets/dart.png')
        ],
        title: 'Stellar Anchor Backend',
        text:
            'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage'),
    ProjectCard(
        images: [
          Image.asset('assets/mongo1.png'),
          Image.asset('assets/java-48.png'),
          Image.asset('assets/flutter.png')
        ],
        title: 'Flutter/MongoDB Mobile Plugin',
        links: [
          MyLink(
              link: 'https://github.com/malengatiger/flutter-mongdb-mobile',
              label: 'GitHub'),
        ],
        subText:
            'AftaRobot shaved 65% off networking costs for devices on the platform',
        text:
            'I built and published a plugin to enable Flutter apps to use a MongoDB Mobile database for local storage. This plugin is used in the AftaRobot project to enable offline features. '),
  ];

  List<StaggeredTile> mList = [];
  void setTiles() {
    p('🍎 🍎 🍎 Setting tiles ....');
    var m = MediaQuery.of(context);
    if (m.size.width < 720) {
      mList = const <StaggeredTile>[
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
      ];
    } else {
      mList = const <StaggeredTile>[
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
        const StaggeredTile.fit(1),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    setTiles();
    return Container(
        color: Colors.brown[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: StaggeredGridView.count(
            primary: false,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            crossAxisCount: 2,
            children: projectCards,
            staggeredTiles: mList,
          ),
        ));
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

    List<Widget> productIcons = [];
    images.forEach((im) {
      productIcons.add(SizedBox(
        width: 32,
        height: 32,
        child: im,
      ));
      productIcons.add(SizedBox(width: 20));
    });

    List<Widget> widgets = List();
    widgets.add(
      Text(
        title,
        style: Styles.blackBoldSmall,
      ),
    );
    widgets.add(SizedBox(
      height: 8,
    ));
    var list = List<Widget>();
    widgets.add(Wrap(
      children: productIcons,
    ));

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
      widgets.add(Text(
        'Example code on GitHub',
        style: Styles.blackBoldSmall,
      ));
      links.forEach((l) {
        widgets.add(FlatButton(
            onPressed: () {
              _launchURL(l.link);
            },
            child: Row(
              children: <Widget>[
                Text(
                  l.label,
                  style: Styles.blueTiny,
                ),
              ],
            )));
      });
    }

    var baseSize = 200.0;
    return Container(
      height: links == null ? baseSize : (links.length * 120) + baseSize,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return widgets.elementAt(index);
              }),
        ),
      ),
    );
  }
}

class MyLink {
  final String link, label;
  MyLink({this.link, this.label});
}
