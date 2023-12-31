import 'package:flutter/material.dart';
import 'package:telalogin/widgets/app_text.dart';
import 'package:telalogin/widgets/app_title.dart';
import 'package:telalogin/widgets/input_text.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161E2E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 500, maxWidth: 800),
              child: Container(
                width: double.infinity,
                height: 430,
                padding: EdgeInsets.all(48),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Column(
                  children: [
                    AppTitle('Login'),
                    SizedBox(height: 20),
                    InputText(placeholder: 'Digite o seu Email'),
                    SizedBox(height: 20),
                    InputText(placeholder: 'Digite a sua Senha', isPassword: true,),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: AppText(
                        'Esqueceu a senha?',
                        textAlign: TextAlign.end,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          textStyle: TextStyle(fontSize: 16),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('Entrar'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('Não tem uma conta?'),
                        SizedBox(width: 6),
                        AppText(
                          'Criar conta',
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
