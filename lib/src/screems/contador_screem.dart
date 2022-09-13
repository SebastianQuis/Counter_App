import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = const TextStyle(fontSize: 20);
  int _conteo = 0; 

  @override
  Widget build(BuildContext context) {
    //buildcontext es todo el arbol de los widgets
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contador de Taps')),
        elevation: 10, //sombra bajo el appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de clicks', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton( onPressed: _restar, child: const Icon(Icons.remove)),
        const SizedBox(width: 10.0), // caja transparente
        FloatingActionButton( onPressed: _resetear, child: const Icon(Icons.restore_rounded)),
        const SizedBox(width: 10.0),
        FloatingActionButton( onPressed: _sumar, child: const Icon(Icons.add)),
      ],
    );
  }

  void _sumar() => setState(() => _conteo++);

  void _restar() => setState( () => (_conteo <= 0) ? _conteo = 0 : _conteo-- );

  void _resetear() => setState(() => _conteo = 0);

}
