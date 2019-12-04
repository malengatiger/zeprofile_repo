import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:profile_app/functions.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      print(' 🍀 🍀 🍀 Launching URL ....');
      print(js.context['location']['href']);
      js.context.callMethod("open", ["https://github.com/malengatiger"]);
    }

    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 28),
          child: Row(
            children: <Widget>[
              Text(
                'Current Skills',
                style: Styles.blackBoldMedium,
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton(
                child: Text(
                  'Link to Current GitHub Repositories',
                  style: Styles.blueSmall,
                ),
                onPressed: () {
                  _launchURL();
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        DataTable(columns: [
          DataColumn(label: Text('  ')),
          DataColumn(
              label: Text(
            'Technology',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Rating',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Years Experience',
            style: Styles.blackBoldSmall,
          )),
        ], rows: [
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/corda.png'))),
            DataCell(Text('Corda')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/hyperledger3.png'))),
            DataCell(Text('Hyperledger Fabric')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/firebase.png'))),
            DataCell(Text('Firebase')),
            DataCell(Text('5')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/flutter.png'))),
            DataCell(Text('Flutter')),
            DataCell(Text('4')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/node1.png'))),
            DataCell(Text('Node js')),
            DataCell(Text('5')),
            DataCell(Text('4'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/mongo1.png'))),
            DataCell(Text('MongoDB')),
            DataCell(Text('4')),
            DataCell(Text('1'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/mysql2.png'))),
            DataCell(Text('MySQL')),
            DataCell(Text('5')),
            DataCell(Text('4'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/java-48.png'))),
            DataCell(Text('Java')),
            DataCell(Text('5')),
            DataCell(Text('15'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/springboot.png'))),
            DataCell(Text('SpringBoot')),
            DataCell(Text('5')),
            DataCell(Text('10'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/android-64.png'))),
            DataCell(Text('Native Android')),
            DataCell(Text('5')),
            DataCell(Text('10'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/apple.png'))),
            DataCell(Text('Native iOS')),
            DataCell(Text('5')),
            DataCell(Text('15'))
          ]),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 28),
          child: Text(
            'Current Toolset',
            style: Styles.blackBoldMedium,
          ),
        ),
        DataTable(columns: [
          DataColumn(label: Text('  ')),
          DataColumn(
              label: Text(
            'Tool',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Rating',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Years Experience',
            style: Styles.blackBoldSmall,
          )),
        ], rows: [
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/docker-64.png'))),
            DataCell(Text('Docker')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/vscode2.png'))),
            DataCell(Text('VSCode')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/intellij.png'))),
            DataCell(Text('IntelliJ')),
            DataCell(Text('5')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/android-64.png'))),
            DataCell(Text('Android Studio')),
            DataCell(Text('5')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/apple.png'))),
            DataCell(Text('XCode')),
            DataCell(Text('5')),
            DataCell(Text('4'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/git0.png'))),
            DataCell(Text('GitHub')),
            DataCell(Text('4')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/postman.png'))),
            DataCell(Text('Postman')),
            DataCell(Text('4')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/apple.png'))),
            DataCell(Text('Apple Mac OS')),
            DataCell(Text('N/A')),
            DataCell(Text('N/A'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/apple.png'))),
            DataCell(Text('Slack/Skype/Zoom etc.')),
            DataCell(Text('N/A')),
            DataCell(Text('N/A'))
          ]),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 28),
          child: Text(
            'Current Language Ecosystems',
            style: Styles.blackBoldMedium,
          ),
        ),
        DataTable(columns: [
          DataColumn(label: Text('  ')),
          DataColumn(
              label: Text(
            'Language',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Rating',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Years Experience',
            style: Styles.blackBoldSmall,
          )),
        ], rows: [
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/java-48.png'))),
            DataCell(Text('Java')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/ts1.png'))),
            DataCell(Text('Typescript')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 32, height: 32, child: Image.asset('assets/dart.png'))),
            DataCell(Text('Dart')),
            DataCell(Text('5')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/js2.png'))),
            DataCell(Text('Javascript')),
            DataCell(Text('4')),
            DataCell(Text('3'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/kotlin1.png'))),
            DataCell(Text('Kotlin')),
            DataCell(Text('3')),
            DataCell(Text('1'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64,
                height: 64,
                child: Image.asset('assets/swift1.png'))),
            DataCell(Text('Swift')),
            DataCell(Text('3')),
            DataCell(Text('2'))
          ]),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 28),
          child: Text(
            'Current Cloud Environments',
            style: Styles.blackBoldMedium,
          ),
        ),
        DataTable(columns: [
          DataColumn(label: Text('  ')),
          DataColumn(
              label: Text(
            'Cloud Provider',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Rating',
            style: Styles.blackBoldSmall,
          )),
          DataColumn(
              label: Text(
            'Years Experience',
            style: Styles.blackBoldSmall,
          )),
        ], rows: [
          DataRow(cells: [
            DataCell(SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/azure1.png'))),
            DataCell(Text('Microsoft Azure')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/gcp1.png'))),
            DataCell(Text('Google Cloud Platform')),
            DataCell(Text('5')),
            DataCell(Text('5'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96, height: 96, child: Image.asset('assets/ibm2.png'))),
            DataCell(Text('IBM Cloud')),
            DataCell(Text('4')),
            DataCell(Text('2'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/mongo1.png'))),
            DataCell(Text('MongoDB Atlas')),
            DataCell(Text('3')),
            DataCell(Text('1'))
          ]),
          DataRow(cells: [
            DataCell(SizedBox(
                width: 64, height: 64, child: Image.asset('assets/aws.png'))),
            DataCell(Text('Amazon Web Services')),
            DataCell(Text('3')),
            DataCell(Text('1'))
          ]),
        ]),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
