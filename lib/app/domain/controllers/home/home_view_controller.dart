import 'package:flutter/cupertino.dart';

class HomeViewController extends ChangeNotifier {
  double? _currentSlider = 0;
  double? get currentSlider => _currentSlider;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  /// Change carousel index
  void setCurrentSlider(PageController pageController) {
    pageController.addListener(
      () {
        _currentSlider = pageController.page;
        notifyListeners();
      },
    );
  }

  /// Change Page of the custom bottom navigation bar
  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
