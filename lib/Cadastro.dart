import 'package:flutter/material.dart';
import 'package:future_prova1/Principal.dart';
import 'package:future_prova1/Tela_Login.dart';
import 'package:google_fonts/google_fonts.dart';


class TelaCad extends StatelessWidget {
  const TelaCad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2C2D),
      body: Center(
        child: Column(
          //    mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 140),
            //   child: Placeholder(color: Color(0xff404041),
            //     fallbackHeight: 120,
            //     fallbackWidth: 40,
            //     strokeWidth: 2,
            //     child: MediaQuery.removePadding(context: context,
            //         child: ElevatedButton(onPressed: (){
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => const CameraExampleHome(),
            //             ),
            //           );
            //         },
            //             child: Placeholder(fallbackWidth: 40,fallbackHeight: 40,))),
            //   ),
            // ),
            // SizedBox(height: 10,),

            Text('CADASTRO',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Color(0xff00E1C2),
            ),),SizedBox(height: 15,),
            Text('Todos os campos são obrigatórios!',
            style: TextStyle(
              color: Colors.grey,
            ),),

            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Senha',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirme a Senha',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Telefone',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Apelido',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            SizedBox(height: 50,),
            ElevatedButton(
              style: TextButton.styleFrom(
                  minimumSize: Size(300, 42),
                  backgroundColor: Color(0xff00E1C2),
              ),
              child: const Text('Cadastrar',
                style: TextStyle(
                  color: Color(0xff404041),
                  fontWeight: FontWeight.w700
                ),),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  TelaPrinc(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
