import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController EmailContoroller = TextEditingController();
  TextEditingController PasseordContoroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 25,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/login.png',
                width: 130,
                height: 130,
              )),
          SizedBox(
            height: 60,
          ),
          Text(
            "Log In",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: "enter Your email",
                    label: Text("email"),
                    labelStyle: TextStyle(color: Colors.white70),
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orangeAccent[400],
                    ),
                  ),
                  controller: EmailContoroller,
                  validator: (value) {
                    if ((value ?? '').isEmpty) {
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
                    labelStyle: TextStyle(color: Colors.white70),
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.purple, width: 2)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.orangeAccent[400],
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: Icon(
                        obscure ? Icons.visibility_off : Icons.visibility,
                        color: obscure
                            ? Colors.orangeAccent[400]
                            : Colors.orangeAccent,
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
                    } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                        .hasMatch(value ?? '')) {
                      return " Password Must contain  at least one spacial characters";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.check_box,
                          size: 35,
                          color: Colors.orange,
                        )),
                    Expanded(
                        child: Text(
                      "Register Me",
                      style: TextStyle(color: Colors.white),
                    )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(color: Colors.purple),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                MaterialButton(
                  color: Colors.purple,
                  minWidth: 450,
                  height: 60,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
                  onPressed: () {
                    print(EmailContoroller.text);
                    print(PasseordContoroller.text);
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        Text("Or Login In With ",style:  TextStyle(color: Colors.white),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.purple,
                  ),
                ),
                child: Image.asset(
                  'assets/images/goole.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.purple,
                  ),
                ),
                child: Image.asset(
                  'assets/images/facebook.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.purple,
                  ),
                ),
                child: Image.asset(
                  'assets/images/tweitter.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Don't Have Accout ? ",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sgin up",
                    style: TextStyle(color: Colors.purple),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
