import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController EmailContoroller = TextEditingController();
  TextEditingController PasseordContoroller = TextEditingController();
  GlobalKey<FormState> formkey= GlobalKey();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.all(15),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "enter Your email",
                  label: Text("email"),
                  hintStyle: TextStyle(
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                ),
                controller: EmailContoroller,
                validator: (value) {
                  if((value?? '').isEmpty){
                    return "Enter your email";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: PasseordContoroller,
                decoration: InputDecoration(
                  hintText: "enter your password",
                  label: Text(
                    "password",
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blueAccent,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 4)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.blueAccent,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    icon: Icon(
                      obscure ? Icons.visibility_off : Icons.visibility,
                      color: obscure ? Colors.blueAccent : Colors.blueGrey,
                    ),
                  ),
                ),
                obscureText: obscure,
                obscuringCharacter: "*",
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return "please enter your password";
                  } else if ((value?.length ?? 0) < 8) {
                    return " passsword can't to be less  than  8 characters";
                  } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
                    return " Password Must contain  at least one capital letter";
                  } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
                    return " Password Must contain  at least one numbers";
                  }else if(!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value??'')){
                    return " Password Must contain  at least one spacial characters";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                      print(EmailContoroller.text);
                      print(PasseordContoroller.text);
                      // Fluttertoast.showToast(
                      //     msg: "logon is successfully",
                      //     toastLength: Toast.LENGTH_LONG,
                      //     gravity: ToastGravity.BOTTOM,
                      //     timeInSecForIosWeb: 2,
                      //     backgroundColor: Colors.blue,
                      //     textColor: Colors.black,
                      //     fontSize: 16.0
                      // );
                    }
                  },
                  child: Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}
