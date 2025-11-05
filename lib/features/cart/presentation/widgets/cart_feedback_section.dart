import 'package:flutter/material.dart';

class CartFeedbackSection extends StatelessWidget {
  const CartFeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Leave Feedback',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text('Your Comments', style: TextStyle(fontSize: 13)),
          const SizedBox(height: 6),
          TextField(
            minLines: 2,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Tell us about your experience with ShopFlow...',
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text('Rate your experience', style: TextStyle(fontSize: 13)),
          Slider(
            value: 3,
            min: 1,
            max: 5,
            divisions: 4,
            onChanged: (v) {},
            activeColor: Color(0xFF3D74B8),
            inactiveColor: Colors.grey[300],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEEEEEE),
                foregroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 0,
              ),
              child: const Text('Submit Feedback'),
            ),
          ),
        ],
      ),
    );
  }
}
