import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';

void useProductScroll(ScrollController controller, ProductListController vm) {
  useEffect(() {
    void onScroll() {
      if (!controller.hasClients) return;
      if (controller.position.pixels >=
          controller.position.maxScrollExtent - 200) {
        vm.onLoadMore();
      }
    }

    controller.addListener(onScroll);
    return () => controller.removeListener(onScroll);
  }, [controller]);
}
