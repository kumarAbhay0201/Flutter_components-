import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productImage;
  final String productPrice;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImage,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 25,
          child: Container(
            height: 200,
            width: 250,
            color: Colors.white,
            child: Image.asset(
              productImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 230,
          left: 25,
          child: Text(
            productName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 25,
          top: 260,
          child: Text(productDescription),
        ),
        Positioned(
          left: 25,
          top: 350,
          child: Text(
            productPrice,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 26),
          ),
        ),
        Positioned(
          top: 400,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Buy Now"),
          ),
        ),
      ],
    );
  }
}
