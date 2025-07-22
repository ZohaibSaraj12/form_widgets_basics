import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool obscureText = false;
  bool c = false;
  Icon icon1 = Icon(Icons.visibility_off_outlined);
  Icon icon2 = Icon(Icons.visibility_outlined);
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Widgets Basic"), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.values[
                  DateTime.daysPerWeek
                ],
                controller: password,
                //autofocus: true,
                obscureText: obscureText,
                // obscuringCharacter: "*",
                cursorColor: Colors.black,
                cursorOpacityAnimates: true,
                maxLength: 10,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email_outlined),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                        c = !c;
                      });
                    },
                    icon: c == true ? icon2 : icon1,
                  ),
                  label: Text("Password"),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  hint: Text("Enter your password"),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            //ElevatedButton(onPressed: onPressed, child: child)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20.0,
              children: [
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    elevation: 5.0,
                    side: BorderSide(color: Colors.deepOrange, width: 3.0),
                  ),
                  onPressed: () {
                    debugPrint(password.text.toString());
                  },
                  child: Text("Login"),
                ),
                IconButton(
                  onPressed: () {
                    password.clear();
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    side: BorderSide(
                      color: Colors.red,
                      width: 3.0,
                    ),
                    elevation: 5.0
                  ),
                  icon: Icon(Icons.clear),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
