import 'package:flutter/material.dart';
import 'package:mealsapp/modals/category.dart';
import 'package:mealsapp/modals/meal.dart';

const availableCategories = [
  Category(id: 'c1', title: 'Indian', color: Colors.green),
  Category(id: 'c2', title: 'Chinese', color: Colors.cyan),
  Category(id: 'c3', title: 'Italian', color: Colors.red),
  Category(id: 'c4', title: 'Mexican', color: Colors.purple),
  Category(id: 'c5', title: 'Japanese', color: Colors.pink),
  Category(id: 'c6', title: 'Thai'),
  Category(id: 'c7', title: 'American', color: Colors.white),
  Category(id: 'c8', title: 'Korean', color: Colors.amber),
  Category(id: 'c9', title: 'Spanish', color: Colors.lime),
  Category(id: 'c10', title: 'French', color: Colors.teal),
];

const avaiableMeals = [
  Meal(
  id: 'I1',
  categories: ['c1'],
  title: 'Butter Chicken',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Butter_chicken_%282%29.jpg',
  ingredients: ['Chicken', 'Butter', 'Tomato puree', 'Cream', 'Garam masala'],
  steps: ['Marinate chicken', 'Cook tomato sauce', 'Add cream and spices', 'Simmer with chicken'],
  calories: '450 kcal',
  cookingTime: 45,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['North Indian', 'Non‑Vegetarian', 'Dinner'],
),
Meal(
  id: 'I2',
  categories: ['c1'],
  title: 'Palak Paneer',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Palak_paneer.jpg',
  ingredients: ['Spinach', 'Paneer', 'Onions', 'Garlic', 'Spices'],
  steps: ['Blanch spinach', 'Saute onions+ spices', 'Add spinach', 'Mix in paneer cubes'],
  calories: '360 kcal',
  cookingTime: 30,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Vegetarian', 'North Indian', 'Gluten‑Free'],
),
Meal(
  id: 'I3',
  categories: ['c1'],
  title: 'Masala Dosa',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Masala_Dosa.jpg',
  ingredients: ['Rice', 'Lentils', 'Potatoes', 'Onion', 'Spices'],
  steps: ['Prepare dosa batter', 'Make potato filling', 'Cook dosa', 'Fold with filling'],
  calories: '300 kcal',
  cookingTime: 60,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['Vegetarian', 'South Indian', 'Breakfast'],
),
Meal(
  id: 'I4',
  categories: ['c1'],
  title: 'Chole Bhature',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Chole_Bhature.jpg',
  ingredients: ['Chickpeas', 'Flour', 'Yogurt', 'Spices'],
  steps: ['Cook chickpeas', 'Make fried bhature buns', 'Serve together'],
  calories: '550 kcal',
  cookingTime: 50,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['North Indian', 'Vegetarian', 'Street Food'],
),
Meal(
  id: 'I5',
  categories: ['c1'],
  title: 'Rogan Josh',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Rogan_josh_mutton.jpg',
  ingredients: ['Mutton', 'Yogurt', 'Spices', 'Onions'],
  steps: ['Marinate meat', 'Saute onions + spices', 'Add yogurt and simmer'],
  calories: '500 kcal',
  cookingTime: 90,
  complexity: Complexity.hard,
  spice: Spice.hot,
  labels: ['Non‑Vegetarian', 'Kashmiri', 'Dinner'],
),

Meal(
  id: 'C1',
  categories: ['c2'],
  title: 'Kung Pao Chicken',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/56/Kung_Pao_Chicken.jpg',
  ingredients: ['Chicken', 'Peanuts', 'Chilies', 'Soy sauce', 'Garlic'],
  steps: ['Marinate chicken', 'Stir-fry peanuts and chilies', 'Add sauce + chicken', 'Toss everything'],
  calories: '480 kcal',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Szechuan', 'Non‑Vegetarian', 'Dinner'],
),
Meal(
  id: 'C2',
  categories: ['c2'],
  title: 'Sweet and Sour Pork',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Sweet_and_sour_pork.jpg',
  ingredients: ['Pork', 'Pineapple', 'Bell peppers', 'Sweet‑sour sauce'],
  steps: ['Fry pork', 'Stir-fry vegetables', 'Add sauce and pineapple chunks'],
  calories: '520 kcal',
  cookingTime: 35,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Cantonese', 'Non‑Vegetarian', 'Lunch'],
),
Meal(
  id: 'C3',
  categories: ['c2'],
  title: 'Mapo Tofu',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/2/2b/Mapo_doufu_%28%E9%99%8D%E5%93%81%E7%89%87%E7%85%A7%29.jpg',
  ingredients: ['Tofu', 'Ground pork', 'Chili bean paste', 'Sichuan pepper'],
  steps: ['Cook pork + paste', 'Add tofu cubes', 'Simmer with spices'],
  calories: '350 kcal',
  cookingTime: 25,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Szechuan', 'Vegetarian option', 'Gluten‑Free'],
),
Meal(
  id: 'C4',
  categories: ['c2'],
  title: 'Egg Fried Rice',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/66/Egg_fried_rice.jpg',
  ingredients: ['Rice', 'Eggs', 'Carrots', 'Peas', 'Soy sauce'],
  steps: ['Scramble eggs', 'Stir-fry veggies + rice', 'Season with soy sauce'],
  calories: '400 kcal',
  cookingTime: 20,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Vegetarian', 'Quick', 'Lunch'],
),
Meal(
  id: 'C5',
  categories: ['c2'],
  title: 'Dumplings',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Jiaozi.JPG',
  ingredients: ['Dough wrappers', 'Ground pork', 'Cabbage', 'Ginger'],
  steps: ['Prepare filling', 'Wrap dumplings', 'Steam or fry'],
  calories: '300 kcal',
  cookingTime: 45,
  complexity: Complexity.easy,
  spice: Spice.medium,
  labels: ['Appetizer', 'Street Food', 'Non‑Vegetarian'],
),
Meal(
  id: 'IT1',
  categories: ['c3'],
  title: 'Margherita Pizza',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Supreme_pizza.jpg/800px-Supreme_pizza.jpg',
  ingredients: [
    'Pizza dough',
    'Tomato sauce',
    'Fresh mozzarella',
    'Fresh basil',
    'Olive oil',
    'Salt'
  ],
  steps: [
    'Preheat oven to 475°F (245°C).',
    'Spread tomato sauce on dough.',
    'Add sliced mozzarella.',
    'Bake for 10–15 minutes.',
    'Top with fresh basil and olive oil.'
  ],
  calories: '250 per slice',
  cookingTime: 20,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Vegetarian', 'Classic', 'Baked']
),

Meal(
  id: 'IT2',
  categories: ['c3'],
  title: 'Spaghetti Carbonara',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Spaghetti_alla_Carbonara_%28cropped%29.jpg/800px-Spaghetti_alla_Carbonara_%28cropped%29.jpg',
  ingredients: [
    'Spaghetti',
    'Eggs',
    'Pecorino Romano cheese',
    'Guanciale (or pancetta)',
    'Black pepper',
    'Salt'
  ],
  steps: [
    'Cook spaghetti and reserve some water.',
    'Fry guanciale until crispy.',
    'Whisk eggs and cheese in a bowl.',
    'Mix hot pasta, guanciale, and egg-cheese mixture quickly.',
    'Season with black pepper.'
  ],
  calories: '400 per serving',
  cookingTime: 25,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Non-Vegetarian', 'Creamy', 'Traditional']
),

Meal(
  id: 'IT3',
  categories: ['c3'],
  title: 'Lasagna',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Lasagna_%281%29.jpg/800px-Lasagna_%281%29.jpg',
  ingredients: [
    'Lasagna noodles',
    'Ground beef',
    'Tomato sauce',
    'Ricotta cheese',
    'Mozzarella cheese',
    'Parmesan cheese',
    'Onion',
    'Garlic'
  ],
  steps: [
    'Cook beef with onion and garlic.',
    'Layer noodles with meat sauce and cheeses.',
    'Repeat layers and finish with cheese on top.',
    'Bake for 45 minutes.',
    'Let rest before serving.'
  ],
  calories: '600 per serving',
  cookingTime: 60,
  complexity: Complexity.hard,
  spice: Spice.medium,
  labels: ['Cheesy', 'Layered', 'Oven-Baked']
),

Meal(
  id: 'IT4',
  categories: ['c3'],
  title: 'Risotto alla Milanese',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Risotto_alla_Milanese_-_La_Cucina_Italiana_%28cropped%29.jpg/800px-Risotto_alla_Milanese_-_La_Cucina_Italiana_%28cropped%29.jpg',
  ingredients: [
    'Arborio rice',
    'Saffron threads',
    'Onion',
    'White wine',
    'Chicken broth',
    'Butter',
    'Parmesan cheese'
  ],
  steps: [
    'Sauté onion in butter.',
    'Add rice and toast it briefly.',
    'Deglaze with white wine.',
    'Add saffron and ladle in warm broth gradually.',
    'Stir until creamy and finish with cheese.'
  ],
  calories: '350 per serving',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Vegetarian', 'Creamy', 'Elegant']
),

Meal(
  id: 'IT5',
  categories: ['c3'],
  title: 'Tiramisu',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Tiramisu_-_Raffaele_di_Meglio.jpg/800px-Tiramisu_-_Raffaele_di_Meglio.jpg',
  ingredients: [
    'Mascarpone cheese',
    'Eggs',
    'Sugar',
    'Espresso',
    'Ladyfinger biscuits',
    'Cocoa powder'
  ],
  steps: [
    'Whisk egg yolks and sugar.',
    'Fold in mascarpone.',
    'Dip ladyfingers in espresso.',
    'Layer with mascarpone cream.',
    'Dust with cocoa and chill.'
  ],
  calories: '450 per slice',
  cookingTime: 25,
  complexity: Complexity.easy,
  spice: Spice.none,
  labels: ['Dessert', 'Coffee-Flavored', 'No-Bake']
),
Meal(
  id: 'M1',
  categories: ['c4'],
  title: 'Tacos al Pastor',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/92/Tacos_al_Pastor.jpg',
  ingredients: [
    'Pork shoulder',
    'Pineapple',
    'Onions',
    'Corn tortillas',
    'Chili peppers',
    'Garlic',
    'Vinegar',
    'Cilantro',
    'Spices'
  ],
  steps: [
    'Marinate pork with chili, garlic, and spices overnight.',
    'Grill the pork until tender.',
    'Warm the tortillas.',
    'Assemble tacos with pork, pineapple, onions, and cilantro.'
  ],
  calories: '320 kcal',
  cookingTime: 45,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['Street Food', 'Grilled', 'Tortilla Based'],
),

Meal(
  id: 'M2',
  categories: ['c4'],
  title: 'Enchiladas Rojas',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Enchiladas_rojas.jpg',
  ingredients: [
    'Corn tortillas',
    'Chicken',
    'Red chili sauce',
    'Cheese',
    'Onions',
    'Sour cream'
  ],
  steps: [
    'Cook and shred the chicken.',
    'Dip tortillas in red chili sauce and fill with chicken.',
    'Roll and place in baking dish, cover with sauce and cheese.',
    'Bake until cheese melts.'
  ],
  calories: '410 kcal',
  cookingTime: 40,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['Baked', 'Spicy', 'Traditional'],
),

Meal(
  id: 'M3',
  categories: ['c4'],
  title: 'Chiles en Nogada',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/70/Chiles_en_nogada.jpg',
  ingredients: [
    'Poblano peppers',
    'Ground meat',
    'Fruits (apple, pear, peach)',
    'Walnut sauce',
    'Pomegranate seeds',
    'Cream'
  ],
  steps: [
    'Roast and peel the poblano peppers.',
    'Prepare filling with meat and fruits.',
    'Stuff the peppers and cover with walnut cream sauce.',
    'Garnish with pomegranate seeds.'
  ],
  calories: '520 kcal',
  cookingTime: 60,
  complexity: Complexity.hard,
  spice: Spice.mild,
  labels: ['Festive', 'Stuffed', 'Creamy'],
),

Meal(
  id: 'M4',
  categories: ['c4'],
  title: 'Guacamole with Chips',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/04/Guacamole_01.jpg',
  ingredients: [
    'Avocados',
    'Tomatoes',
    'Onions',
    'Lime juice',
    'Salt',
    'Cilantro',
    'Tortilla chips'
  ],
  steps: [
    'Mash avocados in a bowl.',
    'Mix in chopped tomatoes, onions, and cilantro.',
    'Add lime juice and salt to taste.',
    'Serve with tortilla chips.'
  ],
  calories: '250 kcal',
  cookingTime: 10,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Dip', 'Vegetarian', 'Quick Snack'],
),

Meal(
  id: 'M5',
  categories: ['c4'],
  title: 'Pozole Rojo',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Pozole_Rojo.jpg',
  ingredients: [
    'Hominy corn',
    'Pork shoulder',
    'Red chilies',
    'Garlic',
    'Lettuce',
    'Radishes',
    'Lime'
  ],
  steps: [
    'Cook pork and hominy until tender.',
    'Prepare red chili sauce and mix with soup.',
    'Top with lettuce, radishes, and lime juice before serving.'
  ],
  calories: '480 kcal',
  cookingTime: 90,
  complexity: Complexity.hard,
  spice: Spice.medium,
  labels: ['Soup', 'Hearty', 'Traditional'],
),

Meal(
  id: 'M6',
  categories: ['c4'],
  title: 'Quesadillas',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Quesadilla.jpg',
  ingredients: [
    'Flour tortillas',
    'Cheddar cheese',
    'Mushrooms (optional)',
    'Chicken (optional)'
  ],
  steps: [
    'Place cheese and fillings on tortilla.',
    'Fold and grill on pan until cheese melts.',
    'Slice and serve hot.'
  ],
  calories: '350 kcal',
  cookingTime: 15,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Cheesy', 'Vegetarian Option', 'Quick'],
),
Meal(
  id: 'J1',
  categories: ['c5'],
  title: 'Sushi',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/60/Sushi_platter.jpg',
  ingredients: [
    'Sushi rice',
    'Nori (seaweed)',
    'Raw fish (like tuna, salmon)',
    'Soy sauce',
    'Wasabi',
    'Pickled ginger'
  ],
  steps: [
    'Cook and season sushi rice.',
    'Place nori on bamboo mat and spread rice evenly.',
    'Add fish and vegetables.',
    'Roll tightly and slice.',
    'Serve with soy sauce and wasabi.'
  ],
  calories: '300',
  cookingTime: 45,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Seafood', 'Cold', 'Traditional']
),

Meal(
  id: 'J2',
  categories: ['c5'],
  title: 'Ramen',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Tonkotsu_ramen_by_motofuku_in_Tokyo.jpg',
  ingredients: [
    'Ramen noodles',
    'Pork broth',
    'Soft-boiled egg',
    'Sliced pork',
    'Scallions',
    'Nori',
    'Soy sauce'
  ],
  steps: [
    'Prepare pork broth with garlic, ginger, and soy sauce.',
    'Cook ramen noodles.',
    'Assemble bowl with broth, noodles, egg, pork, and toppings.',
    'Serve hot.'
  ],
  calories: '550',
  cookingTime: 90,
  complexity: Complexity.hard,
  spice: Spice.medium,
  labels: ['Noodle', 'Soup', 'Comfort Food']
),

Meal(
  id: 'J3',
  categories: ['c5'],
  title: 'Tempura',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Tempura-shrimp01.jpg',
  ingredients: [
    'Shrimp or vegetables',
    'Tempura batter (flour, egg, cold water)',
    'Oil for frying',
    'Tentsuyu sauce'
  ],
  steps: [
    'Prepare batter with cold water.',
    'Dip ingredients in batter.',
    'Deep fry until golden.',
    'Serve with dipping sauce.'
  ],
  calories: '400',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Fried', 'Street Food', 'Snack']
),

Meal(
  id: 'J4',
  categories: ['c5'],
  title: 'Okonomiyaki',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Okonomiyaki_001.jpg',
  ingredients: [
    'Cabbage',
    'Flour',
    'Eggs',
    'Pork belly',
    'Okonomiyaki sauce',
    'Mayonnaise',
    'Bonito flakes'
  ],
  steps: [
    'Mix flour, eggs, and cabbage to form a batter.',
    'Cook on griddle with pork on top.',
    'Flip and cook both sides.',
    'Add sauce, mayo, and bonito flakes.'
  ],
  calories: '500',
  cookingTime: 35,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Savory Pancake', 'Grilled', 'Comfort Food']
),

Meal(
  id: 'J5',
  categories: ['c5'],
  title: 'Miso Soup',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Miso_Soup_001.jpg',
  ingredients: [
    'Miso paste',
    'Dashi (soup stock)',
    'Tofu',
    'Wakame (seaweed)',
    'Green onions'
  ],
  steps: [
    'Prepare dashi broth.',
    'Add miso paste and dissolve.',
    'Add tofu and wakame.',
    'Heat gently and serve with green onions.'
  ],
  calories: '100',
  cookingTime: 15,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Soup', 'Healthy', 'Starter']
),
Meal(
  id: 'T1',
  categories: ['c6'],
  title: 'Pad Thai',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Pad_Thai_kung_Chang_Khien_street_stall.jpg',
  ingredients: [
    'Rice noodles',
    'Shrimp or chicken',
    'Tofu',
    'Eggs',
    'Bean sprouts',
    'Peanuts',
    'Tamarind paste',
    'Fish sauce',
    'Palm sugar',
    'Garlic',
    'Chili flakes',
    'Lime'
  ],
  steps: [
    'Soak rice noodles in warm water until soft.',
    'Stir-fry garlic and protein in oil.',
    'Add tofu, noodles, and sauce (tamarind, fish sauce, sugar).',
    'Push aside, scramble eggs, then mix everything.',
    'Add bean sprouts and serve with peanuts and lime.'
  ],
  calories: '400 kcal',
  cookingTime: 25,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['Stir-fried', 'Street Food'],
),

Meal(
  id: 'T2',
  categories: ['c6'],
  title: 'Tom Yum Goong',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Tom_Yum_Goong.jpg',
  ingredients: [
    'Shrimp',
    'Lemongrass',
    'Galangal',
    'Kaffir lime leaves',
    'Mushrooms',
    'Chili paste',
    'Fish sauce',
    'Lime juice',
    'Cilantro'
  ],
  steps: [
    'Boil water with lemongrass, galangal, and lime leaves.',
    'Add mushrooms and shrimp.',
    'Season with fish sauce, chili paste, and lime juice.',
    'Garnish with cilantro and serve hot.'
  ],
  calories: '300 kcal',
  cookingTime: 20,
  complexity: Complexity.easy,
  spice: Spice.hot,
  labels: ['Soup', 'Spicy'],
),

Meal(
  id: 'T3',
  categories: ['c6'],
  title: 'Green Curry (Gaeng Keow Wan)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Thai_green_curry_chicken.jpg',
  ingredients: [
    'Green curry paste',
    'Coconut milk',
    'Chicken',
    'Thai eggplants',
    'Bamboo shoots',
    'Basil leaves',
    'Fish sauce',
    'Palm sugar'
  ],
  steps: [
    'Heat curry paste in oil until fragrant.',
    'Add chicken and stir-fry.',
    'Pour in coconut milk and bring to simmer.',
    'Add vegetables and simmer until cooked.',
    'Stir in fish sauce and sugar, garnish with basil.'
  ],
  calories: '450 kcal',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Curry', 'Coconut Milk'],
),

Meal(
  id: 'T4',
  categories: ['c6'],
  title: 'Som Tum (Papaya Salad)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/18/Som_tum_thai.JPG',
  ingredients: [
    'Green papaya',
    'Tomatoes',
    'Long beans',
    'Garlic',
    'Chilies',
    'Lime juice',
    'Fish sauce',
    'Palm sugar',
    'Peanuts'
  ],
  steps: [
    'Shred papaya and chop vegetables.',
    'Pound garlic and chilies in a mortar.',
    'Add sugar, fish sauce, lime juice.',
    'Mix with papaya and top with peanuts.'
  ],
  calories: '180 kcal',
  cookingTime: 15,
  complexity: Complexity.easy,
  spice: Spice.hot,
  labels: ['Salad', 'Spicy'],
),

Meal(
  id: 'T5',
  categories: ['c6'],
  title: 'Massaman Curry',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Massaman_beef_curry.jpg',
  ingredients: [
    'Massaman curry paste',
    'Coconut milk',
    'Beef or chicken',
    'Potatoes',
    'Onions',
    'Peanuts',
    'Cinnamon',
    'Fish sauce',
    'Tamarind paste'
  ],
  steps: [
    'Fry curry paste in oil.',
    'Add meat and brown it.',
    'Add coconut milk, potatoes, and onions.',
    'Simmer until everything is tender.',
    'Season and garnish with peanuts.'
  ],
  calories: '500 kcal',
  cookingTime: 45,
  complexity: Complexity.hard,
  spice: Spice.medium,
  labels: ['Curry', 'Rich Flavor'],
),

Meal(
  id: 'T6',
  categories: ['c6'],
  title: 'Thai Basil Chicken (Pad Kra Pao)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Krapao_kai.jpg',
  ingredients: [
    'Chicken',
    'Garlic',
    'Chilies',
    'Soy sauce',
    'Fish sauce',
    'Oyster sauce',
    'Sugar',
    'Holy basil'
  ],
  steps: [
    'Stir-fry garlic and chilies in oil.',
    'Add chicken and cook thoroughly.',
    'Add sauces and sugar.',
    'Stir in holy basil until wilted.',
    'Serve with rice and fried egg.'
  ],
  calories: '380 kcal',
  cookingTime: 20,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Stir-fried', 'Quick Meal'],
),

Meal(
  id: 'T7',
  categories: ['c6'],
  title: 'Mango Sticky Rice',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Khao_Niao_Mamuang_Mango_Sticky_Rice.jpg',
  ingredients: [
    'Glutinous rice',
    'Coconut milk',
    'Sugar',
    'Salt',
    'Ripe mango',
    'Sesame seeds'
  ],
  steps: [
    'Cook sticky rice until soft.',
    'Mix coconut milk with sugar and salt, heat gently.',
    'Combine half with rice, let it soak.',
    'Slice mango and serve with rice and extra sauce.',
    'Sprinkle sesame seeds.'
  ],
  calories: '350 kcal',
  cookingTime: 40,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Dessert', 'Fruity'],
),
Meal(
  id: 'A1',
  categories: ['c7'],
  title: 'Cheeseburger',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Cheeseburger.png',
  ingredients: ['Ground beef', 'Cheddar cheese', 'Burger buns', 'Lettuce', 'Tomato', 'Onion', 'Pickles', 'Ketchup', 'Mustard'],
  steps: [
    'Shape ground beef into patties.',
    'Grill the patties until fully cooked.',
    'Melt cheese on top of patties.',
    'Toast burger buns.',
    'Assemble with lettuce, tomato, onion, pickles, and sauces.'
  ],
  calories: '600 kcal',
  cookingTime: 20,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Fast Food', 'Grilled']
),

Meal(
  id: 'A2',
  categories: ['c7'],
  title: 'Buffalo Wings',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Buffalo_wings-01.jpg',
  ingredients: ['Chicken wings', 'Butter', 'Hot sauce', 'Garlic powder', 'Salt', 'Pepper'],
  steps: [
    'Fry or bake the chicken wings until crispy.',
    'Melt butter and mix with hot sauce and spices.',
    'Toss wings in the buffalo sauce.',
    'Serve with celery and blue cheese dressing.'
  ],
  calories: '700 kcal',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Spicy', 'Appetizer']
),

Meal(
  id: 'A3',
  categories: ['c7'],
  title: 'Macaroni and Cheese',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/44/Original_Mac_n_Cheese.jpg',
  ingredients: ['Elbow macaroni', 'Butter', 'Milk', 'Flour', 'Cheddar cheese', 'Salt', 'Pepper'],
  steps: [
    'Cook macaroni until al dente.',
    'Make a roux with butter and flour.',
    'Add milk and cook until thickened.',
    'Stir in cheese until melted.',
    'Mix with macaroni and bake for 20 minutes (optional).'
  ],
  calories: '550 kcal',
  cookingTime: 25,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Comfort Food', 'Vegetarian']
),

Meal(
  id: 'A4',
  categories: ['c7'],
  title: 'BBQ Ribs',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Bbq_ribs_at_the_Meat_Market.jpg',
  ingredients: ['Pork ribs', 'BBQ sauce', 'Brown sugar', 'Garlic powder', 'Paprika', 'Salt', 'Pepper'],
  steps: [
    'Rub ribs with spices.',
    'Slow-cook in oven or smoker until tender.',
    'Baste with BBQ sauce and grill briefly for caramelization.',
    'Rest before serving.'
  ],
  calories: '800 kcal',
  cookingTime: 120,
  complexity: Complexity.hard,
  spice: Spice.medium,
  labels: ['Smoked', 'Barbecue']
),

Meal(
  id: 'A5',
  categories: ['c7'],
  title: 'Clam Chowder',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/74/Clam_Chowder_-_Portland%2C_OR.jpg',
  ingredients: ['Clams', 'Potatoes', 'Onion', 'Celery', 'Cream', 'Butter', 'Flour', 'Salt', 'Pepper'],
  steps: [
    'Sauté onion and celery in butter.',
    'Add flour to make a roux.',
    'Stir in cream and simmer.',
    'Add clams and diced potatoes.',
    'Simmer until potatoes are soft.'
  ],
  calories: '450 kcal',
  cookingTime: 40,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Soup', 'Seafood']
),
Meal(
  id: 'K1',
  categories: ['c8'],
  title: 'Bibimbap',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Bibimbap_in_Jeonju.jpg',
  ingredients: [
    'Cooked rice',
    'Carrots',
    'Zucchini',
    'Spinach',
    'Bean sprouts',
    'Egg',
    'Gochujang (chili paste)',
    'Beef slices',
    'Soy sauce',
    'Garlic'
  ],
  steps: [
    'Sauté vegetables individually.',
    'Cook beef with soy sauce and garlic.',
    'Fry an egg sunny-side up.',
    'Place rice in a bowl and arrange toppings on top.',
    'Add gochujang and mix before eating.'
  ],
  calories: '550 kcal',
  cookingTime: 35,
  complexity: Complexity.medium,
  spice: Spice.medium,
  labels: ['Rice Bowl', 'Healthy', 'Korean Classic']
),

Meal(
  id: 'K2',
  categories: ['c8'],
  title: 'Kimchi Jjigae (Kimchi Stew)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Kimchi_jjigae.jpg',
  ingredients: [
    'Kimchi',
    'Pork belly',
    'Tofu',
    'Onion',
    'Garlic',
    'Gochugaru (chili flakes)',
    'Soy sauce',
    'Water'
  ],
  steps: [
    'Sauté pork and kimchi.',
    'Add water and bring to a boil.',
    'Add tofu, onion, and garlic.',
    'Simmer until flavors blend well.',
    'Serve hot with rice.'
  ],
  calories: '480 kcal',
  cookingTime: 30,
  complexity: Complexity.easy,
  spice: Spice.hot,
  labels: ['Spicy', 'Comfort Food', 'Soup']
),

Meal(
  id: 'K3',
  categories: ['c8'],
  title: 'Tteokbokki',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Tteokbokki_by_cowyeow.jpg',
  ingredients: [
    'Rice cakes (tteok)',
    'Fish cakes',
    'Gochujang',
    'Gochugaru',
    'Sugar',
    'Soy sauce',
    'Garlic',
    'Green onions',
    'Water'
  ],
  steps: [
    'Boil water and mix gochujang, sugar, soy sauce, and garlic.',
    'Add rice cakes and cook until soft.',
    'Add fish cakes and green onions.',
    'Simmer until sauce thickens.'
  ],
  calories: '600 kcal',
  cookingTime: 25,
  complexity: Complexity.medium,
  spice: Spice.hot,
  labels: ['Street Food', 'Spicy', 'Snack']
),

Meal(
  id: 'K4',
  categories: ['c8'],
  title: 'Samgyeopsal (Grilled Pork Belly)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/db/Korean.Samgyeopsal-01.jpg',
  ingredients: [
    'Pork belly slices',
    'Garlic',
    'Salt',
    'Sesame oil',
    'Lettuce leaves',
    'Ssamjang (dipping sauce)',
    'Rice'
  ],
  steps: [
    'Grill pork belly slices until golden.',
    'Serve with garlic, lettuce, and sauces.',
    'Wrap pork in lettuce with rice and ssamjang.',
    'Enjoy like a wrap.'
  ],
  calories: '700 kcal',
  cookingTime: 20,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Grilled', 'BBQ', 'Wrap']
),

Meal(
  id: 'K5',
  categories: ['c8'],
  title: 'Japchae (Glass Noodle Stir Fry)',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Japchae.jpg',
  ingredients: [
    'Glass noodles',
    'Beef strips',
    'Spinach',
    'Carrots',
    'Mushrooms',
    'Soy sauce',
    'Sugar',
    'Garlic',
    'Sesame oil'
  ],
  steps: [
    'Cook glass noodles and set aside.',
    'Stir-fry beef and vegetables separately.',
    'Mix everything together with soy sauce and sesame oil.',
    'Serve warm or chilled.'
  ],
  calories: '400 kcal',
  cookingTime: 30,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Noodles', 'Stir-fried', 'Festive Dish']
),
Meal(
  id: 'S1',
  categories: ['c9'],
  title: 'Paella',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/47/Paella_de_marisco_01.jpg',
  ingredients: [
    '2 cups Bomba rice',
    '1/2 lb shrimp',
    '1/2 lb mussels',
    '1/2 lb chicken',
    '1/4 cup green peas',
    '1 red bell pepper',
    'Saffron threads',
    '4 cups chicken broth',
    'Olive oil',
    'Salt'
  ],
  steps: [
    'Heat olive oil in a large pan.',
    'Brown the chicken pieces.',
    'Add rice and saffron.',
    'Add broth and bring to boil.',
    'Add seafood and vegetables.',
    'Simmer until rice is cooked.',
    'Let rest before serving.'
  ],
  calories: '550 kcal',
  cookingTime: 45,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Seafood', 'Traditional', 'Rice']
),
Meal(
  id: 'S2',
  categories: ['c9'],
  title: 'Gazpacho',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Gazpacho_Andaluz.jpg',
  ingredients: [
    '6 ripe tomatoes',
    '1 cucumber',
    '1 bell pepper',
    '2 garlic cloves',
    '1/4 cup olive oil',
    '2 tbsp vinegar',
    'Salt and pepper'
  ],
  steps: [
    'Chop all vegetables.',
    'Blend until smooth.',
    'Add olive oil and vinegar.',
    'Season with salt and pepper.',
    'Chill for 2 hours before serving.'
  ],
  calories: '120 kcal',
  cookingTime: 15,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Cold Soup', 'Healthy', 'Vegan']
),
Meal(
  id: 'S3',
  categories: ['c9'],
  title: 'Tortilla Española',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/53/Tortilla_de_patatas_con_cebolla_y_calabac%C3%ADn.jpg',
  ingredients: [
    '4 large potatoes',
    '1 onion',
    '6 eggs',
    'Olive oil',
    'Salt'
  ],
  steps: [
    'Slice potatoes and onions.',
    'Fry in olive oil until soft.',
    'Beat eggs in a bowl.',
    'Mix with potatoes and onions.',
    'Cook in a pan until set.',
    'Flip and cook the other side.'
  ],
  calories: '300 kcal',
  cookingTime: 25,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Omelette', 'Classic', 'Vegetarian']
),
Meal(
  id: 'S4',
  categories: ['c9'],
  title: 'Patatas Bravas',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Patatas_bravas.jpg',
  ingredients: [
    '4 potatoes',
    '1 cup tomato sauce',
    '1 tsp smoked paprika',
    '1 tsp chili flakes',
    'Olive oil',
    'Salt'
  ],
  steps: [
    'Cube and fry potatoes.',
    'Prepare spicy tomato sauce.',
    'Pour sauce over potatoes.',
    'Garnish and serve hot.'
  ],
  calories: '350 kcal',
  cookingTime: 30,
  complexity: Complexity.easy,
  spice: Spice.medium,
  labels: ['Tapas', 'Spicy', 'Snack']
),
Meal(
  id: 'S5',
  categories: ['c9'],
  title: 'Churros',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Churros_Madrid.jpg',
  ingredients: [
    '1 cup flour',
    '1 cup water',
    '1 tbsp sugar',
    '1/2 tsp salt',
    'Vegetable oil',
    'Cinnamon sugar',
    'Chocolate for dipping'
  ],
  steps: [
    'Boil water with salt and sugar.',
    'Add flour and mix.',
    'Pipe into hot oil and fry.',
    'Coat in cinnamon sugar.',
    'Serve with chocolate sauce.'
  ],
  calories: '400 kcal',
  cookingTime: 20,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Dessert', 'Street Food', 'Sweet']
),
Meal(
  id: 'F1',
  categories: ['c10'],
  title: 'Coq au Vin',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/51/Coq_au_vin_-_Chicken_cooked_in_wine.jpg',
  ingredients: [
    '1 whole chicken, cut into pieces',
    '2 cups red wine',
    '1 cup chicken broth',
    '1 onion',
    '2 carrots',
    'Garlic cloves',
    'Mushrooms',
    'Thyme',
    'Bay leaf',
    'Olive oil',
    'Salt & pepper'
  ],
  steps: [
    'Marinate chicken in wine overnight.',
    'Brown the chicken in olive oil.',
    'Add vegetables and cook until tender.',
    'Pour in wine and broth, add herbs.',
    'Simmer for 1.5 to 2 hours until tender.',
    'Serve with bread or potatoes.'
  ],
  calories: '600 kcal',
  cookingTime: 120,
  complexity: Complexity.hard,
  spice: Spice.mild,
  labels: ['Traditional', 'Wine Braised', 'Dinner']
),

Meal(
  id: 'F2',
  categories: ['c10'],
  title: 'Ratatouille',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Confit_Byaldi.jpg',
  ingredients: [
    '1 eggplant',
    '1 zucchini',
    '1 bell pepper',
    '2 tomatoes',
    '1 onion',
    'Olive oil',
    'Garlic',
    'Herbs de Provence',
    'Salt & pepper'
  ],
  steps: [
    'Slice all vegetables thinly.',
    'Sauté onions and garlic in olive oil.',
    'Layer veggies in a baking dish.',
    'Sprinkle herbs, cover, and bake for 45 minutes.',
    'Serve warm with bread or rice.'
  ],
  calories: '180 kcal',
  cookingTime: 60,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Vegan', 'Healthy', 'Vegetable Dish']
),

Meal(
  id: 'F3',
  categories: ['c10'],
  title: 'Croque Monsieur',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/fb/Croque-monsieur.jpg',
  ingredients: [
    '2 slices of bread',
    '2 slices of ham',
    'Gruyère cheese',
    'Béchamel sauce',
    'Butter'
  ],
  steps: [
    'Butter the bread slices.',
    'Layer ham and cheese inside.',
    'Spread béchamel on top.',
    'Grill or toast until golden and bubbly.',
    'Serve hot.'
  ],
  calories: '450 kcal',
  cookingTime: 15,
  complexity: Complexity.easy,
  spice: Spice.mild,
  labels: ['Sandwich', 'Classic', 'Quick Meal']
),

Meal(
  id: 'F4',
  categories: ['c10'],
  title: 'Bouillabaisse',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/66/Bouillabaisse.jpg',
  ingredients: [
    'Variety of white fish (cod, haddock)',
    'Mussels',
    'Shrimp',
    'Tomatoes',
    'Garlic',
    'Fennel',
    'Orange zest',
    'Saffron',
    'Olive oil',
    'Fish stock'
  ],
  steps: [
    'Sauté garlic, onion, and fennel.',
    'Add tomato, zest, and saffron.',
    'Pour in fish stock and simmer.',
    'Add seafood and cook until done.',
    'Serve with crusty bread and rouille sauce.'
  ],
  calories: '500 kcal',
  cookingTime: 60,
  complexity: Complexity.hard,
  spice: Spice.mild,
  labels: ['Seafood', 'Soup', 'Traditional']
),

Meal(
  id: 'F5',
  categories: ['c10'],
  title: 'Crème Brûlée',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/7b/Creme_Brulee.jpg',
  ingredients: [
    '2 cups heavy cream',
    '5 egg yolks',
    '1/2 cup sugar',
    '1 tsp vanilla extract',
    'Brown sugar for topping'
  ],
  steps: [
    'Heat cream with vanilla until warm.',
    'Whisk yolks and sugar together.',
    'Combine cream and egg mixture.',
    'Pour into ramekins and bake in water bath.',
    'Chill and top with brown sugar.',
    'Caramelize the top before serving.'
  ],
  calories: '300 kcal',
  cookingTime: 90,
  complexity: Complexity.medium,
  spice: Spice.mild,
  labels: ['Dessert', 'Caramelized', 'Classic']
),


];
