import 'package:flutter/material.dart';
import 'widget/button.dart';
import 'widget/currency_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'hi, user',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'nice to meet you',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 70),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '100000 KRW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: 'transfer',
                            bgColor: const Color(0xFFF1B33B),
                            textColor: Colors.black),
                        Button(
                            text: 'requset',
                            bgColor: const Color(0xFF1F2123),
                            textColor: Colors.white),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('View all',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '1.2345',
                      icon: Icons.currency_bitcoin,
                      isInverted: false,
                      order: 1,
                    ),
                    CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '52.123',
                      icon: Icons.attach_money,
                      isInverted: true,
                      order: 2,
                    ),
                    CurrencyCard(
                      name: 'euro',
                      code: 'EUR',
                      amount: '52.123',
                      icon: Icons.euro,
                      isInverted: false,
                      order: 3,
                    ),
                  ],
                ),
              ),
            )));
  }
}

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter 테스트 앱'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '현재 카운터 값:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
