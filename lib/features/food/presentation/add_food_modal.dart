import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../data/food_calculator.dart';
import '../domain/food_item.dart';

Future<FoodItem?> showAddFoodModal(BuildContext context) {
  return showModalBottomSheet<FoodItem>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => const AddFoodModal(),
  );
}

class AddFoodModal extends HookWidget {
  const AddFoodModal({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final manualCaloriesController = useTextEditingController();
    final quantityController = useTextEditingController();
    final caloriesPerItemController = useTextEditingController();
    final useHelper = useState(false);

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Food name'),
          ),
          const SizedBox(height: 12),
          SwitchListTile(
            value: useHelper.value,
            title: const Text('Use helper (quantity x calories/item)'),
            onChanged: (value) => useHelper.value = value,
          ),
          if (!useHelper.value)
            TextField(
              controller: manualCaloriesController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Calories'),
            )
          else ...[
            TextField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Quantity'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: caloriesPerItemController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Calories per item'),
            ),
          ],
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                final name = nameController.text.trim();
                if (name.isEmpty) return;

                int calories = 0;
                if (useHelper.value) {
                  final qty = int.tryParse(quantityController.text) ?? 0;
                  final perItem =
                      int.tryParse(caloriesPerItemController.text) ?? 0;
                  calories = caloriesFromQuantity(
                    quantity: qty,
                    caloriesPerItem: perItem,
                  );
                } else {
                  calories = int.tryParse(manualCaloriesController.text) ?? 0;
                }

                Navigator.of(context).pop(
                  FoodItem(name: name, calories: calories),
                );
              },
              child: const Text('Add food'),
            ),
          ),
        ],
      ),
    );
  }
}
