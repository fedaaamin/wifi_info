
import 'package:flutter/material.dart';
import 'package:untitled4/gender.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/img.png"),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const Padding(

                      padding: EdgeInsets.only(
                        top: 40
                      ),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(

                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'First Name',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Family name',
                        labelText: 'Last Name',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      },
                    ),
                    const SizedBox(
                      width: 50,
                      height: 50,
                    )
              ],
        ),
      ),

        ]
      )
    ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 10
        ),
        child: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Gender()),
            );
          },
          backgroundColor: Colors.white,
          label: const Text("Next   >",
          style: TextStyle(
            fontSize: 20,
              fontWeight: FontWeight.bold,
              color:Color(0xFF790023)
          ),
          ),
        ),
      ),
    );
  }
}
