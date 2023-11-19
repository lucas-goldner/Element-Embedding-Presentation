import 'package:flutter_show/slides/01_title/view/title_slide.dart';
import 'package:flutter_show/slides/02_introduction/view/introduction_slide.dart';
import 'package:flutter_show/slides/03_element_emebdding/view/element_embedding.dart';
import 'package:flutter_show/slides/04_website_review/view/website_review.dart';
import 'package:flutter_show/slides/05_embedding_process/view/embedding_process.dart';
import 'package:flutter_show/slides/06_website_read_only/website_read_only.dart';
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
  elementEmbedding(
    PresentationSlide(
      slideWidget: ElementEmbeddingSlide(),
      title: 'Element Embedding',
      animationSteps: 13,
    ),
  ),
  websiteReview(
    PresentationSlide(
      slideWidget: WebsiteReview(),
      title: 'WebsiteReview',
      animationSteps: 2,
    ),
  ),
  embeddingProcess(
    PresentationSlide(
      slideWidget: EmbeddingProcess(),
      title: 'Embedding Process',
      animationSteps: 2,
    ),
  ),
  websiteInteractive(
    PresentationSlide(
      slideWidget: WebsiteReadOnly(),
      title: 'Interactive Website',
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
