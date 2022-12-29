import 'package:flutter/material.dart';

void main() => runApp(const ProfileDataPage());

class ProfileDataPage extends StatelessWidget {
  const ProfileDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Korisnički podaci';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 20.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(appTitle),
        ),
        body: const ProfileDataForm(),
      ),
    );
  }
}

class ProfileDataForm extends StatefulWidget {
  const ProfileDataForm({super.key});

  @override
  ProfileDataFormState createState() {
    return ProfileDataFormState();
  }
}

class ProfileDataFormState extends State<ProfileDataForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'username';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Korisničko ime',
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'email';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'E-Mail adresa',
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'password';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Lozinka',
            ),
            obscureText: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
