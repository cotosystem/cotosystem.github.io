import 'package:cscs/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel php = TechnologyModel("Python", AppConstants.phpImage);
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel javascript =
      TechnologyModel("Javascript", AppConstants.javascriptImage);
  static TechnologyModel swift =
      TechnologyModel("Swift", AppConstants.swiftImage);
  static TechnologyModel golang =
      TechnologyModel("Go", AppConstants.golangImage);
  static TechnologyModel ruby = TechnologyModel("Ruby", AppConstants.rubyImage);
  static List<TechnologyModel> technologyLearned = [
    flutter,
    swift,
    golang,
    php,
    ruby,
    javascript,
    firebase
  ];
}
