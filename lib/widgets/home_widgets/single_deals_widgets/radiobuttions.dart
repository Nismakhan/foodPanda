import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';

class RadioButtions extends StatefulWidget {
  const RadioButtions({super.key, required this.radioListOptions});
  final List<String> radioListOptions;

  @override
  State<RadioButtions> createState() => _RadioButtionsState();
}

class _RadioButtionsState extends State<RadioButtions> {
  int selectedValue = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        itemCount: widget.radioListOptions.length,
        itemBuilder: (context, index) {
          return RadioListTile(
            activeColor: SelfDefinedColors.pinkColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.radioListOptions[index],
                  style: const TextStyle(fontSize: 12),
                ),
                const Text(
                  "Rs: 0.0",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            value: index,
            groupValue: selectedValue,
            onChanged: (int? value) {
              setState(() {
                selectedValue = value!;
              });
            },
          );
        },
      ),
    );
  }
}
