import 'package:flutter/material.dart';

class Sizes extends StatelessWidget {
  final List<String> sizes;
  final String selectedSize;
  final void Function(String) onSizeSelected;

  const Sizes(
      {Key? key,
      required List<String> this.sizes,
      required String this.selectedSize,
      required void Function(String) this.onSizeSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          sizes.length,
          (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(3),
                    onTap: () => onSizeSelected(sizes[index]),
                    child: Ink(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: selectedSize == sizes[index]
                              ? const Color(0xFF667EEA)
                              : const Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text("select size")),
                    ),
                  ),
                ),
              )),
    );
  }
}
