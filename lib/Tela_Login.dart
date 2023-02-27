import 'package:flutter/material.dart';
import 'package:future_prova1/Cadastro.dart';
import 'package:future_prova1/Principal.dart';
import 'package:google_fonts/google_fonts.dart';


TextEditingController emailController = TextEditingController();
TextEditingController senhaController = TextEditingController();
class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  String email ='';
  String password ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2c2d),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logoLogin.png'),
              SizedBox(height: 15,),
              Text('Login',
                style:GoogleFonts.roboto(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff00E1C2),
                ),
                ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: TextFormField(
                  onChanged: (text) {
                    email = text;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: TextFormField(
                  onChanged: (text){
                    password = text;
                  },
                  controller: senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Color(0xffffffff),
                    ),
                    

                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(300, 42),
                      backgroundColor: Color(0xff00e1c2),
                  ),
                  child: const Text('Entrar'),
                  onPressed: () {
                    if (email == 'nicolas@gmail' && password == '0123456'){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TelaPrinc()));
                    }else if (email.contains("@")){
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content:
                          Text('O email deve conter caracteres especias'),
                            backgroundColor: Color(0xffff4738),)
                      );
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content:
                          Text('Acesso inválido!',
                          textAlign: TextAlign.center,),
                            backgroundColor: Color(0xff171717),)
                      );
                    }
                  }
              ),
              // ElevatedButton(
              //     style: TextButton.styleFrom(
              //         minimumSize: Size(300, 30),
              //         backgroundColor: Color(0xff2ed9ec)
              //     ),
              //     child: const Text('acessar'),
              //     onPressed: () {
              //       if(emailController != 'nicolas01' && senhaController != '0123456'){
              //         ScaffoldMessenger.of(context).showSnackBar(
              //             SnackBar(content: Text('Usuario errado')),
              //         );}
              //       else{
              //         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TelaPrin()));
              //       }
              //       }
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(300, 42),
                      backgroundColor: Color(0xff0068E1),
                    ),
                    onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 19,
                            width: 19,
                            child: Image.asset('assets/images/logoFace.png')),
                        SizedBox(width: 10,),
                        Text('Login com Facebook'),
                      ],
                    )),
              ),

              SizedBox(height: 20,),
              Container(
                height: 42,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff00e1c2),
                    width: 1,

                  ),

                ),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 42),
                    backgroundColor: Color(0xff2c2c2d),

                ),

                  child: const Text('Cadastrar-se',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TelaCad(),
                      ),
                    );
                  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
