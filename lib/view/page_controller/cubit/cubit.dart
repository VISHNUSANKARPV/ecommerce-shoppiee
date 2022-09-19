import 'package:bloc/bloc.dart';

class PageControllerCubit extends Cubit<int> {
  PageControllerCubit() : super(0);
  void pageChanged(index) => emit(index);
}
