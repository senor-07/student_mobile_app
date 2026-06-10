import 'package:flutter_test/flutter_test.dart';
import 'package:student_mobile_app/main.dart';

void main() {
  testWidgets('App loads welcome screen', (WidgetTester tester) async {
    await tester.pumpWidget(const StudentMobileApp());
    await tester.pumpAndSettle();

    expect(find.text('Student Mobile App'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });
}
