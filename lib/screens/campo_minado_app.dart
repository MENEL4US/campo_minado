import 'package:flutter/material.dart';
import '../components/resultado_widget.dart';
import '../components/campo_widget.dart';
import '../models/campo.dart';
import '../models/explosao_exception.dart';

class CampoMinadoApp extends StatelessWidget {
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
    Campo vizinho = Campo(coluna: 1, linha: 1);
    vizinho.minar();

    Campo vizinho2 = Campo(coluna: 1, linha: 1);
    vizinho2.minar();

    Campo campo = Campo(linha: 0, coluna: 0);
    campo.adicionarVizinho(vizinho);
    campo.adicionarVizinho(vizinho2);

    try {
      // campo.minar();
      campo.alternarMarcacao();
    } on ExplosaoException {}

    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: CampoWidget(
            campo: campo,
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
          ),
        ),
      ),
    );
  }
}
