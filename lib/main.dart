import 'package:flutter/material.dart';
import 'package:healthapp/newpage.dart';
import 'package:healthapp/ssignup.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool a = true;

  void change (){
    setState(() {
      a = !a;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text("Hamro Swyastha",style: TextStyle(fontSize: 24,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset("assets/logo.png",scale: 2.5,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Log In",style: TextStyle(color: Colors.red,fontSize: 24),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: username,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: password,
                obscureText: a,
                decoration: InputDecoration(
                  suffix: GestureDetector(
                      onTap: change,
                      child: Icon(Icons.visibility)),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?"),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage(username.text, password.text)));

            },
                child: Text("Log In")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an account ? "),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      });
                    },
                    child: Text("Sign UP?",style: TextStyle(color: Colors.blue),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}





