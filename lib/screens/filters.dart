import 'package:flutter/material.dart';

enum Filter { nonVeg, veg, dessert, soup }

class FiltersScreen extends StatefulWidget {
  const FiltersScreen(this.currentFilters, {super.key});
  final Map<Filter, bool> currentFilters;

  @override
  State<FiltersScreen> createState() => _FiltersScreen();
}

class _FiltersScreen extends State<FiltersScreen> {
  var _nonVeg = false;
  var _veg = false;
  var _dessert = false;
  var _soup = false;

  @override
  void initState() {
    super.initState();
    _nonVeg = widget.currentFilters[Filter.nonVeg]!;
    _veg = widget.currentFilters[Filter.veg]!;
    _dessert = widget.currentFilters[Filter.dessert]!;
    _soup = widget.currentFilters[Filter.soup]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters')),
      // drawer: MainDrawer((identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(
      //       context,
      //     ).pushReplacement(MaterialPageRoute(builder: (ctx) => TabsScreen()));
      //   }
      // }),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.nonVeg: _nonVeg,
            Filter.veg: _veg,
            Filter.dessert: _dessert,
            Filter.soup: _soup,
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SwitchListTile(
                value: _nonVeg,
                onChanged: (isChecked) {
                  setState(() {
                    _nonVeg = isChecked;
                  });
                },
                title: Text(
                  'Non-Veg',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  'Only include eggs, chicken, mutton, beef meals',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(left: 12, right: 12),
              ),
              SwitchListTile(
                value: _veg,
                onChanged: (isChecked) {
                  setState(() {
                    _veg = isChecked;
                  });
                },
                title: Text(
                  'Veg',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  'Only include greens, grams',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(left: 12, right: 12),
              ),
              SwitchListTile(
                value: _dessert,
                onChanged: (isChecked) {
                  setState(() {
                    _dessert = isChecked;
                  });
                },
                title: Text(
                  'Desserts',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  'Only include cakes, starters',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(left: 12, right: 12),
              ),
              SwitchListTile(
                value: _soup,
                onChanged: (isChecked) {
                  setState(() {
                    _soup = isChecked;
                  });
                },
                title: Text(
                  'Soup',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  'Only include greens, veggies items ',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(left: 12, right: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
