import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      drawer: CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Dispositivo Registrador de Energia e Acionador de Equipamentos Residenciais via Wireless, Internet das Coisas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Text(
                  'Esse projeto terá como finalidade controlar cargas On/Off via aplicativo, wireless e servidor, medir e registrar consumo de energia, fator de potência e, se possível, distorção harmônica. Além disso, terá inteligência artificial e aprendizado de máquina para assimilar os hábitos de utilização, otimizar o consumo de energia e proporcionar comodidade aos usuários, sugerindo um melhor perfil do Setup para o uso consciente e sustentável de energia. Mais aplicável em residências que geram sua própria energia para melhor gerenciamento da mesma.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Autores:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      wordSpacing: 5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Bruno Silva de Souza; \nPedro Leonardo Silva da Cruz; \nRenato Damato Machado;',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      wordSpacing: 6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Docente:',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        wordSpacing: 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Diego Silva Menozzi',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      wordSpacing: 6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Vassouras / 2019',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    wordSpacing: 6,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
