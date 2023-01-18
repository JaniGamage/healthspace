import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:healthspace_test1/settings_screens/help/help_center.dart';
import 'package:healthspace_test1/sign_in_screens/legacyuser_form.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in.dart';

class SignUp_Donor extends StatefulWidget {
  const SignUp_Donor({Key? key}) : super(key: key);

  @override
  State<SignUp_Donor> createState() => _SignUp_DonorState();
}

class _SignUp_DonorState extends State<SignUp_Donor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          height: 150,
          color: Colors.white,
          child: Image.asset(
            "assets/logo.jpg",
            height: 60,
            width: 60,
          ),
        ),
        Container(
          height: 50,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 15),
          child: const Text(
            "Donor Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFF179797),
            ),
          ),
        ),
        Container(
          height:2000,
          color: Color(0xFF179797),
          child: MyCustomForm(),
        ),
      ]),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  //const MyCustomForm({super.key});
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  // Future save() async {
  //   var res = await http.post('http://localhost:8080/signup',
  //       headers: <String, String>{
  //         'Context-Type': 'application/json;charSet=UTF-8'
  //       },
  //       body: <String, String>{
  //         'email': user.email,
  //         'password': user.password
  //       });
  //   print(res.body);
  // }
  // Future<http.Response> uploadVideo(
  //     {required String uploadURL, required String filePath}) async {
  //   var res = await http.put(
  //     Uri.parse(uploadURL),
  //     headers: {'content-type': 'application/json'},
  //     body: <String, String>{
  //         'email': user.email,
  //         'password': user.password
  //       });
  //   print(res.body);
  //     }

  //User user = User('', '','','','','','');
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(60, 25, 25, 10),
          //   //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          //   child: TextField(
          //     // validator: (value) {
          //     //   if (value == null || value.isEmpty) {
          //     //     return 'Please enter some text';
          //     //   }
          //     //   return null;
          //     // },
          //     decoration: InputDecoration(
          //       //disabledBorder:InputBorder.none,
          //
          //       filled:true,
          //       border: OutlineInputBorder(
          //         borderRadius:BorderRadius.all(Radius.circular(30)),
          //         borderSide: BorderSide(color: Colors.white)
          //       ),
          //       hintText: 'Name',
          //       hintStyle: TextStyle(fontWeight: FontWeight.bold),
          //       fillColor: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 30, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter NIC or Drivers license';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'NIC/ Drivers License',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Address',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your gender';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Gender',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your birthday(DD/MM/YYYY)';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Birthday',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Age',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your weight';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Weight',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your blood group';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Blood group',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your deceases';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Deceases',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter expected donation';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Expected Donation',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please enter hospital';
              //   }
              //   return null;
              // },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Hospital',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              // controller: TextEditingController(text: user.email),
              // onChanged: (value) {
              //   user.email = value;
              // },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your e-mail';
                } else if (RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "Enter valid email";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'E-mail',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your contact number';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Contact number',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
          //   //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          //   child: TextFormField(
          //     validator: (value) {
          //       if (value == null || value.isEmpty) {
          //         return 'Please enter your role';
          //       }
          //       return null;
          //     },
          //     decoration: const InputDecoration(
          //       filled: true,
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(30)),
          //       ),
          //       hintText: 'role(PATIENT,DONOR,ORGANIZATION,HOSPITAL)',
          //       hintStyle: TextStyle(fontWeight: FontWeight.bold),
          //       fillColor: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password again';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.white),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                // enabledBorder: UnderlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 5, 5, 5),
            child: TextButton(
              style: const ButtonStyle(alignment: Alignment.center),
              onPressed: () {
              Navigator.push(
              context, MaterialPageRoute(builder: (_) => const LegacyUser_Form()));
              },
              child: const Text(
                'Enter Subordinate details',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationThickness: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250, 5, 5, 5),
            //padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 300),
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    //side: BorderSide(color: Colors.white,width: 3.0),
                    side: BorderSide(color: Colors.red, width: 5),
                  ),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SignIn()));
                }
                // Validate returns true if the form is valid, or false otherwise.
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              //child:OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                // children: [Icon(
                //   Icons.help,
                //   color: Colors.white,
                //   size: 30,
                //   //onPressed:(){},
                // ),]
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                        return Help();
                      }));
                    },
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
