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

  Widget _profilePic() {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      width: 200,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0.0, 3.0),
          )
        ],
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Card(
      color: const Color.fromARGB(197, 172, 97, 252),
      child: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2.5, bottom: 5),
              child: TextField(
                onChanged: (text) => {email = text},
                style: const TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  label: Text('E-Mail'),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: TextField(
                onChanged: (text) => {password = text},
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  label: Text('Password'),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  ),
                ],
              ),
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: ElevatedButton(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(
                      255,
                      0,
                      0,
                      0,
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  if (email == 'test' && password == '123') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _profilePic(),
              _loginForm(),
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
