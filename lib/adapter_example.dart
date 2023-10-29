import 'package:adapterexample/contacts_section.dart';
import 'package:adapterexample/json_contacts_adapter.dart';
import 'package:adapterexample/xml_contacts_adapter.dart';
import 'package:flutter/material.dart';

class AdapterExample extends StatelessWidget {
  const AdapterExample();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adapter Pattern Example'),
        ),
        body: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContactsSection(
                  adapter: JsonContactsAdapter(),
                  headerText: 'Contacts from JSON API:',
                ),
                SizedBox(height: 20.0),
                ContactsSection(
                  adapter: XmlContactsAdapter(),
                  headerText: 'Contacts from XML API:',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}