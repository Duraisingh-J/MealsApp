import 'package:flutter/material.dart';
import 'package:mealsapp/data/data.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/filters.dart';
import 'package:mealsapp/screens/meals.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

const kInitilaFilters = {
  Filter.nonVeg: false,
  Filter.veg: false,
  Filter.dessert: false,
  Filter.soup: false,
};

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TabsScreen();
}

class _TabsScreen extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];
  Map<Filter, bool> _selectedFilters = kInitilaFilters;

  void _showInfoMessage(String msg) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(duration: Duration(milliseconds: 500), content: Text(msg)),
    );
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMessage('No longer Favorite');
    } else {
      setState(() {
        _favoriteMeals.add(meal);
      });
      _showInfoMessage('Marked as Favorite');
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(builder: (ctx) => FiltersScreen(_selectedFilters)),
      );

      setState(() {
        _selectedFilters = result ?? kInitilaFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredMeals = availableMeals.where((meal) {
      if (_selectedFilters[Filter.nonVeg]! &&
          !meal.labels.contains('Non-Vegetarian')) {
        return false;
      }
      if (_selectedFilters[Filter.veg]! &&
          !meal.labels.contains('Vegetarian')) {
        return false;
      }
      if (_selectedFilters[Filter.dessert]! &&
          !meal.labels.contains('Dessert')) {
        return false;
      }
      if (_selectedFilters[Filter.soup]! && !meal.labels.contains('Soup')) {
        return false;
      }
      return true;
    }).toList();
    Widget activePage = CategoriesScreen(
      filteredMeals: filteredMeals,
      onToggleFavorite: _toggleMealFavoriteStatus,
    );
    String activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = 'Your Favorites';
    }
    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(_setScreen),
      body: activePage,

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.set_meal_outlined),
            label: 'Categories',
            selectedIcon: Icon(Icons.set_meal),
          ),
          NavigationDestination(
            icon: Badge(label: Text('2'),child: Icon(Icons.star_border)),
            label: 'Favorites',
            selectedIcon: Icon(Icons.star),
          ),
        ],
        onDestinationSelected: (index) {
          _selectPage(index);
        },
        indicatorColor: Theme.of(context).colorScheme.primaryContainer,
        selectedIndex: _selectedPageIndex,
      ),
      // bottomNavigationBar: ConvexAppBar(
      //   style: TabStyle.custom,

      //   onTap: (index) {
      //     _selectPage(index);
      //   },
      //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      //   activeColor: Theme.of(context).colorScheme.primary,
      //   initialActiveIndex: _selectedPageIndex,
      //   items: [
      //     TabItem(
      //       icon: Icon(Icons.set_meal_outlined),
      //       activeIcon: Icon(Icons.set_meal),
      //       title: 'Categories',

      //     ),
      //     TabItem(icon: Icon(Icons.star_outline), activeIcon: Icon(Icons.star), title: 'Favorites'),
      //   ],
      // ),
      // bottomNavigationBar: SalomonBottomBar(
      //   currentIndex: _selectedPageIndex,
      //   onTap: (index) {
      //     _selectPage(index);
      //   },
      //   backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      //   items: [
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.set_meal_outlined),
      //       activeIcon: Icon(Icons.set_meal),
      //       title: Text('Categories'),
      //       selectedColor: Theme.of(context).colorScheme.primary,

      //     ),
      //     SalomonBottomBarItem(icon: Icon(Icons.star_border), activeIcon: Icon(Icons.star),title: Text('Favorites'), selectedColor: Theme.of(context).colorScheme.primary
      //     )
      //   ],

      // ),
      // bottomNavigationBar: GNav(
      //   selectedIndex: _selectedPageIndex,
      //   gap: 10,
      //   activeColor: Theme.of(context).colorScheme.primary,
      //   backgroundColor: Theme.of(context).colorScheme.onPrimary,
      //   onTabChange: (index) {
      //     _selectPage(index);
      //   },
      //   tabs: [
      //     GButton(icon: Icons.home, text: 'Home'),
      //     GButton(icon: Icons.set_meal, text: 'Categories'),
      //     GButton(icon: Icons.star, text: 'Favorites'),
      //   ],
      // ),
      // bottomNavigationBar: BottomBarWithSheet(
      //   bottomBarTheme: BottomBarTheme(
      //     itemTextStyle: TextStyle(
      //       color: Theme.of(context).colorScheme.primaryContainer,
      //     ),
      //     selectedItemTextStyle: TextStyle(
      //       color: Theme.of(context).colorScheme.primary,
      //     ),
      //   ),
      //   controller: _controller,
      //   sheetChild: Container(
      //     height: 200,
      //     alignment: Alignment.center,
      //     child: Text('Sheet Container', style: TextStyle(
      //       color: Theme.of(context).colorScheme.primaryContainer,
      //     ),),
      //   ),

      //   mainActionButtonTheme: MainActionButtonTheme(
      //     color: Theme.of(context).colorScheme.primary,
      //     icon: Icon(Icons.add),
      //   ),
      //   items: [
      //     BottomBarWithSheetItem(icon: Icons.set_meal, label: 'Categories'),
      //     BottomBarWithSheetItem(icon: Icons.star, label: 'Favorites'),
      //   ],
      //   onSelectItem: (index) {
      //     _selectPage(index);
      //     if (_controller.isOpened) {
      //       _controller.closeSheet();
      //     }
      //   },
      // ),
    );
  }
}
