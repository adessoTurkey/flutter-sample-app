import 'package:equatable/equatable.dart';

abstract class PasswordState extends Equatable {
const PasswordState();

@override
List<Object?> get props => [];
}

class PasswordVisibility extends PasswordState {
  const PasswordVisibility({required this.isHidden});

  PasswordVisibility copyWith({
    bool? isHidden
}){
    return PasswordVisibility(isHidden: isHidden ?? this.isHidden);
  }

  final bool isHidden;

  @override
  List<Object?> get props => [isHidden];
}