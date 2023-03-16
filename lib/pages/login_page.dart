import 'package:flutter/material.dart';
import 'package:my_app/components/button.dart';
import 'package:my_app/components/text_field_component.dart';
import 'package:my_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Image.asset('lib/images/user.png'),
              SizedBox(
                height: 56,
              ),
              TextFieldComponent(
                controller: emailController,
                hintText: 'example@gmail.com',
                obscureText: false,
                label: 'E-mail',
              ),
              TextFieldComponent(
                  controller: passwordController,
                  hintText: 'Test@123',
                  obscureText: true,
                  label: 'Senha'),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                          color: Color.fromRGBO(30, 31, 36, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Button(onTap: signUserIn),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Color.fromRGBO(77, 168, 207, 1),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Ou logar com',
                      style: TextStyle(color: Color.fromRGBO(77, 168, 207, 1)),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Color.fromRGBO(77, 168, 207, 1),
                  )),
                ]),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png'),
                  const SizedBox(
                    width: 24,
                  ),
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Não possui uma conta?'),
                  const SizedBox(width: 4),
                  Text(
                    'Criar conta',
                    style: TextStyle(
                        color: Color.fromRGBO(77, 168, 207, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
