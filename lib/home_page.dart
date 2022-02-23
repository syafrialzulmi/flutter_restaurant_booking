import 'package:flutter/material.dart';
import 'package:flutter_restaurant_booking/banner.dart';
import 'package:flutter_restaurant_booking/food_item.dart';
import 'package:flutter_restaurant_booking/resto_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _banner = [
    const BannerItem(
      logo: 'assets/images/logo_burger_king.png',
      title: 'Flash Offer',
      description: 'We are here with the best deserts intown.',
      image: 'assets/images/burgers.png',
      colorLeft: Color(0xffFF9F06),
      colorRight: Color(0xffFFE1B4),
    ),
    const BannerItem(
      logo: 'assets/images/logo_domino.png',
      title: 'New Arivable',
      description: 'We are here with the best deserts intown.',
      image: 'assets/images/pizza.png',
      colorLeft: Color(0xff01CD65),
      colorRight: Color(0xff018FBE),
    ),
  ];

  final controller = PageController(
    viewportFraction: 0.9,
    keepPage: true,
  );

  List<Widget> _food = [
    FoodItem(
      image: 'assets/images/nasi_gandul.jpg',
      foodName: 'Nasi Gandul',
      location: 'Puri Maerokoco Tawang Mas',
    ),
    FoodItem(
      image: 'assets/images/soto_ayam.jpg',
      foodName: 'Soto Ayam',
      location: 'Jl. Veteran No.29, Lempongsari',
    ),
    FoodItem(
      image: 'assets/images/sate_kambing.jpg',
      foodName: 'Sate Kambing',
      location: 'Jl. Sultan Agung No.117',
    ),
    FoodItem(
      image: 'assets/images/gulai_kambing.jpg',
      foodName: 'Gulai Kambing',
      location: 'Jl. Singosari Raya No.49',
    ),
    FoodItem(
      image: 'assets/images/es_durian.jpg',
      foodName: 'Es Durian',
      location: 'Jl. Simongan No.22A',
    ),
  ];

  List<Widget> _resto = [
    RestoItem(
      image: 'assets/images/kampung_laut.jpg',
      nameResto: 'Kampung Laut',
      location: 'Puri Maerokoco Tawang Mas',
    ),
    RestoItem(
      image: 'assets/images/pesta_keboen.jpg',
      nameResto: 'Pesta Keboen',
      location: 'Jl. Veteran No.29, Lempongsari',
    ),
    RestoItem(
      image: 'assets/images/selera_indonesia.jpg',
      nameResto: 'Selera Indonesia',
      location: 'Jl. Sultan Agung No.117',
    ),
    RestoItem(
      image: 'assets/images/gulai_kambing.jpg',
      nameResto: 'Kedai Gula Jawa',
      location: 'Jl. Singosari Raya No.49',
    ),
    RestoItem(
      image: 'assets/images/delman_resto.jpg',
      nameResto: 'Delman Resto',
      location: 'Jl. Simongan No.22A',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F6F6),
        leading: const Icon(
          Icons.menu,
          color: Color(0xff374151),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Color(0xff32B768),
              size: 16,
            ),
            Flexible(
              child: Container(
                child: const Text(
                  'Agrabad 435, Chittagong',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff4B5563),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/img-1.jpg'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  color: const Color(0xffE6E7E9),
                  borderRadius: BorderRadius.circular(20)),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff9CA3AF),
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(70),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, int index) {
                    return _banner[index % _banner.length];
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: _banner.length,
                effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                  dotColor: Color(0xffE6E6E6),
                  activeDotColor: Color(0xff32B768),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Today New Arivable',
                        style: TextStyle(
                          color: Color(0xff1F2937),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Best of the today  food list update',
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff6B7280),
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _food.length,
                  itemBuilder: (context, int index) {
                    return _food[index];
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Booking Restaurant',
                        style: TextStyle(
                          color: Color(0xff1F2937),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Check your city Near by Restaurant',
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff6B7280),
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                itemCount: _resto.length,
                itemBuilder: (context, int index) {
                  return _resto[index];
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Color(0xff4B5563),
          selectedItemColor: Color(0xff32B768),
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.new_label_rounded),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.event_available_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.account_circle_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
