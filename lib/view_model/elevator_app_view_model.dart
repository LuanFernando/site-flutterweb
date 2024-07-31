import 'dart:async';

import 'package:flutter/material.dart';

class ElevatorAppViewModel extends ChangeNotifier {
  final int _quantidadeAndaresPredio = 6;
  String _action = ""; // opção informada pelo usuário
  String _actionElevator = ""; // opção executada pelo elevador apos validações
  bool _andarDoSolicitante =
      false; // quando chegar no andar aonde o usuario se encontra seta TRUE, para que ele possa informar qual andar quer ir
  int _posicaoAtualElevador = -1;
  int get posicaoAtualElevador => _posicaoAtualElevador;
  int _posicaoAtualUsuarioSolicitante =
      3; // todo: criar um campo para o usuário informar qual andar se encontra

  int get posicaoAtualUsuarioSolicitante => _posicaoAtualUsuarioSolicitante;
  int _andarAtual = -1;
  int get andarAtual => _andarAtual;

  int _andarInformadoPeloUsuario = 0;
  String _messageAlert = "";
  String get messageAlert => _messageAlert;

  // Informa a ação subir ou descer
  void actionInfo(String action) {
    if (action.isNotEmpty) {
      _action = action;
      if (_andarDoSolicitante == false) {
        optionAndarInformado(_posicaoAtualUsuarioSolicitante);
        animationAndar();
      }
    }
  }

  // Informa o andar
  void optionAndarInformado(int andar) {
    _andarDoSolicitante = true;
    if (andar <= _quantidadeAndaresPredio && andar >= -1) {
      _andarInformadoPeloUsuario = andar;
      if (_andarDoSolicitante == false) {
        if (_posicaoAtualElevador > _andarAtual) {
          _actionElevator = "down"; // elevador desce ate o solicitante
        } else {
          _actionElevator = "up"; // elevador sobe ate o solicitante
        }
      } else {
        if (_posicaoAtualElevador > _andarInformadoPeloUsuario) {
          _actionElevator = "down"; // elevador desce ate o solicitante
        } else {
          _actionElevator = "up"; // elevador sobe ate o solicitante
        }
      }

      animationAndar();
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
      int quantosDeveDescer = _andarDoSolicitante == false
          ? (_posicaoAtualElevador - _andarAtual).abs()
          : (_posicaoAtualElevador - _andarInformadoPeloUsuario).abs();

      if (_andarDoSolicitante == true) {
        for (var i = 0; i < quantosDeveDescer; i++) {
          _posicaoAtualElevador = _posicaoAtualElevador -
              1; // vai atualizando a posição atual do elevador
          _andarAtual =
              _posicaoAtualElevador; // andar aonde se encontra o elevador
          await Future.delayed(const Duration(seconds: 1));
          notifyListeners();
        }

        resetInputs(); // só resta quando o usuário já chegou no andar desejado
      } else {
        for (var i = _posicaoAtualElevador; i < quantosDeveDescer; i--) {
          _posicaoAtualElevador =
              i; // vai atualizando a posição atual do elevador
          _andarAtual = i; // andar aonde se encontra o elevador
          await Future.delayed(const Duration(seconds: 1));
          notifyListeners();
        }
      }
      _andarDoSolicitante = !_andarDoSolicitante;
    } else if (_actionElevator == 'up') {
      int quantosDeveSubir = _andarDoSolicitante == false
          ? (_andarAtual - _posicaoAtualElevador).abs()
          : (_andarInformadoPeloUsuario - _posicaoAtualElevador).abs();

      for (var i = _posicaoAtualElevador; i < quantosDeveSubir; i++) {
        _posicaoAtualElevador =
            i; // vai atualizando a posição atual do elevador
        _andarAtual = i; // andar aonde se encontra o elevador
        await Future.delayed(const Duration(seconds: 1));
        notifyListeners();
      }
      _andarDoSolicitante = !_andarDoSolicitante;
    }

    _posicaoAtualUsuarioSolicitante =
        _andarAtual; // atualiza o andar que o usuario está.
  }

  void resetInputs() {
    _action = "";
    _actionElevator = "";
    _andarDoSolicitante = false;
    _andarInformadoPeloUsuario = 0;
    _messageAlert = "";
  }
}
