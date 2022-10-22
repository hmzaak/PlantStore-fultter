import 'package:flutter/material.dart';
import 'package:plantstore/model/plant.dart';
import 'package:plantstore/model/plants_repository.dart';
import 'package:plantstore/ui/screens/plant_details/plant_details_page.dart';

class PlantsList extends StatelessWidget {
  const PlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> plants = PlantsRepository.loadPlants();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: plants.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                width: size.width * 0.48,
              ),
              Positioned(
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(PlantDetailsPage.route);
                  },
                  child: Container(
                    height: size.height * 0.27,
                    width: size.width * 0.48,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: WaveClipper(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.4),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            height: size.height * 0.22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.25,
                child: plants[index].image,
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: size.height * 0.06,
                  width: size.width * 0.48,
                  // decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            plants[index].category,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Text(
                            plants[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff184A2C),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: size.height * 0.03,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(plants[index].price),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40);
    // first controlling poing
    var firstStart = Offset(size.width / 2.5, size.height);
    var firstEnd = Offset(size.width, size.height - 100);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
