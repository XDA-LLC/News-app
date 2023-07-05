import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/storage_repository.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_ChangeTheme>((event, emit) async {
      await StorageRepository.putBool(
        key: 'app_theme_light',
        value: event.isLight,
      );
      emit(state.copyWith(isLight: event.isLight));
    });

    on<_ChangeView>((event, emit) async {
      await StorageRepository.putBool(
        key: 'app_view_card',
        value: event.isCardView,
      );
      emit(state.copyWith(isLight: event.isCardView));
    });

    on<_LoadTheme>((event, emit) async {
      await StorageRepository.getInstance();
      final isLight = StorageRepository.getBool(
        'app_theme_light',
        defValue: true,
      );
      final isCardView = StorageRepository.getBool(
        'app_view_card',
        defValue: false,
      );
      emit(state.copyWith(isLight: isLight, isCardView: isCardView));
    });
  }
}
