import 'dart:io';

//implementar o Timing!

class TimeQuestions {
  String hour = 'Que horas sao?';
  String day = 'Que dia e hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String joBot = 'JoBot:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime() {
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {
    if (question == hour) {
      String _botAnswer = joBot +
          ' Rapaz, não tem relógio não? São : ${date.hour} horas e ${date.minute} minutos.';
      print(_botAnswer);
    } else if (question == day) {
      String _botAnswer = joBot + ' Mas Rapaz, hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {
      String _botAnswer = joBot + ' Osh, estamos  em ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {
      String _botQuestion = joBot + ' Não entendi, quer saber as horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') ||
          answer.contains('sim') ||
          answer.contains('Isso') ||
          answer.contains('isso') ||
          answer.contains('é') ||
          answer.contains('É')) {
        String _botAnswer = joBot +
            ' Beleza jovem, são : ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {
        String _botAnswer = joBot + ' Ah, entendi errado então. ';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {
      String _botQuestion =
          joBot + ' Hein? Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') ||
          answer.contains('sim') ||
          answer.contains('Isso') ||
          answer.contains('isso') ||
          answer.contains('é') ||
          answer.contains('É')) {
        String _botAnswer = joBot + ' Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {
        String _botAnswer = joBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {
      String _botQuestion =
          joBot + ' Hein? Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') ||
          answer.contains('sim') ||
          answer.contains('Isso') ||
          answer.contains('isso') ||
          answer.contains('é') ||
          answer.contains('É')) {
        String _botAnswer = joBot +
            ' Olha estamos no ano de 2077, a pandemia já está terminando... \n '
                'É brincadeira kakakaka, estamos em ${date.year}';
        print(_botAnswer);
      } else {
        String _botAnswer = joBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
