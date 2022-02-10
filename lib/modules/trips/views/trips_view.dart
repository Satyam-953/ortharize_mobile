import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/trips_controller.dart';

class ProductsView extends GetView<TripsController> {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.loadDemoProductsFromSomeWhere,
        label: const Text('Add'),
      ),
      body: Column(
        children: [
          const Hero(
            tag: 'heroLogo',
            child: FlutterLogo(),
          ),
          Expanded(
            child: Obx(
              () => RefreshIndicator(
                onRefresh: () async {
                  controller.products.clear();
                  controller.loadDemoProductsFromSomeWhere();
                },
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final item = controller.products[index];
                    return ListTile(
                      onTap: () {
                        Get.toNamed(Routes.productDetails(item.id));
                      },
                      title: Text(item.name),
                      subtitle: Text(item.id),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
