


import 'package:flutter/material.dart';

import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Sign up',style: TextStyle(color: Colors.deepPurple,fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Phone no.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: a,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffix: GestureDetector(
                      onTap: (){
                        setState(() {
                          a = !a;

                        });
                      },

                      child: Icon(Icons.visibility)),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: a,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffix: GestureDetector(
                      onTap: (){
                        setState(() {
                          a = !a;
                        });
                      },

                      child: Icon(Icons.visibility)),
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
              child: Text('sign up'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPage()
                        ),
                        );
                      },
                      );
                    },
                    child: Text('Log In',style: TextStyle(color: Colors.blue),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
