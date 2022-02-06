import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() =>  _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps', style: _estiloTexto,),
            Text( '$_contador' , style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30.0),
        FloatingActionButton( child: Icon(Icons.restart_alt), onPressed: _reiniciar),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width:5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _sumar),
      ],
    );
    
  }

  void _sumar(){
    setState(() => _contador++);
  }

  void _restar(){
    setState(() => _contador--);
  }

  void _reiniciar(){
    setState(() => _contador=0);
  }

}