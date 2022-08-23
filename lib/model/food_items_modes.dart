import 'package:flutter/material.dart';

class FoodItemsModel {
  final Image photo;
  final String name;
  final String location;
  final String time;
  final String price;
  final String? description;
  final String? companyName;
  final String? companyCategory;
  final String? locationName;

  FoodItemsModel({
    required this.photo,
    required this.name,
    required this.location,
    required this.time,
    required this.price,
    this.description,
    this.companyName = '',
    this.companyCategory = '',
    this.locationName,
  });
}

List<FoodItemsModel> foodItems = [
  FoodItemsModel(
      photo: Image.asset('assets/momo.jpg', fit: BoxFit.cover),
      location: '0.8km',
      name: 'mo:mo',
      time: '10-15',
      price: 'Rs.150',
      description:
          'Mo:Mo is the best foods in Nepal for lunch time.When you order mo:mo you will get 10 pices of mo:mo',
      companyName: 'ABC compnay',
      companyCategory: 'burder house',
      locationName: 'Thali'),
  FoodItemsModel(
    photo: Image.asset('assets/khana_set.jpg', fit: BoxFit.cover),
    location: '0.9km',
    name: 'Khana set',
    time: '10-20',
    price: 'Rs.250',
    description: 'we do not have description',
    companyName: 'ABCs compnay',
    companyCategory: 'resturent house',
    locationName: 'Bouddha',
  ),
  FoodItemsModel(
      photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
      location: '1.1km',
      name: 'pizza',
      time: '15-25',
      price: 'Rs.400',
      description: 'we do not have description currently',
      companyName: 'xyz compnay',
      companyCategory: 'kfc',
      locationName: 'Jorpati'),
  FoodItemsModel(
    photo: Image.asset('assets/burger.jpg', fit: BoxFit.cover),
    location: '1.5km',
    name: 'burger',
    time: '20-30',
    price: 'Rs.300',
    description: 'we do not have description',
    companyName: 'ABC compnay',
    companyCategory: 'Cafe',
    locationName: 'chabahil',
  ),
];

List<FoodItemsModel> kfcMenu = [
  FoodItemsModel(
      photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
      location: '1.1km',
      name: 'pizza',
      time: '15-25',
      price: 'Rs.350',
      description: 'we do not have description currently',
      companyName: 'xyz compnay',
      companyCategory: 'kfc',
      locationName: 'Jorpati'),
  FoodItemsModel(
    photo: Image.asset('assets/momo.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'chowmin',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
  FoodItemsModel(
      photo: Image.asset('assets/khana_set.jpg', fit: BoxFit.cover),
      location: '1.1km',
      name: 'hot lemon',
      time: '15-25',
      price: 'Rs.400',
      description: 'we do not have description currently',
      companyName: 'xyz compnay',
      companyCategory: 'kfc',
      locationName: 'Jorpati'),
  FoodItemsModel(
    photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'fried rice',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
  FoodItemsModel(
    photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'bread',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
  FoodItemsModel(
    photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'fried rice',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
  FoodItemsModel(
    photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'hot lemon',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
  FoodItemsModel(
    photo: Image.asset('assets/pizza.jpg', fit: BoxFit.cover),
    location: '1.1km',
    name: 'pizza',
    time: '15-25',
    price: 'Rs.400',
    description: 'we do not have description currently',
    companyName: 'xyz compnay',
    companyCategory: 'kfc',
    locationName: 'Jorpati',
  ),
];
