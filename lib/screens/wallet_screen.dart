import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wallet'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 12,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade700,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Your balance is',
                    style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$450,000.0',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              spacing: 16,
              children: [
                reusableWalletOptions(label: 'Tap down', icon: Icons.add),
                reusableWalletOptions(
                  label: 'Transfer',
                  icon: Icons.money_rounded,
                ),
                reusableWalletOptions(label: 'Bill', icon: Icons.receipt),
                reusableWalletOptions(label: 'Scan', icon: Icons.scanner),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(color: Colors.black),
                  ),
                  child: Text('See all'),
                ),
              ],
            ),
            reusableWalletListTile(),
          ],
        ),
      ),
    );
  }
}

Widget reusableWalletOptions({required String label, required IconData icon}) {
  return Column(
    spacing: 7,
    children: [
      Material(
        color: Colors.white,
        elevation: 2,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 90,
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Colors.white,
            ),
            child: Icon(icon, size: 30, color: Colors.teal.shade700),
          ),
        ),
      ),
      Text(label, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
    ],
  );
}

Widget reusableWalletListTile() {
  return ListTile(
    tileColor: Colors.grey.shade200,

    leading: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      // padding: EdgeInsets.all(18),
      child: Icon(Icons.add),
    ),
    title: Text('Transfer'),
    subtitle: Text(DateTime.now().toString()),
    trailing: Text('\$88.50', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
  );
}
