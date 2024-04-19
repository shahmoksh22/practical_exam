import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        // actions: <Widget>[
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
         CustomProductContainer(imagePath: "assets/images/macbookimg1.jpg", imagePath1: "assets/images/macbookimg2.jpg", imagePath2: "assets/images/macbookimg4.jpg", imagePath3: "assets/images/macbookimg5.jpg", productName: " MacBook Air", productPrice: "\$5", productDiscription: "Apple MacBook Air Laptop \nM1 chip, 13.3-inch", initialRating: "(3.5)3000 Rating"),
            CustomProductContainer(imagePath: "assets/images/macbookimg1.jpg", imagePath1: "assets/images/macbookimg2.jpg", imagePath2: "assets/images/macbookimg4.jpg", imagePath3: "assets/images/macbookimg5.jpg", productName: " MacBook Air", productPrice: "\$5", productDiscription: "Apple MacBook Air Laptop \nM1 chip, 13.3-inch", initialRating: "(3.5)3000 Rating"),
            CustomProductContainer(imagePath: "assets/images/macbookimg1.jpg", imagePath1: "assets/images/macbookimg2.jpg", imagePath2: "assets/images/macbookimg4.jpg", imagePath3: "assets/images/macbookimg5.jpg", productName: " MacBook Air", productPrice: "\$5", productDiscription: "Apple MacBook Air Laptop \nM1 chip, 13.3-inch", initialRating: "(3.5)3000 Rating"),

            CustomProductContainer(imagePath: "assets/images/macbookimg1.jpg", imagePath1: "assets/images/macbookimg2.jpg", imagePath2: "assets/images/macbookimg4.jpg", imagePath3: "assets/images/macbookimg5.jpg", productName: " MacBook Air", productPrice: "\$5", productDiscription: "Apple MacBook Air Laptop \nM1 chip, 13.3-inch", initialRating: "(3.5)3000 Rating"),

          ],
        ),
      )
    );
  }
}

class CustomProductContainer extends StatelessWidget {
  final String imagePath;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final String productName;
  final String productPrice;
  final String productDiscription;
  final String initialRating;

  const CustomProductContainer({
    Key? key,
    required this.imagePath,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
    required this.productName,
    required this.productPrice,
    required this.productDiscription,
    required this.initialRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Circular border radius
        border: Border.all(color: Colors.black), // Add black border
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      productName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(productDiscription,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ],
              ),

            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    productPrice,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  initialRating,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath1,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath2,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath3,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}

