import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/widgets/Form/custom_button.dart';
import 'package:recips_app/widgets/Form/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController passwordCon = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back',
                style:
                    TextStyle(color: Color.fromARGB(171, 0, 0, 0), fontSize: 25),
              ),
          
              const SizedBox(
                height: 15,
              ),
          
              // email
              CustomTextField(
                label: 'Email',
                icon: Icons.email_outlined,
                controller: emailCon,
              ),
          
              const SizedBox(
                height: 15,
              ),
              // password
              CustomTextField(
                label: 'Password',
                icon: Icons.password,
                controller: passwordCon,
              ),
          
              const SizedBox(
                height: 10,
              ),
          
              // login
              CustomButton(
                onPressed: () async {},
                text: 'login',
                color: kPrimaryColor,
              ),
          
              const SizedBox(
                height: 15,
              ),
          
              // create acc
              CustomButton(
                text: 'Create Account',
                onPressed: () {},
                color: const Color.fromARGB(136, 255, 99, 71),
              ),
                const SizedBox(
                height: 50,
              ),
          
            ],
          )),
    );
  }

//   Future<UserCredential> signInMethod() {
//     return FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailCon.text, password: passwordCon.text);
//   }
// }

// void handleShowErrors(FirebaseAuthException e, BuildContext context) {
//   if (e.code == 'wrong-password') {
//     showSnackBar(context, 'wrong password');
//   } else if (e.code == 'invalid-email') {
//     showSnackBar(context, 'invalid email');
//   } else {
//     showSnackBar(context, 'Your email or password is wrong.');
//   }
// }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
      BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
      ),
    ));
  }
}
