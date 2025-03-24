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
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Checkbox(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            title: Text("Click me"),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Switch(
            value: isSwitch,
            onChanged: (bool value) {
              setState(() {
                isSwitch = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Switch me"),
            value: isSwitch,
            onChanged: (bool value) {
              setState(() {
                isSwitch = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
