import 'package:equatable/equatable.dart';
import 'volume_info.dart';
import 'sale_info.dart';
import 'access_info.dart';
import 'search_info.dart';

class Book extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  Book({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
   required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>) : null,
      accessInfo: json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>) : null,
      searchInfo: json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>) : null,
    );
  }

  @override
  List<Object?> get props => [kind, id, etag, selfLink, volumeInfo, saleInfo, accessInfo, searchInfo];
}
