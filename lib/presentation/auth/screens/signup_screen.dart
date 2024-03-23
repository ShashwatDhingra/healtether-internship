import 'package:flutter/material.dart';
import 'package:login_app/core/routes/ui.dart';
import 'package:login_app/presentation/auth/provider/signin_provider.dart';
import 'package:login_app/presentation/auth/widgets/my_button.dart';
import 'package:login_app/presentation/auth/widgets/my_textfield.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignUpProvider>(context, listen: false);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("S I G N  U P"),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: provider.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  50.ph,

                  // logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  50.ph,

                  // welcome back, you've been missed!
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  25.ph,

                  // username textfield
                  MyTextField(
                    controller: provider.nameController,
                    hintText: 'Name',
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),

                  10.ph,

                  // password textfield
                  MyTextField(
                    controller: provider.emailController,
                    hintText: 'E-mail',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'E-mail is required';
                      }
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);

                      if (emailValid) return null;

                      return 'Please enter a valid Email';
                    },
                  ),

                  10.ph,

                  // forgot password?
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),

                  25.ph,

                  // sign in button
                  Consumer<SignUpProvider>(
                    builder: (context, value, child) => MyButton(
                      onTap: provider.signUp,
                      text: 'Sign Up',
                      isLoading: value.isLoading,
                    ),
                  ),

                  50.ph,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
