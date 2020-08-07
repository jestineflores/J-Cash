import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                      decoration: InputDecoration(labelText: 'Purchase'),
                      controller: titleController
                      // controller: titleController,
                      ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Price'),
                    controller: amountController,
                    // controller: amountController,
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                    onPressed: () {
                      addTx(
                        titleController.text,
                        double.parse(amountController.text),
                      );
                    },
                  ),
                ]),
          )),
    );
  }
}
