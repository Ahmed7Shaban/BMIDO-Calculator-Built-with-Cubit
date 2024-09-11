import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  bool isMaleSelected = true;
  double sliderValue = 175.0;
  double ageResult = 0;
  double weightResult = 0;
  late double result;
  static AppCubit get(context) => BlocProvider.of(context);

  void selectMale() {
    isMaleSelected = true;
    emit(AppChangingToMale());
  }

  void selectFemale() {
    isMaleSelected = false;
    emit(AppChangingToFemale());
  }

  void toggleSlider(double value) {
    sliderValue = value;
    emit(AppTogglingSliderValue());
  }

  void ageAdd() {
    ageResult++;
    emit(AgeAddState());
  }

  void ageRemove() {
    ageResult--;
    emit(AgeRemoveState());
  }

  void weightAdd() {
    weightResult++;
    emit(WeightAddState());
  }

  void weightRemove() {
    weightResult--;
    emit(WeightRemoveState());
  }

  void setResult(double result) {
    this.result = result;
    emit(AppSettingResult());
  }
}
