import 'package:flutter/material.dart';

final Set _saved = Set();

class PaymentMethods extends StatefulWidget{
  final methodText;
  final index;

  const PaymentMethods(this.methodText, this.index);

  @override
  State<StatefulWidget> createState() => PaymentMethodsState(methodText, index);
}

class PaymentMethodsState extends State<PaymentMethods>{
  final methodText;
  final index;

  int test=0;

  PaymentMethodsState(this.methodText, this.index);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _saved.contains(index),
          onChanged: (bool value) {
            setState(() {
              if(value == true){
                _saved.add(index);
                test=index;
              } else{
                _saved.remove(index);
              }
            });
          },
        ),
        Text(methodText),
      ],
    );
  }

}