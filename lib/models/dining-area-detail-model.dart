import 'package:ntu_foodhunter/models/review-model.dart';
import 'package:ntu_foodhunter/models/menu-model.dart';

class DiningAreaDetailModel {
  int id;
  String name;
  String addr;
  String phoneNo;
  String operatingHour;
  String subLoc;
  int capacity;
  double avgScore;
  List<String> images;
  int totalReviewer;
  double poorReview;
  double belowReview;
  double avgReview;
  double aboveReview;
  double excellentReview;
  String poorReviewPercent;
  String belowReviewPercent;
  String avgReviewPercent;
  String aboveReviewPercent;
  String excellentReviewPercent;
  List<String> tag;
  List<ReviewModel> review;
  List<MenuModel> menu;

  DiningAreaDetailModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> assetList = json['assets'];
    List<dynamic> tagList = json['tag'];
    List<dynamic> reviewList = json['review'];
    List<dynamic> menuList = json['menu'];

    id = json['id'];
    name = json['name'];
    addr = json['addr'];
    phoneNo = json['phone_no'];
    operatingHour = json['operating_hour'];
    capacity = json['capacity'];
    subLoc = json['sub_loc'];
    avgScore = json['avg_score'];
    totalReviewer = json['totalReviewer'];
    poorReview = json['poorReview'];
    poorReviewPercent = json['poorReviewPercent'];
    belowReview = json['belowReview'];
    belowReviewPercent = json['belowReviewPercent'];
    avgReview = json['avgReview'];
    avgReviewPercent = json['avgReviewPercent'];
    aboveReview = json['aboveReview'];
    aboveReviewPercent = json['aboveReviewPercent'];
    excellentReview = json['excellentReview'];
    excellentReviewPercent = json['excellentReviewPercent'];

    tag = tagList.length > 0
        ? tagList.map((x) => x['name'].toString()).toList()
        : new List<String>();

    menu = menuList.length > 0
        ? menuList.map((x) => MenuModel.fromJson(x)).toList()
        : new List<MenuModel>();

    review = reviewList.length > 0
        ? reviewList.map((x) => ReviewModel.fromJson(x)).toList()
        : new List<ReviewModel>();

    images = new List<String>();
    images.add(json['imgActive'].toString());
    images.addAll(assetList.map((x) => x['url'].toString()).toList());
  }
}
