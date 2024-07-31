import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/elevator_app_view_model.dart';

elevantorAppMobile() {
  return Consumer<ElevatorAppViewModel>(
      builder: (context, elevatorAppViewModel, child) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width - 24.0,
        color: Color.fromARGB(255, 230, 223, 198),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Prédio
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Andares superiores
                  Expanded(
                    child: Container(
                      width: 100.0,
                      color: (elevatorAppViewModel.posicaoAtualElevador == 4
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
                      color: (elevatorAppViewModel.posicaoAtualElevador == 3
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
                      color: (elevatorAppViewModel.posicaoAtualElevador == 2
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
                      color: (elevatorAppViewModel.posicaoAtualElevador == 1
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
                      color: (elevatorAppViewModel.posicaoAtualElevador == 0
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
                    width: 100.0,
                    color: Colors.green,
                  ),
                  // Garagem
                  Expanded(
                    child: Container(
                      width: 100.0,
                      color: (elevatorAppViewModel.posicaoAtualElevador == -1
                          ? Colors.redAccent
                          : Colors.blueGrey),
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
              // caixa de escolha de andares
              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "ANDAR: ${elevatorAppViewModel.andarAtual}",
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                        "POSIÇÃO ATUAL DO USUÁRIO: ${elevatorAppViewModel.posicaoAtualUsuarioSolicitante}"),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      elevatorAppViewModel.messageAlert,
                      style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 70.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(2),
                              child: const Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(3),
                              child: const Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(4),
                              child: const Text(
                                '4',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(-1),
                              child: const Text(
                                '- 1',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(0),
                              child: const Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: () =>
                                  elevatorAppViewModel.optionAndarInformado(1),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  });
}
