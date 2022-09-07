import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './chart_bar.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  // getters are these properties which are calculated
  // dynamically
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0.0;

      for (int i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekDay.day &&
            recentTransactions[i].date.month == weekDay.month &&
            recentTransactions[i].date.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }

      print(DateFormat.E().format(weekDay).substring(0, 1));
      print(totalSum);

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        // E gives us tha shortcut for the weekday
        'amount': totalSum,
      };
    }).reversed.toList();
  }

  double get maxSpending {
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + item['amount'];
    });
    // fold allow us to change a list to another type, with a certain logic
    // we define in the function we pass to fold , here we pass an annonymous
    // function
  }

  /*
  I want to return a value based on my grouped transaction values there in end
  we want to sum up all the elements, the sum of all the total sums for each day
  gives us the total sum for the entire week. Now grouped transaction values of
  course is a list and now here, i just need a double
  */

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((data) {
            // return Text('${data['day']}: ${data['amount']}  ');
            return Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: ChartBar(
                data['day'],
                data['amount'],
                maxSpending == 0.0 ? 0.0 : (data['amount'] as double) / maxSpending,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
