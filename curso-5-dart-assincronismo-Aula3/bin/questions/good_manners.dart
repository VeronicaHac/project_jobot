class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String kakoBot = 'joBOT:\n';
  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('ola') ||
        question.contains('Oi') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada') ||
        question.contains('bom dia') ||
        question.contains('Bom dia') ||
        question.contains('De nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('Bom dia') || question.contains('bom dia')) {
      print(kakoBot + ' Bom dia Criatura de Deus, já falou com Deus hoje?');
    } else if (question.contains('Boa tarde') ||
        question.contains('boa tarde')) {
      print(kakoBot + ' Eai Rapaz, ótimo dia');
    } else if (question.contains('Boa noite') ||
        question.contains('boa noite')) {
      print(kakoBot + ' Boa noite pra voce também rapaz');
    } else if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('Ola') ||
        question.contains('ola')) {
      print(kakoBot +
          ' Olá, eu sou o JoBot, o Robô do João criado pela Verônica. ');
    } else if (question.contains('obrigado') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('obrigada')) {
      print(kakoBot + ' De nada, o que precisar estou aqui');
    }
  }
}
