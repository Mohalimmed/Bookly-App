import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;

  Pdf({
    this.isAvailable,
  });

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'] as bool?,
    );
  }

  @override
  List<Object?> get props => [isAvailable];
}
