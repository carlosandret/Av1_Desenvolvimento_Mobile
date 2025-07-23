import 'package:avaliacao_app/home/home_page.dart';
import 'package:avaliacao_app/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'pages/pagina2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => MyHomePage(),
        '/pagina2': (context) => Pagina2(),
        '/pagina3': (context) => pagina3(),
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 219, 18, 159),
        ),
      ),
      themeMode: ThemeMode.light,
      home: const Navigation(),
    );
  }
}



class pagina3 extends StatefulWidget {
  const pagina3({super.key});

  @override
  State<pagina3> createState() => _pagina3State();
}

class _pagina3State extends State<pagina3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Página 3"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.abc_rounded)),
              Tab(icon: Icon(Icons.abc_sharp)),
            ],
          ),
        ),
        body: const TabBarView(children: [Text("Botao"), Text("Botao 2")]),
      ),
    );
  }
}




// class DestaqueCardSimples extends StatefulWidget {
//   final String texto;
//   final VoidCallback onTap;

//   const DestaqueCardSimples({required this.texto, required this.onTap});

//   @override
//   _DestaqueCardSimplesState createState() => _DestaqueCardSimplesState();
// }

// class _DestaqueCardSimplesState extends State<DestaqueCardSimples> {
//   bool _pressed = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onTap,
//       onTapDown: (_) => setState(() => _pressed = true),
//       onTapUp: (_) => setState(() => _pressed = false),
//       onTapCancel: () => setState(() => _pressed = false),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 100),
//         decoration: BoxDecoration(
//           color: _pressed ? Colors.red[700] : Colors.red,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         alignment: Alignment.center,
//         child: Text(
//           widget.texto,
//           style: TextStyle(color: Colors.white, fontSize: 18),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
