import 'package:flutter/material.dart';
import 'package:future_prova1/Tela_Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Tutorial1 extends StatelessWidget {
  const Tutorial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00E1C2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                  height: 52,
                  width: 256,
                  child: Image.asset('assets/images/logo2.png')),
            ),
            SizedBox(height: 130,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text('"Apresentando o melhor companheiro de condicionamento físico e saúde, '
                  'nosso novo aplicativo móvel que desafia você a ultrapassar seus '
                  'limites e atingir suas metas de condicionamento físico! Com uma ampla '
                  'variedade de tarefas de exercícios e desafios diários,'
                  ' nosso aplicativo ajuda você a permanecer no caminho certo e'
                  ' motivado para liderar uma vida saudável e estilo de vida ativo."',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 65,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TelaLogin()));
                      },
                      child: Text('Pular',
                      style: TextStyle(
                        color: Color(0xff2c2c2d),
                      ),),
                    ),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff2C2C2D),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),

                      onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Tutorial2()));
                      } ,
                      child: Text('Próximo')),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial2 extends StatelessWidget {
  const Tutorial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff00E1C2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(

              height: 245,
              width: 219,
              child: Image.asset('assets/images/img_runner.png'),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text('"Cansado de se sentir desmotivado para se exercitar? Nosso'
                  ' aplicativo móvel oferece uma maneira divertida e envolvente'
                  ' de se manter ativo e atingir suas metas de condicionamento'
                  ' físico, com uma variedade de desafios, recompensas e recursos'
                  ' sociais que tornam o treino divertido e emocionante."',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 65,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TelaLogin()));
                      },
                      child: Text('Pular',
                        style: TextStyle(
                          color: Color(0xff2c2c2d),
                        ),),
                    ),
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff2C2C2D),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),

                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Tutorial3()));
                      } ,
                      child: Text('Próximo')),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Tutorial3 extends StatelessWidget {
  const Tutorial3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00E1C2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              height: 245,
              width: 219,
              child: Image.asset('assets/images/img_runner.png'),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text('"Transforme seu corpo e sua mente com nosso '
                  'novo aplicativo inovador. Com uma ampla variedade de exercícios,'
                  ' desde cardio e treinamento de força até ioga e meditação,'
                  ' nosso aplicativo oferece desafios diários e programas'
                  ' personalizados que ajudarão você a atingir suas metas'
                  ' de condicionamento físico."',
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  letterSpacing: 1,

                )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff2C2C2D),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),

                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TelaLogin()));
                      } ,
                      child: Text('Acessar')),
                ),
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}


