class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // 1. Namanya diubah menjadi 'getShuffledAnswer' (tanpa 's')
  List<String> getShuffledAnswer() { 
    final shuffledList = List.of(answers); // List.of() adalah cara singkatnya
    shuffledList.shuffle();
    // 2. Huruf 'L' pada 'shuffledList' diperbaiki menjadi huruf besar
    return shuffledList; 
  }
}