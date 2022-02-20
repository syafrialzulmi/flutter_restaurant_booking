import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Icon(
              Icons.location_on,
              color: Color(0xff32B768),
              size: 16,
            ),
            Flexible(
              child: Container(
                child: Text(
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
            padding: const EdgeInsets.only(right: 10),
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
      body: Container(
        child: const Text('Home'),
      ),
    );
  }
}
