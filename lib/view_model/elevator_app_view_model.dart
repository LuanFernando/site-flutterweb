import 'dart:async';

import 'package:flutter/material.dart';

class ElevatorAppViewModel extends ChangeNotifier {
  final int _quantidadeAndaresPredio = 6;
  String _action = ""; // opção informada pelo usuário
  String _actionElevator = ""; // opção executada pelo elevador apos validações
  bool _andarDoSolicitante =
      false; // quando chegar no andar aonde o usuario se encontra seta TRUE, para que ele possa informar qual andar quer ir

  //
  int _posicaoAtualElevador = -1;
  int get posicaoAtualElevador => _posicaoAtualElevador;
  //
  int _posicaoAtualUsuarioSolicitante = 3;
  int get posicaoAtualUsuarioSolicitante => _posicaoAtualUsuarioSolicitante;

  int _andarInformadoPeloUsuario = 0;
  //
  String _messageAlert = "";
  String get messageAlert => _messageAlert;

  // Informa a ação subir ou descer
  void actionInfo(String action) {
    if (action.isNotEmpty) {
      _action = action;
      print(_action);
      if (_andarDoSolicitante == false) {
        optionAndarInformado(_posicaoAtualUsuarioSolicitante);
        animationAndar();
      }
    }
  }

  // Informa o andar
  void optionAndarInformado(int andar) {
    if (andar <= _quantidadeAndaresPredio && andar >= -1) {
      _andarInformadoPeloUsuario = andar;
      if (_andarDoSolicitante == false) {
        if (_posicaoAtualElevador > _posicaoAtualUsuarioSolicitante) {
          // elevador desce ate o solicitante
          _actionElevator = "down";
        } else {
          // elevador sobe ate o solicitante
          _actionElevator = "up";
        }
      } else {
        if (_posicaoAtualElevador > _andarInformadoPeloUsuario) {
          // elevador desce ate o solicitante
          _actionElevator = "down";
        } else {
          // elevador sobe ate o solicitante
          _actionElevator = "up";
        }
      }

      print(_actionElevator);
    } else {
      _messageAlert = "Andar Inválido!";
      notifyListeners();
      Timer timer = new Timer(const Duration(seconds: 3), () {
        _messageAlert = "";
        notifyListeners();
      });
    }
  }

  //
  void animationAndar() async {
    if (_actionElevator == 'down') {
      int quantosDeveDescer =
          (_posicaoAtualElevador - _posicaoAtualUsuarioSolicitante).abs();

      for (var i = 0; i < quantosDeveDescer; i--) {
        _posicaoAtualElevador =
            i; // vai atualizando a posição atual do elevador
        _posicaoAtualUsuarioSolicitante = i; // nova posição do usuario
        await Future.delayed(const Duration(seconds: 1));
        notifyListeners();
      }

      print(_posicaoAtualUsuarioSolicitante);
      print(_posicaoAtualElevador);
    } else if (_actionElevator == 'up') {
      int quantosDeveSubir =
          (_posicaoAtualUsuarioSolicitante - _posicaoAtualElevador).abs();

      for (var i = 0; i < quantosDeveSubir; i++) {
        _posicaoAtualElevador =
            i; // vai atualizando a posição atual do elevador

        _posicaoAtualUsuarioSolicitante = i; // nova posição do usuario
        await Future.delayed(const Duration(seconds: 1));
        notifyListeners();
      }

      _andarDoSolicitante == true;

      print(_posicaoAtualUsuarioSolicitante);
      print(_posicaoAtualElevador);
    }
  }
}
