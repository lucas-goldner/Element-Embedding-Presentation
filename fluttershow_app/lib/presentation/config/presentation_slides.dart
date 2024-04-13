import 'package:flutter_show/slides/01_title/view/title_slide.dart';
import 'package:flutter_show/slides/02_introduction/view/introduction_slide.dart';
import 'package:flutter_show/slides/03_element_embedding/view/element_embedding_slide.dart';
import 'package:flutter_show/slides/04_website_review/view/website_review_slide.dart';
import 'package:flutter_show/slides/05_embedding_process/view/embedding_process_slide_1.dart';
import 'package:flutter_show/slides/05_embedding_process/view/embedding_process_slide_2.dart';
import 'package:flutter_show/slides/05_embedding_process/view/embedding_process_slide_3.dart';
import 'package:flutter_show/slides/06_website_read_only/view/website_read_only_slide.dart';
import 'package:flutter_show/slides/07_js_interop/view/js_interop_slide_1.dart';
import 'package:flutter_show/slides/07_js_interop/view/js_interop_slide_2.dart';
import 'package:flutter_show/slides/08_website_interactive/view/website_interactive.dart';
import 'package:flutter_show/slides/09_react_embedding/view/react_embedding.dart';
import 'package:flutter_show/slides/10_outro/view/outo_slide.dart';
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
      slideWidget: EmbeddingProcessSlide1(),
      title: 'Embedding Process 1',
    ),
  ),
  embeddingProcess2(
    PresentationSlide(
      slideWidget: EmbeddingProcessSlide2(),
      title: 'Embedding Process 2',
    ),
  ),
  embeddingProcess3(
    PresentationSlide(
      slideWidget: EmbeddingProcessSlide3(),
      title: 'Embedding Process 3',
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
      slideWidget: JSInteropSlide1(),
      title: 'JS Interop 1',
    ),
  ),

  jsInterop2(
    PresentationSlide(
      slideWidget: JSInteropSlide2(),
      title: 'JS Interop 2',
    ),
  ),
  websiteInteractive(
    PresentationSlide(
      slideWidget: WebsiteInteractive(),
      title: 'Interactive Website',
    ),
  ),
  reactEmbedding(
    PresentationSlide(
      slideWidget: ReactEmbeddingSlide(),
      title: 'React Embedding',
      animationSteps: 4,
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
