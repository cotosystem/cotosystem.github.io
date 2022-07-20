import 'package:cscs/models/link.dart';
import 'package:cscs/models/technology.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String appPhotos;
  final String projectLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    required this.appPhotos,
    required this.projectLink,
    required this.techUsed,
    this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    // ProjectModel(
    //   project: "Flutter App",
    //   title: "Smart Store App",
    //   description:
    //       "The Idea came during the pandemics to solve the issue of social distancing in supermarkets.",
    //   appPhotos: AppConstants.smartStoreImage,
    //   projectLink: "https://github.com/xxxxxx/xxxxxx",
    //   techUsed: [
    //     TechnologyConstants.flutter,
    //     TechnologyConstants.firebase,
    //     TechnologyConstants.flask,
    //     TechnologyConstants.python,
    //     TechnologyConstants.razorPay
    //   ],
    //   buttonText: "Github Link",
    // ),
  ];
}
