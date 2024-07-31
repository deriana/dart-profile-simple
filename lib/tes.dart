import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Material extends StatefulWidget {
  const Material({super.key});

  @override
  State<Material> createState() => _MaterialState();
}

class _MaterialState extends State<Material> {
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
          backgroundColor: Colors.purple[300],
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 500,
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
                  "Sorasaki Hina",
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
                        "Isteri",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Gap(5),
                const Text(
                  "Kenapa Sorasaki Hina itu Cantik, karena dia itu pengertian baik ramah dan juga dia imut benget pliss (CANTIK BANGET ALLAHU AKBAR)",
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                      const Text("MANTAP BOS QU");
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

void main() => runApp(const Material());
