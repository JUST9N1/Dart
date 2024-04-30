
class SimpleInterestModel {
  int? principle;
  int? time;
  int? rate;

  SimpleInterestModel(
      {required this.principle, required this.rate, required this.time});

  double calculateSimpleInterest() {
    return (principle! * rate! * time!) / 100;
  }
}


