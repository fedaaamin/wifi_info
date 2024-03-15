
import 'package:flutter/material.dart';


import 'User_name.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/img_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Container(
              width: 600,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Color(0xFF790023),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[

                    const Padding(

                      padding: EdgeInsets.only(
                          top: 40,
                          bottom: 30
                      ),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                                ,color: const Color(0xff0866FF),
                            ),
                            width: 300,
                            height: 50,
                            child: TextButton.icon(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const UserName()),
                                );

                              },
                              icon: const Icon(Icons.facebook,
                                color: Colors.white,),
                              label:
                              const Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UserName()),
                            );
                          },
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                                ,color: Colors.white,
                              ),
                              width: 300,
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'images/google.png',
                                    fit:BoxFit.cover,
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  const Text(
                                    'Sign-in with Google',
                                    style: TextStyle(
                                      fontSize: 20
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                      ),


                    ]
                ),

            ),
          ],
        ),
      ),
    );
  }
}
