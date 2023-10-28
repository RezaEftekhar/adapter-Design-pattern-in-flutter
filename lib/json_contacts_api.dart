class JsonContactsApi {
  static const _contactsJson = '''
  {
    "contacts": [
      {
        "fullName": "reza eftekhar(JSON)",
        "email": "mailto:johndoe@json.com",
        "favourite": true
      },
      {
        "fullName": "Emma Doe (JSON)",
        "email": "mailto:emmadoe@json.com",
        "favourite": false
      },
      {
        "fullName": "Michael Roe (JSON)",
        "email": "mailto:michaelroe@json.com",
        "favourite": false
      }
    ]
  }
  ''';

  const JsonContactsApi();

  String getContactsJson() => _contactsJson;
}