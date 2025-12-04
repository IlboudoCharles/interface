import 'package:flutter/material.dart';
import 'package:realisation_interface/constants,/colors.dart';
import 'package:realisation_interface/widget_s/bottom_bar_item.dart';



Widget buildHeaderAndSearchBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 10,
        left: 15,
        right: 15,
        bottom: 25
    ),
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [kGradientStartColor, kGradientEndColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                const Icon(Icons.location_on_outlined, size: 18, color: kLocationText),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Your location', style: TextStyle(fontSize: 12, color: kLocationText)),
                    Row(
                      children: [
                        const Text(
                          'San Antione, TX',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kDarkGrey),
                        ),
                        const Icon(Icons.keyboard_arrow_down, size: 20, color: kDarkGrey),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.notifications_none_rounded,),
          ],
        ),
        const SizedBox(height: 15),
        // Barre de recherche
        Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: kSearchBarColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Row(
            children: [
              Icon(Icons.search, color: kMediumGrey, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for a service...',
                    hintStyle: TextStyle(color: Color(0xFFAAAAAA)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 8),
                  ),
                ),
              ),
              Icon(Icons.mic_none, color: kMediumGrey, size: 20),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildBanner() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.green.shade800,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'YOUR SOLUTION,',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
              const Text(
                'ONE TAP AWAY!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Seamless, Fast &Reliablen\nServices at Your Fingertips',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  elevation: 0,
                ),
                child: const Text(
                  'Explore',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        // Placeholder pour l'image
        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: kPrimaryGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Center(
              child: Container(
                width: 200.0,
                height: 200.0,
                child: Image.asset(
                  'assets/images/image2.png.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ),
        ),
      ],
    ),
  );
}

Widget buildSectionHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kDarkGrey),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: const Text(
            'View all >',
            style: TextStyle(fontSize: 12, color: kMediumGrey),
          ),
        ),
      ],
    ),
  );
}

Widget buildCategoryItem(IconData icon, String text) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kLightBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon, color: kLocationText, size: 24),
      ),
      const SizedBox(height: 5),
      Text(text, style: const TextStyle(fontSize: 12, color: kDarkGrey)),
    ],
  );
}

Widget buildServiceCategories() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildSectionHeader('Services Categories'),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            buildCategoryItem(Icons.content_cut, 'Hairdresser'),
            buildCategoryItem(Icons.cleaning_services, 'Cleaning'),
            buildCategoryItem(Icons.format_paint, 'Painting'),
            const SizedBox(width: 10),
          ],
        ),
      ),
    ],
  );
}

Widget buildServiceCard(Map<String, String> service) {
  return Container(
    width: 300,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: kServiceCardBorder),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Espace image
        Stack(
          children: [

            Container(
              height: 90,
              width: 295,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/image2.png.png"
                    ,),
                  fit: BoxFit.cover,),
              ),
            ),
            // Badge de notation
            Positioned(
              bottom: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: kReviewStar, size: 10),
                    SizedBox(width: 3),
                    Text(
                      '4.5 (123 Reviews)',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Détails du service
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                service['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                service['price']!,
                style: const TextStyle(color: Color(0xFF777777), fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildPopularServices() {
  final List<Map<String, String>> services = [
    {'name': 'Home Cleaning', 'price': '\$25 - \$30'},
    {'name': 'Cooking', 'price': '\$25 - \$30'},
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildSectionHeader('Popular Services'),
      SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return buildServiceCard(services[index]);
          },
        ),
      ),
    ],
  );
}

Widget buildBottomNavBar() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(top: BorderSide(color: kLightGrey, width: 1)),
    ),
    height: 70,
    padding: const EdgeInsets.only(top: 8, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomBarItem(icon: Icons.home_filled,label: 'Home', isActive: true, onTap: (){}),
        BottomBarItem(icon: Icons.calendar_month_outlined, isActive: false, onTap: (){}),
        BottomBarItem(icon: Icons.shopping_bag_outlined, isActive: false, onTap: (){}),
        BottomBarItem(icon: Icons.person_outline, isActive: false, onTap: (){}),
      ],
    ),
  );
}