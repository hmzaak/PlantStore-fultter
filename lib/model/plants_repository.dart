import 'package:flutter/cupertino.dart';
import 'package:plantstore/model/plant.dart';

class PlantsRepository {
  static List<Plant> loadPlants() {
    List<Plant> allPlants = [
      Plant(
        name: 'Peace Lily',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/peaceLily.png'),
      ),
      Plant(
        name: 'Schefflera',
        category: 'Indoor',
        price: '22',
        image: Image.asset('assets/schefflera.png'),
      ),
      Plant(
        name: 'Ficus Elista',
        category: 'Outdoor',
        price: '18',
        image: Image.asset('assets/ficusElista.png'),
      ),
      Plant(
        name: 'Arboricola',
        category: 'Outdoor',
        price: '20',
        image: Image.asset('assets/arboricola.png'),
      ),
      Plant(
        name: 'Snake Plant',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/snakePlant.png'),
      ),
    ];
    return allPlants;
  }
}
