import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? Colors.black : Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 84,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
