import 'package:flutter/material.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class SearchForm extends StatelessWidget {
  final Function(String) onSearchChange;
  const SearchForm({super.key, required this.onSearchChange});
  final double _heightInput = 56;
  final double _radiusBorder = 16;
  final double _sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            // กำหนดความสูงของความเหมาะสมของ Search bar
            height: _heightInput,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(
                _radiusBorder,
              ), // ความมนของมุมมุม
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSecondary.withValues(
                    alpha: 0.1,
                  ), // เงาบางมากๆ สไตล์ Minimal
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4), // ดันเงาลงด้านล่างเล็กน้อย
                ),
              ],
            ),
            child: Row(
              children: [
                // 1. Icon ค้นหาซ้ายสุด
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    Icons.search_rounded,
                    color: Theme.of(context).colorScheme.onSecondaryFixed,
                    size: _sizeIcon,
                  ),
                ),

                // 2. เส้นแบ่งแนวตั้ง (Vertical Divider)
                Container(
                  width: 1,
                  height:
                      _heightInput / 2, // ปรับความสูงของเส้นคั่นไม่ให้เต็มกรอบ
                  color: Theme.of(
                    context,
                  ).colorScheme.onSecondary, // สีเส้นจางๆ
                ),

                horizontalSpaceSmall,

                // 3. ช่องสำหรับพิมพ์ข้อความ (TextField)
                Expanded(
                  child: TextFormField(
                    // onSubmitted: (_) => onSubmitted?.call(),
                    onChanged: onSearchChange,
                    decoration: InputDecoration(
                      hintText: 'Search Your Product',
                      fillColor: Theme.of(context).colorScheme.onPrimary,

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          _radiusBorder,
                        ), // โค้งตาม parent
                        borderSide: BorderSide.none, // เอาเส้นขอบออก
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          _radiusBorder,
                        ), // โค้งตาม parent
                        borderSide: BorderSide.none, // เอาเส้นขอบออก
                      ),
                      contentPadding: EdgeInsets.only(
                        bottom: 2,
                      ), // จัดตำแหน่งให้อยู่กึ่งกลางแนวตั้งพอดี
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
