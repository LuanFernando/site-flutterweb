import 'package:flutter/material.dart';

class ElevatorAppDesktop extends StatefulWidget {
  const ElevatorAppDesktop({super.key});

  @override
  State<ElevatorAppDesktop> createState() => _ElevatorAppDesktopState();
}

class _ElevatorAppDesktopState extends State<ElevatorAppDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          // color: Color.fromARGB(255, 230, 223, 198),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Andares superiores
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text(
                      'ANDAR 4',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text(
                      'ANDAR 3',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text(
                      'ANDAR 2',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text(
                      'ANDAR 1',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              // Terreo
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: const Center(
                    child: Text(
                      'TERREO 0',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                height: 8.0,
                width: 250.0,
                color: Colors.green,
              ),
              // Garagem
              Expanded(
                child: Container(
                  width: 100.0,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'GARAGEM -1',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {},
              child: const Icon(
                Icons.arrow_drop_up_outlined,
                size: 24.0,
                color: Colors.white,
              ),
              heroTag: "btn1",
            ),
            SizedBox(
              height: 14.0,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {},
              child: const Icon(
                Icons.arrow_drop_down_outlined,
                size: 24.0,
                color: Colors.white,
              ),
              heroTag: "btn2",
            ),
          ],
        ),
      ),
    );
  }
}
