import 'package:flutter/material.dart';

import '../components/footer.dart';
import '../components/section_about.dart';
import '../components/section_carousel.dart';
import '../components/section_contact.dart';
import '../components/section_freelance.dart';
import '../components/section_projects.dart';

pageHomeMobile() {
  return SingleChildScrollView(
    child: Column(
      children: [
        buildSectionAbout(),
        const SizedBox(
          height: 14.0,
        ),
        buildSectionCarousel(),
        const SizedBox(
          height: 14.0,
        ),
        buildSectionProjects(),
        const SizedBox(
          height: 14.0,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: buildContact(),
            ),
            Expanded(
              flex: 1,
              child: buildFreelance(),
            ),
          ],
        ),
        const SizedBox(
          height: 14.0,
        ),
        buildFooter(),
      ],
    ),
  );
}
