import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/elevator_app_view_model.dart';
import 'desktop/elevator_app_desktop.dart';
import 'mobile/elevator_app_mobile.dart';
import 'responsive.dart';

class ElevatorApp extends StatefulWidget {
  const ElevatorApp({super.key});

  @override
  State<ElevatorApp> createState() => _ElevatorAppState();
}

class _ElevatorAppState extends State<ElevatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevator App'),
      ),
      body: Responsive(
          mobileBody: elevantorAppMobile(), desktopBody: elevantorAppDesktop()),
      floatingActionButton: Consumer<ElevatorAppViewModel>(
          builder: (context, elevatorAppViewModel, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                onPressed: () => elevatorAppViewModel.actionInfo('up'),
                heroTag: "btn1",
                child: const Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                onPressed: () => elevatorAppViewModel.actionInfo('down'),
                heroTag: "btn2",
                child: const Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
