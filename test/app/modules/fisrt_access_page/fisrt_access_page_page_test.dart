import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_pandapay/app/modules/fisrt_access_page/fisrt_access_page.dart';

main() {
  testWidgets('FisrtAccessPagePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(FisrtAccessPage(title: 'FisrtAccessPage')));
    final titleFinder = find.text('FisrtAccessPage');
    expect(titleFinder, findsOneWidget);
  });
}
