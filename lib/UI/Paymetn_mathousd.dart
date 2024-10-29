import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _type = 1;

  void _handleRadio(Object? value) {
    setState(() {
      _type = value as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Credit Card'),
            leading: Radio(
              value: 1,
              groupValue: _type,
              onChanged: _handleRadio,
            ),
          ),
          ListTile(
            title: Text('PayPal'),
            leading: Radio(
              value: 2,
              groupValue: _type,
              onChanged: _handleRadio,
            ),
          ),
          ListTile(
            title: Text('Cash on Delivery'),
            leading: Radio(
              value: 3,
              groupValue: _type,
              onChanged: _handleRadio,
            ),
          ),
        ],
      ),
    );
  }
}
