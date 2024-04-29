import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "IGTV",
      "Viagem",
      "Arquitetura",
      "Decoração",
      "Estilo",
      "Comida",
      "Arte",
      "Beleza",
      "Música",
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Pesquisar",
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_add),
              )
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  9,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        buttons[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
