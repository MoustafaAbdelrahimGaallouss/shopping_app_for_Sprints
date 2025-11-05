import 'package:flutter/material.dart';
import 'package:shoppingapp/core/constants.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final int cartCount;

  const CustomBottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    this.cartCount = 0,
  }) : super(key: key);

  Widget _navItem({
    required IconData icon,
    IconData? filledIcon,
    required String label,
    required int index,
    int badge = 0,
  }) {
    final bool selected = index == currentIndex;
    // No filled background: selected items show primary-colored icon/text instead.
    final Color contentColor = selected ? kPrimaryColor : Colors.grey[600]!;

    final IconData useIcon = selected ? (filledIcon ?? icon) : icon;
    Widget iconWidget = Icon(useIcon, color: contentColor, size: 22);

    if (badge > 0) {
      iconWidget = Stack(
        clipBehavior: Clip.none,
        children: [
          iconWidget,
          Positioned(
            right: -8,
            top: -6,
            child: Container(
              padding: const EdgeInsets.all(2),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Center(
                child: Text(
                  badge > 99 ? '99+' : badge.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Expanded(
      child: InkWell(
        onTap: () {
          try {
            onTap(index);
          } catch (e, s) {
            debugPrint('CustomBottomNav onTap error: $e');
            debugPrint('$s');
          }
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          // keep rounded touch area but no filled background
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconWidget,
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: contentColor,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1)),
      ),
      child: SafeArea(
        child: SizedBox(
          height: 70, // Increased from 56 to 70
          child: Row(
            children: [
              _navItem(
                icon: Icons.home_outlined,
                filledIcon: Icons.home,
                label: 'Home',
                index: 0,
              ),
              _navItem(
                icon: Icons.shopping_cart_outlined,
                filledIcon: Icons.shopping_cart,
                label: 'Cart',
                index: 1,
                badge: cartCount,
              ),
              _navItem(
                icon: Icons.person_outline,
                filledIcon: Icons.person,
                label: 'Profile',
                index: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
