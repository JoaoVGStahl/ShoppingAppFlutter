import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
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
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
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
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Cadastrar-se",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        //autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          label: Text("Nome"),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        //autofocus: true,
                        keyboardType: TextInputType.text,
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
