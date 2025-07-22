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
                
                //autofocus: true,
                obscureText: obscureText,
                // obscuringCharacter: "*",
                cursorColor: Colors.black,
                cursorOpacityAnimates: true,
                maxLength: 5,
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
          ],
        ),
      ),
    );
  }
}
