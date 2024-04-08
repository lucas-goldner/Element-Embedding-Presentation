import 'package:flutter_show/slides/01_title/view/title_slide.dart';
import 'package:flutter_show/slides/02_introduction/view/introduction_slide.dart';
import 'package:flutter_show/slides/03_element_embedding/view/element_embedding_slide.dart';
import 'package:flutter_show/slides/04_website_review/view/website_review_slide.dart';
import 'package:flutter_show/slides/05_embedding_process/view/embedding_process_slide.dart';
import 'package:flutter_show/slides/06_website_read_only/view/website_read_only_slide.dart';
import 'package:flutter_show/slides/07_js_interop/view/js_interop_slide.dart';
import 'package:flutter_show/slides/08_website_interactive/view/website_interactive.dart';
import 'package:flutter_show/slides/20_outro/view/outo_slide.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';

enum PagesOfPresentation {
  titleSlide(
    PresentationSlide(
      slideWidget: TitleSlide(),
      title: 'Title',
    ),
  ),
  introductionSlide(
    PresentationSlide(
      slideWidget: IntroductionSlide(),
      title: 'Introduction',
      animationSteps: 6,
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
      slideWidget: WebsiteReviewSlide(),
      title: 'WebsiteReview',
    ),
  ),
  embeddingProcess(
    PresentationSlide(
      slideWidget: EmbeddingProcessSlide(),
      title: 'Embedding Process',
      animationSteps: 2,
    ),
  ),
  websiteReadonly(
    PresentationSlide(
      slideWidget: WebsiteReadOnlySlide(),
      title: 'Readonly Website',
    ),
  ),
  jsInterop(
    PresentationSlide(
      slideWidget: JSInteropSlide(),
      title: 'JS Interop',
    ),
  ),
  websiteInteractive(
    PresentationSlide(
      slideWidget: WebsiteInteractive(),
      title: 'Interactive Website',
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
