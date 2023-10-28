import 'dart:convert';

import 'package:adapterexample/contact.dart';
import 'package:adapterexample/icontact_adapter.dart';
import 'package:adapterexample/json_contacts_api.dart';

class JsonContactsAdapter implements IContactsAdapter {
  const JsonContactsAdapter({
    this.api = const JsonContactsApi(),
  });

  final JsonContactsApi api;

  @override
  List<Contact> getContacts() {
    final contactsJson = api.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);

    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactsList = contactsJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;

      return Contact(
        fullName: contactJson['fullName'] as String,
        email: contactJson['email'] as String,
        favourite: contactJson['favourite'] as bool,
      );
    }).toList();

    return contactsList;
  }
}