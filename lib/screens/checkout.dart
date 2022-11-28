import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String? paymentMethod;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[50],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 50.0),
          child: Container(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // cards and text column
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping information",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17.0),
                        ),
                        Text(
                          "change",
                          style: TextStyle(
                              color: Color(0xFF5956E9),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      color: Color(0xFFF5F5F8),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              "Rosina Doe",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              "43 Oxford Road M13 4GR Manchester, UK",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              "+234 9011039271",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Payment Method",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 17.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      color: Color(0xFFF5F5F8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: "visa",
                                  groupValue: paymentMethod,
                                  fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF5956E9),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value.toString();
                                    });
                                  }),
                              Text(
                                "**** **** **** 1234",
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "mastercard",
                                groupValue: paymentMethod,
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xFF5956E9),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    paymentMethod = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "**** **** **** 1234",
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: "rupay",
                                  fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF5956E9),
                                  ),
                                  groupValue: paymentMethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value.toString();
                                    });
                                  }),
                              Text(
                                "**** **** **** 1234",
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        "Rs 63,0000",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5956E9)),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                    backgroundColor: Color(0xFF5956E9),
                  ),
                  child: Text(
                    "Confirm and pay",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
