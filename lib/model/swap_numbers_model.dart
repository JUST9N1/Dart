class SwapNumbersModel {
  int? first;
  int? second;

  SwapNumbersModel({required this.first, required this.second});

  void reverse(int first, int second) {
    int temp = first;
    first = second;
    second = temp;
    print("After swapping numbers: ");
    print('first: $first, second: $second');
  }
}
