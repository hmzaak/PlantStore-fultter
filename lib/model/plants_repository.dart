import 'package:flutter/cupertino.dart';
import 'package:plantstore/model/plant.dart';

class PlantsRepository {
  static List<Plant> loadPlants() {
    List<Plant> allPlants = [
      Plant(
        name: 'Snake Plant',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/snakePlant.png'),
      ),
      Plant(
        name: 'Arboricola',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/arboricola.png'),
      ),
      Plant(
        name: 'Ficus Elista',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/ficusElista.png'),
      ),
      Plant(
        name: 'Sansevieria',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/sansevieria.png'),
      ),
      Plant(
        name: 'Dieffenbachia',
        category: 'Indoor',
        price: '25',
        image: Image.asset('assets/dieffenbachia.png'),
      ),
    ];
    return allPlants;
  }
}
