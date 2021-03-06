import 'package:flutter/material.dart';
import '../../modelos/Receita.dart';

class Detalhes extends StatelessWidget {

  final Receita receita;

  Detalhes({Key key, @required this.receita}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }


  Widget _construirDetalhes() {
    return Scaffold(
      body: ListView(
        children: [
          _construirImagemDetalhes(receita.foto),
          _construirTituloDetalhes(receita.titulo),
          _construirLinhaIconesDetalhes('${receita.porcoes} Itens', receita.tempoPreparo),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Modo de  preparo'),
          _construirTextDetalhes(receita.modoPreparo),
        ],
      ) ,
      appBar: _construirAppBar(),
    );
  }
  
  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Center(
      child:Text(titulo, style: TextStyle(
      color: Colors.deepOrange, fontSize: 20
    ),),
    );
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo) {
    return Row(
      children: [
        _construirColunaIconsDetalhes(Icons.timer, tempo),
        _construirColunaIconsDetalhes(Icons.restaurant, rendimento)
      ],
    );
  }

  Widget _construirColunaIconsDetalhes(icone, texto) {
    return Expanded(
        child: Column(
            children: [
              Icon(icone, color:  Colors.deepOrange,),
              Text(texto, style: TextStyle(color:  Colors.deepOrange,
              fontWeight: FontWeight.bold, fontSize: 12))
            ],
    ));
  }

  Widget _construirSubtituloDetalhes(subtitulo) {
    return Text(
      subtitulo, style: TextStyle(fontWeight:  FontWeight.bold,
        fontSize: 20),
    );
  }

  Widget _construirTextDetalhes(tituloone){
    return Container(
        padding: EdgeInsets.all(14),
      child: Text(tituloone),
        );
  }

  Widget _construirAppBar() {
    return AppBar(title: Text('Array de itens - 2'));
  }
}
