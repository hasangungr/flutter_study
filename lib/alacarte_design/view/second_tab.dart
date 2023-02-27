import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        )
      ],
    );
  }
    Container formRoom() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Room Name: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {},
            ),
          ),
        ],
      ),
    );
  }
    Container inputContainer() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Guest Name: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {},
            ),
          ),
        ],
      ),
    );
  }
   Container formContainer() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      width: 85,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Pax: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: DropdownButton<String>(
              value: "1",
              items: const [
                DropdownMenuItem(
                  value: "1",
                  child: Text("1"),
                ),
                DropdownMenuItem(
                  value: "2",
                  child: Text("2"),
                ),
                DropdownMenuItem(
                  value: "3",
                  child: Text("3"),
                ),
                DropdownMenuItem(
                  value: "4",
                  child: Text("4"),
                ),
                DropdownMenuItem(
                  value: "5",
                  child: Text("5"),
                ),
                DropdownMenuItem(
                  value: "6",
                  child: Text("6"),
                ),
              ],
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}