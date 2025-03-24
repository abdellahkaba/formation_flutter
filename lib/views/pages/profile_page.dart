import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double sliderValue = 0.09;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(_controller.text),
            Checkbox.adaptive(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              title: Text("Click me"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text("Switch me"),
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Image.asset('assets/images/ordinateur2.png'),
            Image.asset('assets/images/ordinateur2.png'),
          ],
        ),
      ),
    );
  }
}
