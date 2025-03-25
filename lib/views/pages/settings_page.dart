import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController _controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text("SnackBar"),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text("Open Snackbar"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert title'),
                        content: Text('Alert Content'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Open Dialogue"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text("Element 1")),
                  DropdownMenuItem(value: 'e2', child: Text("Element 2")),
                  DropdownMenuItem(value: 'e3', child: Text("Element 3")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
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
                max: 10.0,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print("Image selected");
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Click me"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("ElevateButton")),
              FilledButton(onPressed: () {}, child: Text("FileButton")),
              TextButton(onPressed: () {}, child: Text("Text Button")),
              OutlinedButton(onPressed: () {}, child: Text("Outline button")),
              CloseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
