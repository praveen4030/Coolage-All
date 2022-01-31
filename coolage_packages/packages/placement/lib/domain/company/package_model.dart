class PackageModel {
  String stipend;
  String ctc;
  String hra;
  String bonus;
  String gross;
  String perksAndBonus;
  String basicPay;
  PackageModel({
    this.stipend = "NA",
    this.ctc = "NA",
    this.hra = "NA",
    this.bonus = "NA",
    this.gross = "NA",
    this.perksAndBonus = "NA",
    this.basicPay = "NA",
  });
  factory PackageModel.empty() {
    return PackageModel(
      stipend: "NA",
      ctc: "NA",
      hra: "NA",
      bonus: "NA",
      gross: "NA",
      perksAndBonus: "NA",
      basicPay: "NA",
    );
  }
}
