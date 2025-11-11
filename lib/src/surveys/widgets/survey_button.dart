import 'package:flutter/material.dart';
import '../models/survey_appearance.dart';

class SurveyButton extends StatelessWidget {
  const SurveyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.appearance = SurveyAppearance.defaultAppearance,
    this.enabled = true,
  });

  final VoidCallback? onPressed;
  final String text;
  final SurveyAppearance appearance;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: appearance.submitButtonColor,
        foregroundColor: appearance.submitButtonTextColor,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBackgroundColor: appearance.submitButtonColor.withAlpha(127),
        disabledForegroundColor:
            appearance.submitButtonTextColor.withAlpha(127),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      ),
    );
  }
}
