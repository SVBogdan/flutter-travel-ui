import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object> get props => throw [];
}

class WelcomState extends CubitStates {
  @override
  List<Object> get props => throw [];
}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => throw [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => throw [];
}

class DetailState extends CubitStates {
  DetailState(this.places);
  final DataModel places;
  @override
  List<Object> get props => throw [];
}
