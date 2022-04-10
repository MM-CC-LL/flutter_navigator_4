import 'package:flutter/material.dart';
import 'package:flutter_navigator_4/models/treino.dart';
import '../screens/details_screen.dart';

class FavoriteWidget extends StatefulWidget 
{
  const FavoriteWidget({ Key? key}) : super(key: key);

  

  @override
  State<FavoriteWidget> createState() => ListProducts();
}

class ListProducts extends State<FavoriteWidget>
{
  final List<Treino> products = [
      
      const Treino(
          'Treino 1',
          '20 KG',
          'Perna',
          1,
          "images/peso.png"),
          //Image.asset('images/Carro_1.jpg', width: 400, height: 400, fit: BoxFit.fill)
    
      const Treino(
          'Treino 2',
          '40 KG',
          'Ombro',
          2,
          "images/peso.png"),
          //Image.asset('images/Carro_2.jpg', width: 400, height: 400, fit: BoxFit.fill)),

      const Treino(
          'Treino 3',
          '10 KG',
          'Peito',
          3,
          "images/peso.png"),
         // Image.asset('images/Carro_3.jpg', width: 400, height: 400,fit: BoxFit.fill )),

      const Treino(
          'Treino 4',
          '50 KG',
          'Braço',
          4,
          "images/peso.png"),
          //Image.asset('images/Carro_4.jpg',width: 400, height: 400, fit: BoxFit.fill)),
    ];
    List<int> treinos = [];
    void exfuncao (id )
    {
      setState(() 
      {
        
        if(!treinos.any((element) => element==id)){treinos.add(id);
        }else{treinos.remove(id);}
      });
    }
  @override
  Widget build(BuildContext context) //Construindo a lista de produtos e dimensionando eles.
  {
   
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true, //Centraliza o titulo.
        title: const Text('Lista de Exercicios'), //Titulo.
        backgroundColor: Colors.black87, //Cor de fundo do Appbar.
        
      ),
      backgroundColor: Colors.grey, //Cor de fundo da Tela.
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index)
        {
          return Column(children: 
          [
            Text(products[index].nome),
            const Icon(Icons.add_box_rounded, color: Color.fromARGB(255, 0, 0, 0)), //incone adiciona.
            IconButton(
            padding: const EdgeInsets.all(0),
            icon: treinos.any((element) => element==products[index].id)
             ? const Icon(Icons.star, color: Colors.yellow)
             : const Icon(Icons.star, color: Colors.black,),
             onPressed: (){ exfuncao(products[index].id);}
           ),

          ElevatedButton(
            onPressed: () 
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detalhes(produto: products[index]),
                  ));
            },
            child: const Text('Ver treino'),
          ),
          ]
        
        );
        }
      ),
      bottomNavigationBar: Container(width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.1,color: Colors.black87,
      child: Row(children: [Text("Todal de:${treinos.length}",
      
      style: const TextStyle(color: Colors.white),)],),),
    );
  }
}

