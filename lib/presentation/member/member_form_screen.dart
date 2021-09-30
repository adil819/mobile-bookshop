import 'package:flutter/material.dart';
import 'package:flutter_day_one/data/model/member.dart';

import 'member_view_model.dart';

class MemberFormScreen extends StatefulWidget {
  // const MemberFormScreen({Key? key}) : super(key: key);
  MemberViewModel memberViewModel = MemberViewModel();

  @override
  _MemberFormScreenState createState() => _MemberFormScreenState();
}

class _MemberFormScreenState extends State<MemberFormScreen> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextFormField textFormField(TextEditingController field, String placeholder,  String emptyAlert){
    return TextFormField(
        controller: field,
        decoration: InputDecoration(hintText: placeholder),
        validator:(value) {
          if (value == null || value.isEmpty){
            return emptyAlert;
          } else {
            return null;
          }
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Member'),),
      body: Container(
          child: Form(
              key: _formKey,
              child: Column(
                  children: [
                    textFormField(firstName, 'Enter your first name', 'Please enter!'),
                    textFormField(lastName, 'Enter your last name', 'Please enter!'),
                    textFormField(email, 'Enter your email', 'Please enter!'),
                    textFormField(password, 'Enter your password', 'Please enter!'),
                    // textFormField(title, 'Enter Book title', 'Please enter!'),
                    // textFormField(description, 'Enter Book description', 'Please enter!'),
                    // textFormField(publisher, 'Enter Book publisher', 'Please enter!'),
                    // textFormField(pages, 'Enter Book pages', 'Please enter!'),
                    // textFormField(year, 'Enter Book year', 'Please enter!'),
                    // textFormField(language, 'Enter Book language', 'Please enter!'),
                    // textFormField(price, 'Enter Book price', 'Please enter!'),
                    // textFormField(stock, 'Enter Book stock', 'Please enter!'),

                    TextButton(
                        onPressed: (){
                          setState(() {
                            widget.memberViewModel.addMember(Member(
                              firstName: firstName.text,
                              lastName: lastName.text,
                              email: email.text,
                              password: password.text,
                              status: 1, //stock.value
                            ));
                          },
                          );
                          Navigator.pop(context, 'done');
                        },
                        child: Text('Submitcode')
                    ),




                  ]
              )
          )

      ),
    );
  }
}
