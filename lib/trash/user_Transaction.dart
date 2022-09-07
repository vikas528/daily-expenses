// import 'package:flutter/material.dart';

// import './new_transaction.dart';
// import './transaction_list.dart';
// import '../models/transaction.dart';

// class UserTransaction extends StatefulWidget {
//   @override
//   _UserTransactionState createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         TransactionList(_userTransaction),
//       ],
//     );
//   }
// }


// return Card(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.symmetric(
//                           vertical: 10,
//                           horizontal: 15,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             // color: Colors.orange,
//                             color: Theme.of(context).primaryColor,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.all(Radius.circular(50)),
//                         ),
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           // '\$' + tx.amount.toString(),
//                           '\$${transactions[index].amount.toStringAsFixed(2)}',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                             // color: Colors.orange,
//                             color: Theme.of(context).primaryColor,
//                             // backgroundColor: Colors.blue
//                           ),
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Container(
//                             margin: EdgeInsets.only(
//                               bottom: 5,
//                             ),
//                             child: Text(
//                               transactions[index].title,
//                               style: Theme.of(context).textTheme.title,
//                             ),
//                           ),
//                           Text(
//                             DateFormat.yMMMd().format(transactions[index].date),
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );