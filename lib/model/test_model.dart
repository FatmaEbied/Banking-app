import 'dart:convert';

TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

String testModelToJson(TestModel data) => json.encode(data.toJson());

class TestModel {
    String userAccountId;
    String username;
    String password;
    String firstName;
    String lastName;
    String email;
    String language;
    String balance;

    TestModel({
        required this.userAccountId,
        required this.username,
        required this.password,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.language,
        required this.balance,
    });

    factory TestModel.fromJson(Map<String, dynamic> json) => TestModel(
        userAccountId: json["userAccountID"],
        username: json["username"],
        password: json["password"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        language: json["language"],
        balance: json["balance"],
    );

    Map<String, dynamic> toJson() => {
        "userAccountID": userAccountId,
        "username": username,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "language": language,
        "balance": balance,
    };
}

class AccountData {
  final double balance;
  final String cardNumber;
  final String expiryDate;
  final List<Transaction> transactions;

  AccountData({
    required this.balance,
    required this.cardNumber,
    required this.expiryDate,
    required this.transactions,
  });

  factory AccountData.fromJson(Map<String, dynamic> json) {
    var transactionsList = json['transactions'] as List;
    List<Transaction> transactionItems = transactionsList.map((i) => Transaction.fromJson(i)).toList();

    return AccountData(
      balance: json['balance'],
      cardNumber: json['cardNumber'],
      expiryDate: json['expiryDate'],
      transactions: transactionItems,
    );
  }
}

class Transaction {
  final String title;
  final String date;
  final double amount;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      title: json['title'],
      date: json['date'],
      amount: json['amount'],
    );
  }
}
