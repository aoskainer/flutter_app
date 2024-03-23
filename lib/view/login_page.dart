import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormViewModel = ref.watch(loginFormViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: TextFormField(
                  key: const Key('data-testid-LoginPage-email'),
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                  onChanged: (value) {
                    ref
                        .read(loginFormViewModelProvider.notifier)
                        .updateEmail(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: TextFormField(
                  key: const Key('data-testid-LoginPage-password'),
                  obscureText: loginFormViewModel.isPasswordObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(loginFormViewModel.isPasswordObscure
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        ref
                            .read(loginFormViewModelProvider.notifier)
                            .togglePasswordObscure();
                      },
                    ),
                  ),
                  onChanged: (value) {
                    ref
                        .read(loginFormViewModelProvider.notifier)
                        .updatePassword(value);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(loginFormViewModelProvider.notifier).reset();
                    context.go('/top');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
