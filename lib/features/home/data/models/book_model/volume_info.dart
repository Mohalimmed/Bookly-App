import 'package:equatable/equatable.dart';
import 'industry_identifier.dart';
import 'reading_modes.dart';
import 'image_links.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;
  final ImageLinks imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.containsEpubBubbles,
    this.containsImageBubbles,
   required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    var industryIdentifiersFromJson = json['industryIdentifiers'] as List<dynamic>?;
    List<IndustryIdentifier>? industryIdentifiersList = industryIdentifiersFromJson?.map((i) => IndustryIdentifier.fromJson(i as Map<String, dynamic>)).toList();

    return VolumeInfo(
      title: json['title'] as String?,
      authors: List<String>.from(json['authors'] ?? []),
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      industryIdentifiers: industryIdentifiersList,
      readingModes: json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>) : null,
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String?,
      categories: List<String>.from(json['categories'] ?? []),
      maturityRating: json['maturityRating'] as String?,
      allowAnonLogging: json['allowAnonLogging'] as bool?,
      contentVersion: json['contentVersion'] as String?,
      containsEpubBubbles: json['panelizationSummary']['containsEpubBubbles'] as bool?,
      containsImageBubbles: json['panelizationSummary']['containsImageBubbles'] as bool?,
      imageLinks:ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
    );
  }

  @override
  List<Object?> get props => [
    title,
    authors,
    publishedDate,
    description,
    industryIdentifiers,
    readingModes,
    pageCount,
    printType,
    categories,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    containsEpubBubbles,
    containsImageBubbles,
    imageLinks,
    language,
    previewLink,
    infoLink,
    canonicalVolumeLink,
  ];
}
