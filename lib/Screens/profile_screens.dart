import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // const Profile({Key? key}) : super(key: key);
  Map userData = {};
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // userData = ModalRoute.of(context).settings.arguments;
    // print(userData);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter frist name',
                    labelText: 'Frist Name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  // validator: (Value) {
                  //   if (Value!.isEmpty) {
                  //     return "Please enter frist name";
                  //   } else if (Value.length < 5) {
                  //     return "Plase enter atleast 5 characters";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 16),
      
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Please enter frist name"),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Last name',
                    labelText: 'Last Name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter email ',
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter mobile number',
                    labelText: 'Mobile number',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    child: Container(
                      height: 45,
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: Text(
                          "UPDATE",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState == null) {
                            print('Form submitted.');
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                ),
            ],
          )),
        ),
      ),
    );
  }
}
