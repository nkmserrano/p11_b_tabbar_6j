import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo TabBar',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bolenais',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Ventas',
                icon: Icon(Icons.local_play_rounded, size: 30.0),
              ),
              Tab(
                  text: 'Artistas',
                  icon: Icon(Icons.mic_external_on_rounded, size: 30.0)),
              Tab(
                  text: 'Festival',
                  icon: Icon(Icons.calendar_month_outlined, size: 30.0)),
              Tab(text: 'Pago', icon: Icon(Icons.payment_rounded, size: 30.0)),
              Tab(
                  text: 'Sucursales',
                  icon: Icon(Icons.location_on_sharp, size: 30.0)),
            ], //Texto Icono
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Icon(Icons.local_play_rounded,
                size: 300.0, color: Color(0xFFFCB4335)),
            Icon(Icons.mic_external_on_rounded,
                size: 300.0, color: Color(0xFFF2E4053)),
            Icon(Icons.calendar_month_outlined,
                size: 300.0, color: Color(0xFFFA04000)),
            Icon(Icons.payment_rounded, size: 300.0, color: Color(0xFFF2471A3)),
            Icon(Icons.location_on_sharp,
                size: 300.0, color: Color(0xFFF28B463))
          ],
        ),
      ),
    );
  }
}
