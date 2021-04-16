class TransactionsModel {
  final String date;
  final String activity;
  final String amount;
  final String status;
  final String type;

  TransactionsModel({
    this.date,
    this.activity,
    this.amount,
    this.status,
    this.type,
  });
}

List<TransactionsModel> transactionsList = [
  TransactionsModel(
    date: "1/1/21",
    activity: "Deposit",
    amount: "\$1000.00   ",
    status: "Posted",
    type: "Credit",
  ),
  TransactionsModel(
    date: "2/1/21",
    activity: "Reward",
    amount: "\$100.00   ",
    status: "Pending",
    type: "Credit",
  ),
  TransactionsModel(
    date: "4/1/21",
    activity: "Wallgreens",
    amount: "\$10.00   ",
    status: "Posted",
    type: "Expense",
  ),
  TransactionsModel(
    date: "4/1/21",
    activity: "Co-Pay",
    amount: "\$20.00   ",
    status: "Posted",
    type: "Expense",
  ),
  TransactionsModel(
    date: "5/1/21",
    activity: "Reward",
    amount: "\$100.00   ",
    status: "Pending",
    type: "Credit",
  ),
  TransactionsModel(
    date: "7/1/21",
    activity: "Deposit",
    amount: "\$1000.00   ",
    status: "Posted",
    type: "Credit",
  ),
  TransactionsModel(
    date: "4/1/21",
    activity: "Wallgreens",
    amount: "\$10.00   ",
    status: "Posted",
    type: "Expense",
  ),
  TransactionsModel(
    date: "4/1/21",
    activity: "Co-Pay",
    amount: "\$20.00   ",
    status: "Posted",
    type: "Expense",
  ),
  TransactionsModel(
    date: "5/1/21",
    activity: "Reward",
    amount: "\$100.00   ",
    status: "Pending",
    type: "Credit",
  ),
  TransactionsModel(
    date: "7/1/21",
    activity: "Deposit",
    amount: "\$1000.00   ",
    status: "Posted",
    type: "Credit",
  ),
];
