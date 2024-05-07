import 'package:flutter/material.dart';

import '../../api/api_post.dart';
import '../../sign in/sign_in_google.dart';
import 'api_meals.dart';

class FoodCard extends StatefulWidget {
  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  late ApiMeals apiMeals;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    // Fetch data from API
    final dioHelper = DioHelper();
    final response = await dioHelper.getData(
        url:
            'http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Diet/$userId');

    // Parse the response JSON
    setState(() {
      apiMeals = ApiMeals.fromJson(response.data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 26),
          buildMealCategory("Breakfast", apiMeals.breakfast, 0),
          buildMealCategory("Snack", apiMeals.snack, 1),
          buildMealCategory("Lunch", apiMeals.lunch, 2),
          buildMealCategory("After Work", apiMeals.afterWork, 3),
          buildMealCategory("Dinner", apiMeals.dinner, 4),
        ],
      ),
    );
  }

  Widget buildMealCategory(String category, List<AfterWork>? meals, int index) {
    if (meals == null || meals.isEmpty) {
      return const SizedBox
          .shrink(); // Return an empty SizedBox if no meals available
    }

    bool isExpanded = _expandedIndex == index;

    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _expandedIndex = isExpanded ? null : index;
              });
            },
            child: Container(
              width: 500,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color:  Color(0xff97BEFC),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(4,8),
                  )
                ]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 7, top: 7),
                    child: Icon(
                      Icons.restaurant_menu_outlined,
                     color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 8,
                    ),
                    child: Text(
                      category,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                         color: Colors.white

                      ),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.white,

                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(4,8),
                    )
                  ]
                ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: meals.length,
                itemBuilder: (context, index) {
                  var meal = meals[index];
                  return buildMealItem(meal.item1!, meal.item2!);
                },
              ),
            ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget buildMealItem(String itemName, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade100
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 11,

                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
