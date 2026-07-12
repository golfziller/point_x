import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';

void useDebounceSearch(String? value, ProductListController ctrl) {
  final debouncedSearch = useDebounced(value, Duration(milliseconds: 800));

  useEffect(() {
    if (debouncedSearch == null) return null;
    Future(() {
      if (debouncedSearch.isEmpty) {
        ctrl.fetchProductAll();
      } else {
        ctrl.searchProduct();
      }
    });

    return null;
  }, [debouncedSearch]);
}
