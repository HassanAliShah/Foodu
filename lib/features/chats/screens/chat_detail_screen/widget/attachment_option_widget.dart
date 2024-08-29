import 'package:flutter/material.dart';

class AttachmentOptionsWidget extends StatelessWidget {
  final void Function(String) onOptionSelected;

  AttachmentOptionsWidget({required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        children: [
          _buildOption(context, Icons.insert_drive_file, "Document"),
          _buildOption(context, Icons.camera_alt, "Camera"),
          _buildOption(context, Icons.photo, "Gallery"),
          _buildOption(context, Icons.audiotrack, "Audio"),
          _buildOption(context, Icons.location_on, "Location"),
          _buildOption(context, Icons.contacts, "Contact"),
        ],
      ),
    );
  }

  Widget _buildOption(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () => onOptionSelected(label),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green.shade200,
            radius: 30,
            child: Icon(icon, size: 30, color: Colors.pink),
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
