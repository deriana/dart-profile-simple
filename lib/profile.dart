import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContainerBox extends StatefulWidget {
  const ContainerBox({super.key});

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tugas 1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 63, 63, 63),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 470,
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 87, 87, 87),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 4),
                      blurRadius: 8.0,
                      spreadRadius: 2.0)
                ]),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("../assets/pf.jpg"),
                  ),
                ),
                const Gap(5),
                const Text(
                  "Deryana Maruf",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text("XI PPLG RPL 1"),
                const Gap(5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Divider(
                    color: Color.fromARGB(255, 88, 88, 88),
                    thickness: 2.0,
                  ),
                ),
                const Gap(5),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("../assets/toga-logo.png"),
                      ),
                      const Gap(5),
                      const Text(
                        "Student",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Gap(5),
                const Text(
                  "Lorem ipsum dolor sit amet consectur adispacing elit, lorem ipsum dolor sit amet consectur adispacing elite",
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 179, 161, 0),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Follow'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const ContainerBox());