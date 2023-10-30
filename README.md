# adapterexample

## Adapter Design Pattern

The Adapter design pattern allows objects with incompatible interfaces to collaborate. In this project, the adapter pattern is employed to convert the data structures obtained from the JSON and XML APIs into a common data format suitable for the Flutter application. The adapters (`JsonContactsAdapter` and `XmlContactsAdapter`) act as intermediaries between the data sources and the application, enabling seamless integration of data from both sources.

### Project Structure

The project consists of the following components:

- `Contact`: A data model representing a contact with attributes such as full name, email, and favorite status.
- `JsonContactsApi`: A class providing a static JSON data source for contacts.
- `XmlContactsApi`: A class providing a static XML data source for contacts.
- `IContactsAdapter`: An interface defining the contract for contact data adapters.
- `JsonContactsAdapter` and `XmlContactsAdapter`: Concrete implementations of the `IContactsAdapter` interface for handling JSON and XML data, respectively.
- `AdapterExample`: The main Flutter application that displays contacts from both JSON and XML sources using the adapter pattern.
- `ContactsSection` and `_ContactsSectionContent`: Widgets responsible for rendering contact data in the Flutter application.

### Implementation

The JSON and XML data obtained from the respective APIs are parsed and converted into a common format using the adapter pattern. The `JsonContactsAdapter` and `XmlContactsAdapter` classes are responsible for parsing and converting the data into a list of `Contact` objects, which are then displayed in the Flutter application.

