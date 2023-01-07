import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String image = 'assets/images/image.png';
  String bgimage = 'assets/images/333.jpg';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(blurRadius: 5, offset: Offset(0.0, 3.0))
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.fill,
                    ),
                  )),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2.5, bottom: 5),
                        child: TextField(
                          onChanged: (text) => {email = text},
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: const Color.fromARGB(255, 178, 3, 3),
                          decoration: const InputDecoration(
                            label: Text('E-Mail'),
                            labelStyle:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: TextField(
                          onChanged: (text) => {password = text},
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Password'),
                            labelStyle:
                                TextStyle(color: Color.fromARGB(255, 5, 0, 0)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              offset: Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 255, 255),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 54, 127, 244),
                            ),
                          ),
                          onPressed: () {
                            if (email == 'test' && password == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            }
                          },
                          child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            bgimage,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        _body(),
      ],
    ));
  }
}
