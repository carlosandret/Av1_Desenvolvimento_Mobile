import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Váriável controladora do texto digitado em password
  TextEditingController passwordController = TextEditingController();
  // Váriável controladora do texto digitado em email
  TextEditingController emailController = TextEditingController();

  double resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra do app = (header)
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discovery', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.backgroundColorAppBar,
      ),
      // BackGround do body
      backgroundColor: AppColors.backgroundColor,
      // Onde é estruturado o corpo do app
      body: GridView.count(
        crossAxisCount: 2, // Número de colunas da grade
        mainAxisSpacing: 17, // Espaço vertical entre itens
        crossAxisSpacing: 17, // Espaço horizontal entre itens
        childAspectRatio: 1.0,  // Proporção largura/altura - Quadrado
        padding: EdgeInsets.all(20), // Espaçamento ao redor dos itens

        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 52, 68, 156),
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/posto.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              color: const Color.fromARGB(255, 52, 68, 156),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/cafeteria.jpg', width: 90, height: 110),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),


          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              color: const Color.fromARGB(255, 52, 68, 156),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/cafeteria.jpg', width: 90, height: 110),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              color: const Color.fromARGB(255, 52, 68, 156),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/cafeteria.jpg', width: 90, height: 110),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              color: const Color.fromARGB(255, 52, 68, 156),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/cafeteria.jpg', width: 90, height: 110),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pagina2');
            },
            child: Container(
              color: const Color.fromARGB(255, 52, 68, 156),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/cafeteria.jpg', width: 90, height: 110),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ) 
              ),
            ),
          ),
        ],
      )
    );
  }
}