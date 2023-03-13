import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Screen : Card Widget")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: "Hermoso Paisaje",
            imageUrl:
                'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: null,
            imageUrl:
                'https://images.unsplash.com/photo-1612441804231-77a36b284856?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bW91bnRhaW4lMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg',
          ),
        ],
      ),
    );
  }
}
