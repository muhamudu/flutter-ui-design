import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HelpForm extends StatefulWidget {
  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? messagetitle;
  String? message;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildMessageTitleFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMessageFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Send Message",
            press: () {
              if (_formKey.currentState!.validate()) {
                // Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildMessageFormField() {
    return TextFormField(
      onSaved: (newValue) => message = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kMessageNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kMessageNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.multiline,
      minLines: null,
      maxLines: null,
      decoration: InputDecoration(
        labelText: "Message",
        hintText: "Type your Message",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildMessageTitleFormField() {
    return TextFormField(
        onSaved: (newValue) => messagetitle = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kMessageTitleNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kMessageTitleNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Message Title",
          hintText: "Enter your Message Title",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ));
  }
}
