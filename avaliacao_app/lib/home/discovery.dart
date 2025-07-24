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
        
        // Lista de cards da tela principal
        children: [
          /** ------------ Card 1 ------------ */    
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/bar_hotel');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: AppColors.backgroundColorIcone,
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/bebida.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(

                      'Bars & Hotels',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '42 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
                    ),
                  ],
                ) 
              ),
            ),
          ),
          
          /** ------------ Card 2 ------------ */
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/fine_dining');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: AppColors.backgroundColorIcone,
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/bandeja.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(
                      'Fine Dining',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '15 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          /** ------------ Card 3 ------------ */
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cafes');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: AppColors.backgroundColorIcone,
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/cafeteria.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(
                      'Cafes',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '28 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
                    ),
                  ],
                ) 
              ),
            ),
          ),
      
          /** ------------ Card 4 ------------ */
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/nearby_map');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 8, 255, 173),
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/map.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(

                      'Nearby',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '34 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          /** ------------ Card 5 ------------ */
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/fast_foods');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: AppColors.backgroundColorIcone,
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/fast_food.png', width: 100, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(
                      'Fast Foods',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '29 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
                    ),
                  ],
                ) 
              ),
            ),
          ),

          /** ------------ Card 6 ------------ */
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/featured_foods');
            },
            child: Container(
              // Estiliação do card
              decoration: BoxDecoration(
                color: AppColors.backgroundColorIcone,
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pizza.png', width: 90, height: 110),
                    SizedBox(height: 8), // Espaço entre imagem e texto
                    Text(
                      'Featured Foods',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '21 place',
                      style: TextStyle(color: AppColors.colorTextIcon, fontSize: 15),
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