import 'package:campo_minado/components/tabuleiro_widget.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';
import '../components/resultado_widget.dart';
import '../components/campo_widget.dart';
import '../models/campo.dart';
import '../models/explosao_exception.dart';

class CampoMinadoApp extends StatefulWidget {
  @override
  State<CampoMinadoApp> createState() => _CampoMinadoAppState();
}

class _CampoMinadoAppState extends State<CampoMinadoApp> {
  bool? _venceu;
  Tabuleiro _tabuleiro = Tabuleiro(
    linhas: 12,
    colunas: 12,
    qtdBombas: 3,
  );

  void _reiniciar() {
    print('_reiniciar...');
  }

  void _abrir(Campo capo) {
    print('_abrir...');
  }

  void _alternarMarcacao(Campo campo) {
    print('_alternarMarcacao...');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: _venceu,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: TabuleiroWidget(
            tabuleiro: _tabuleiro,
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
          ),
        ),
      ),
    );
  }
}
