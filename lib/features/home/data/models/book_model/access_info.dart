import 'package:equatable/equatable.dart';
import 'pdf.dart'; // Import the Pdf class

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Pdf? epub; // PDF details
  final Pdf? pdf; // PDF details
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'] as String?,
      viewability: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      epub: json['epub'] != null ? Pdf.fromJson(json['epub'] as Map<String, dynamic>) : null,
      pdf: json['pdf'] != null ? Pdf.fromJson(json['pdf'] as Map<String, dynamic>) : null,
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );
  }

  @override
  List<Object?> get props => [
    country,
    viewability,
    embeddable,
    publicDomain,
    textToSpeechPermission,
    epub,
    pdf,
    webReaderLink,
    accessViewStatus,
    quoteSharingAllowed,
  ];
}
