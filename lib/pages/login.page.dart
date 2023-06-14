// ignore_for_file: unused_field, must_be_immutable

import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:shopping/pages/cadastro.page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5F5F5),
          padding: const EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                height: 450,
                decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 3,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    right: 15,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Bem-vindo",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  "Entre para continuar",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                            TextButton(
                              child: Text(
                                "Criar conta",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CadastroPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            label: Text("E-mail"),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          validator: (value) {
                            if (value.isNull || value!.isEmpty) {
                              return "E-mail inválido";
                            }

                            return null;
                          },
                          onSaved: (email) => _email = email,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text("Senha"),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          validator: (value) {
                            if (value.isNull || value!.isEmpty) {
                              return "Senha inválida";
                            }

                            return null;
                          },
                          onSaved: (senha) => _senha = senha,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Esqueceu sua senha?",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ElevatedButton(
                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();
                                showBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Row(
                                        children: [Text("Bem vindo $_email")],
                                      );
                                    });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: const Text(
                  "- OU -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/facebook.png",
                          width: 40,
                          height: 50,
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 8,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Entrar com Facebook",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "google.png",
                            width: 40,
                            height: 50,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Entrar com Google",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
