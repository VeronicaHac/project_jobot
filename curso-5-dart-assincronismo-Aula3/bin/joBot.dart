import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';

void main() async {
  String joBot = 'joBot:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o joBot, aguarde..--');
  print(joBot +
      'Oi, tudo bem? Sou o joBot, IA criada pela Verônica. Vamos conversar? \n Primeiro me fala o seu nome');
  usuario = stdin.readLineSync().toString();
  print(joBot +
      'Prazer ' +
      usuario +
      "! Agora vamos conversar, o que eu posso ajudar?");
  do {
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus') ||
        usuario.contains('Tchau') ||
        usuario.contains('tchau') ||
        usuario.contains('bye')) {
      a = false;
      print(joBot + ' Adorei conversar com você, Até a proxima!!' + usuario);
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners()) {
      GoodManners(usuario).goodManners();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      print(joBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(joBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando joBot--');
}
