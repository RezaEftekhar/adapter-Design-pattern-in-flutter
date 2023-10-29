import 'package:adapterexample/contact.dart';
import 'package:adapterexample/icontact_adapter.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  final IContactsAdapter adapter;
  final String headerText;

  const ContactsSection({
    required this.adapter,
    required this.headerText,
  });

  @override
  _ContactsSectionState createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  final List<Contact> contacts = [];

  void _getContacts() {
    setState(() {
      contacts.addAll(widget.adapter.getContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.headerText,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _ContactsSectionContent(
            contacts: contacts,
            onPressed: _getContacts,
          ),
        ),
      ],
    );
  }
}

class _ContactsSectionContent extends StatelessWidget {
  final List<Contact> contacts;
  final VoidCallback onPressed;

  const _ContactsSectionContent({
    required this.contacts,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return contacts.isEmpty
        ? ElevatedButton(
            onPressed: onPressed,
            child: Text('Get contacts'),
          )
        : Column(
            children: <Widget>[
              for (var contact in contacts)
                Card(
                  child: ListTile(
                    title: Text(contact.fullName),
                    subtitle: Text(contact.email),
                    trailing: Icon(
                      contact.favourite ? Icons.star : Icons.star_border,
                      color: contact.favourite ? Colors.yellow : null,
                    ),
                  ),
                )
            ],
          );
  }
}
