import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:micro_commons_design_system/micro_commons_design_system.dart';
import 'package:micro_commons_design_system/widgets/card/custom_card_widget.dart';

void main() {
  testGoldens("CustomCardWidget - Multiples Scenarios", (tester) async {
    final builder = GoldenBuilder.grid(columns: 1, widthToHeightRatio: 1)
      ..addScenario(
        'Default',
        CustomCardWidget(
          icon: Icons.abc,
          title: 'CustomButton',
          content: 'Content for test purpose',
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(500, 300),
    );
    await screenMatchesGolden(tester, 'customCard_multiples_states');
  });
}
