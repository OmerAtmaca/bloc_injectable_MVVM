import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/presentation/utils/ext_utils.dart';

import '../utils/custom_colors.dart';

class GridRadioGroup<T> extends StatefulWidget {
  final List<T> items;
  final T? selectedItem;
  final Function(T? value) onSelected;
  final String Function(T value) toReadableName;
  final double? itemHeight;

  const GridRadioGroup({
    Key? key,
    required this.items,
    this.selectedItem,
    required this.onSelected,
    required this.toReadableName,
    this.itemHeight,
  }) : super(key: key);

  @override
  State<GridRadioGroup<T>> createState() => _GridRadioGroupState<T>();
}

class _GridRadioGroupState<T> extends State<GridRadioGroup<T>> {
  late T? currentItem;

  @override
  void initState() {
    currentItem = widget.selectedItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          mainAxisExtent: widget.itemHeight ?? (context.screenWidth() / 8),
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = widget.items[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: item == currentItem
                    ? CustomColors.dazzledBlue
                    : CustomColors.heather,
              ),
            ),
            child: Theme(
              data: ThemeData(unselectedWidgetColor: CustomColors.heather),
              child: RadioListTile<T>(
                visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity),
                dense: true,
                activeColor: CustomColors.tarawera,
                contentPadding: const EdgeInsets.only(right: 6),
                value: item,
                //ListTile radio - title arası paddingi almak için geçici olarak kullanıldı.
                title: Transform.translate(
                  offset: const Offset(-12, 0),
                  child: Text(
                    widget.toReadableName(item),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: item == currentItem
                          ? CustomColors.tarawera
                          : CustomColors.heather,
                    ),
                  ),
                ),
                groupValue: currentItem,
                onChanged: (T? newValue) {
                  setState(() {
                    currentItem = newValue;
                    widget.onSelected(currentItem);
                  });
                },
              ),
            ),
          );
        },
      );
}
