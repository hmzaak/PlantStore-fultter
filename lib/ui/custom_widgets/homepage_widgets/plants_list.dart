import 'package:flutter/material.dart';
import 'package:plantstore/model/plant.dart';
import 'package:plantstore/model/plants_repository.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                width: size.width * 0.48,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: size.height * 0.27,
                  width: size.width * 0.48,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: WaveClipper(),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
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
              SizedBox(
                height: size.height * 0.25,
                child: plants[index].image,
              ),
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
