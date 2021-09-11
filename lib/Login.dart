import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var checkBoxValue = false;
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  Color adminButtonColor = Colors.black;
  Color userButtonColor = Colors.grey;
  Color adminText = Colors.white;
  Color userText = Colors.black;
  Color messageColor=Colors.black;
  var message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Column(
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Image(
                    width: 250,
                 height: 250,
                  image: NetworkImage('https://download.logo.wine/logo/Best_Buy/Best_Buy-Logo.wine.png'),
              ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    cursorColor: Colors.black,
                    controller: usernameController ,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.account_circle_rounded,
                      ),
                      labelText: 'Enter your username',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    labelText: 'Enter your email',
                  ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      labelText: 'Enter your password',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkBoxValue,
                          onChanged: (newValue){
                            setState(() {
                              checkBoxValue = newValue!;
                            });
                          }
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            if(usernameController.text==''){
                              message='Username can\'t be empty!!';
                              messageColor= Colors.red;
                            }else{
                              message='Welcome ${usernameController.text} !';
                              messageColor= Colors.black;
                            }
                          });
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                        'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: adminButtonColor ,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: TextButton(
                          onPressed: (){
                            setState(() {
                              if(adminButtonColor==Colors.black && userButtonColor==Colors.grey) {
                                adminButtonColor = Colors.grey;
                                adminText = Colors.black;
                                userButtonColor = Colors.black;
                                userText = Colors.white;

                              }
                            }
                            );
                          },
                          child: Text(
                            'Admin',
                            style: TextStyle(
                              fontSize: 16,
                              color: adminText ,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: userButtonColor ,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: TextButton(
                          onPressed: (){
                            setState(() {
                              if(userButtonColor==Colors.black && adminButtonColor==Colors.grey){
                                userButtonColor=Colors.grey;
                                userText=Colors.black;
                                adminButtonColor=Colors.black;
                                adminText=Colors.white;
                              }
                            }
                            );
                          },
                          child: Text(
                            'User',
                            style: TextStyle(
                              fontSize: 16,
                              color: userText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                      '$message',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: messageColor,
                     ),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                ],
              ),
            ),
      ),

    );
  }
}
