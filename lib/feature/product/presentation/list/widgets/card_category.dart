import 'package:flutter/material.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    this.selected = false,
    required this.productCategory,
    required this.onTap,
  });
  final bool selected;
  final ProductCategory productCategory;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const double itemWidth = 80;

    IconData buildIconBySlug(String slug) {
      switch (slug) {
        case 'beauty':
          return Icons.face_retouching_natural_rounded; // หน้า/เครื่องสำอาง
        case 'fragrances':
          return Icons.opacity_rounded; // น้ำหอม/หยดน้ำ
        case 'furniture':
          return Icons.chair_rounded; // เฟอร์นิเจอร์/เก้าอี้
        case 'groceries':
          return Icons.local_grocery_store_rounded; // ของชำ/ซูเปอร์
        case 'home-decoration':
          return Icons.home_work_rounded; // ตกแต่งบ้าน
        case 'kitchen-accessories':
          return Icons.blender_rounded; // เครื่องครัว
        case 'laptops':
          return Icons.laptop_mac_rounded; // โน้ตบุ๊ก
        case 'mens-shirts':
          return Icons.checkroom_rounded; // เสื้อเชิ้ตผู้ชาย
        case 'mens-shoes':
          return Icons.ice_skating_rounded; // รองเท้าผู้ชาย (ทรงกึ่งผ้าใบ/บู้ท)
        case 'mens-watches':
          return Icons.watch_rounded; // นาฬิกาผู้ชาย
        case 'mobile-accessories':
          return Icons.phonelink_setup_rounded; // อุปกรณ์เสริมมือถือ
        case 'motorcycle':
          return Icons.two_wheeler_rounded; // มอเตอร์ไซค์
        case 'skin-care':
          return Icons.clean_hands_rounded; // บำรุงผิว
        case 'smartphones':
          return Icons.smartphone_rounded; // สมาร์ตโฟน
        case 'sports-accessories':
          return Icons.sports_tennis_rounded; // อุปกรณ์กีฬา
        case 'sunglasses':
          return Icons.wb_sunny_rounded; // แว่นกันแดด
        case 'tablets':
          return Icons.tablet_android_rounded; // แท็บเล็ต
        case 'tops':
          return Icons.dry_cleaning_rounded; // เสื้อสายเดี่ยว/เสื้อครอป/ท็อปส์
        case 'vehicle':
          return Icons.directions_car_filled_rounded; // รถยนต์/ยานพาหนะ
        case 'womens-bags':
          return Icons.business_center_rounded; // กระเป๋าผู้หญิง
        case 'womens-dresses':
          return Icons.accessibility_new_rounded; // ชุดเดรสผู้หญิง
        case 'womens-jewellery':
          return Icons.diamond_rounded; // เครื่องประดับ/เพชร
        case 'womens-shoes':
          return Icons.roller_skating_rounded; // รองเท้าส้นสูง/รองเท้าผู้หญิง
        case 'womens-watches':
          return Icons
              .watch_later_rounded; // นาฬิกาผู้หญิง (ทรงจะเรียบหรูเล็กกว่า)

        default:
          return Icons
              .shopping_bag_rounded; // ไอคอนกลางกรณีไม่ตรงกับ case ไหนเลย
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: itemWidth,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: selected
                  ? Theme.of(context).colorScheme.primaryFixedDim
                  : Theme.of(context).colorScheme.onPrimary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSecondary.withValues(
                    alpha: 0.1,
                  ), // เงาบางมากๆ สไตล์ Minimal
                  spreadRadius: .5,
                  blurRadius: 5,
                  offset: const Offset(0, 4), // ดันเงาลงด้านล่างเล็กน้อย
                ),
              ],
            ),
            child: Center(
              child: Icon(
                buildIconBySlug(productCategory.slug),
                size: 36,
                color: selected
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSecondaryFixed,
              ),
            ),
          ),
          verticalSpaceTiny,
          SizedBox(
            width: itemWidth,
            child: Text(
              productCategory.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
