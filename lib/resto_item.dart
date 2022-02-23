import 'package:flutter/material.dart';

class RestoItem extends StatelessWidget {
  const RestoItem(
      {Key? key,
      required this.image,
      required this.nameResto,
      required this.location})
      : super(key: key);

  final String image;
  final String nameResto;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        title: Text(
          nameResto,
          style: TextStyle(
            color: Color(0xff1F2937),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on,
              color: Color(0xff32B768),
            ),
            Flexible(
              child: Text(
                location,
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Book',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff32B768),
            fixedSize: const Size(88, 28),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadowColor: Colors.transparent,
          ),
        ),
        isThreeLine: true,
      ),
    );
  }
}
