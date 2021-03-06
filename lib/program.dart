import 'package:flutter/material.dart';
import 'package:task/dashboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Container(
                  //height: 50,
                  //width: 200,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Registration Form',
                    style: TextStyle(
                      fontSize: 43,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter the Email......',
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter the Password......',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Forget Password',
                style: TextStyle(
                  color: Colors.blue,
                  //backgroundColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 0),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DashBoard()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            const Text(
              'New User ?',
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Create Account',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      /*
      child: Padding(
        padding: const EdgeInsets.all(6),
      
        child: ListView(
          
          children: [
            Container(
              
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Welocome To Page ',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),  */
    );
  }
}
