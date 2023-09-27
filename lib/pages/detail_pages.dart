// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_simple_widget/models/nutrition_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/custom_gradient_appbar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<NutritionModel> nutrition = [];
  int quantity = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  void _getInitialInfo() {
    nutrition = NutritionModel.getNutrition();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: const CustomGradientAppBar(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -130.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 550,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.00, 0.08),
                  end: Alignment(1, -0.08),
                  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/ellipse.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 18,
            left: 0.0,
            right: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pancake.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 214,
            child: Container(
              width: 375,
              height: MediaQuery.of(context).size.height,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Opacity(
                        opacity: 0.10,
                        child: Container(
                          width: 50,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1D1517),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 25,
                      ),
                      child: Text(
                        'Blueberry Pancake',
                        style: TextStyle(
                          color: Color(0xFF1D1517),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'by ',
                              style: TextStyle(
                                color: Color(0xFF7B6F72),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: 'James Ruth',
                              style: TextStyle(
                                color: Color(0xFF92A3FD),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(
                        right: 38,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  nutritionSection(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      'Descriptions',
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: SizedBox(
                      width: 365,
                      child: Text(
                        textAlign: TextAlign.justify,
                        "Pancakes are some people's favorite breakfast, who doesn't like pancakes? Especially with the real honey splash on top of the pancakes, of course everyone loves that! besides being ",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 30,
                      right: 30,
                    ),
                    child: SizedBox(
                      width: 365,
                      child: Text(
                        "Read More... ",
                        style: TextStyle(
                          color: Color(0xFF92A3FD),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFF92A3FD),
                          ),
                        ),
                        onPressed: decrementQuantity,
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Quantity: $quantity',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFF92A3FD),
                          ),
                        ),
                        onPressed: incrementQuantity,
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 315,
        height: 60,
        child: FloatingActionButton.extended(
          tooltip: "Add to Breakfast Meal",
          backgroundColor: const Color(0xFF92A3FD),
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(
            "Add to Breakfast Meal",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Column nutritionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Nutrition',
            style: TextStyle(
              color: Color(0xFF1D1517),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.09,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 45,
          child: ListView.separated(
            itemCount: nutrition.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                decoration: BoxDecoration(
                    color: nutrition[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(nutrition[index].iconPath),
                      ),
                    ),
                    Text(
                      nutrition[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
