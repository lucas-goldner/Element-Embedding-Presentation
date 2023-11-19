import 'package:flutter_show/slides/01_title/view/title_slide.dart';
import 'package:flutter_show/slides/02_introduction/view/introduction_slide.dart';
import 'package:flutter_show/slides/03_element_emebdding/view/element_embedding.dart';
import 'package:flutter_show/slides/04_website_review/view/website_review.dart';
import 'package:flutter_show/slides/20_outro/view/outo_slide.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';

enum PagesOfPresentation {
  titleSlide(
    PresentationSlide(
      slideWidget: TitleSlide(),
      title: 'Title',
    ),
  ),
  agendaSlide(
    PresentationSlide(
      slideWidget: IntroductionSlide(),
      title: 'Introduction',
      animationSteps: 4,
    ),
  ),
  callSlide(
    PresentationSlide(
      slideWidget: ElementEmbeddingSlide(),
      title: 'Element Embedding',
      animationSteps: 13,
    ),
  ),
  benefits(
    PresentationSlide(
      slideWidget: WebsiteReview(),
      title: 'WebsiteReview',
      animationSteps: 2,
    ),
  ),
  outro(
    PresentationSlide(
      slideWidget: OutroSlide(),
      title: 'Fin',
    ),
  );

  const PagesOfPresentation(this.slide);

  final PresentationSlide slide;
}

extension PagesOfPresentationListExtension on List<PagesOfPresentation> {
  List<PresentationSlide> get slides =>
      map((presentationPage) => presentationPage.slide).toList();
}
