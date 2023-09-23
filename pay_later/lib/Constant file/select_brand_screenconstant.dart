import 'package:pay_later/String%20File/image/brand.dart';
import 'package:pay_later/String%20File/text_string.dart';

List<String> brands_logo = [
  brandLogo1,
  brandLogo2,
  brandLogo3,
  brandLogo4,
  brandLogo5,
  brandLogo6,
  brandLogo7,
  brandLogo8,
  brandLogo9,
  brandLogo10,
  brandLogo11,
  brandLogo12
];

List<String>? brandTital = [];

List<String> Size_list = [xs, s, m, l, xl, xxl];
List<String>? Size_Tital = [];

List<ListTile> Listtilelist = [
  ListTile(tital: "\$34.80", description: "Week 1"),
  ListTile(
    tital: "\$35.50",
    description: "Week 2",
  ),
  ListTile(
    tital: "\$33.70",
    description: "Week 3",
  ),
  ListTile(
    tital: "\$34.80",
    description: "Week 4",
  ),
  ListTile(
    tital: "\$20.80",
    description: "Week 5",
  ),
];

class ListTile {
  final String tital;
  final String description;

  ListTile({
    required this.tital,
    required this.description,
  });
}
