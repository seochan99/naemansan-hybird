import 'package:naemansan/models/course_detail_model.dart';
import 'package:naemansan/models/course_overview_model.dart';
import 'package:naemansan/models/moment_model.dart';
import 'package:naemansan/models/similar_course_model.dart';
import 'package:naemansan/models/spot_model.dart';

class CourseService {
  List<CourseOverview> getDummyCourseOverviews(
      List<int>? tagIds, double? lati, double? longi, int? page, int? size) {
    switch (tagIds) {
      case [0]:
        {
          return [
            CourseOverview(
                id: 1,
                isEnrolled: true,
                title: "1번산책로",
                siGuDong: "경기도홧성시 동탄반석로",
                distance: "1234",
                tags: ["아무튼 태그"],
                momentCount: 1,
                likeCount: 1),
            CourseOverview(
                id: 2,
                isEnrolled: true,
                title: "2번산책로",
                siGuDong: "경기도홧성시 동탄반석로",
                distance: "1234",
                tags: ["여유어쩌고", "뭐어쩌고"],
                momentCount: 1,
                likeCount: 1),
          ];
        }
      default:
        {
          return [
            CourseOverview(
                id: 1,
                isEnrolled: false,
                title: "1번산책로",
                siGuDong: "경기도홧성시 동탄반석로",
                distance: "1234",
                tags: ["아무튼 태그"],
                momentCount: 1,
                likeCount: 1),
            CourseOverview(
                id: 2,
                isEnrolled: true,
                title: "2번산책로",
                siGuDong: "경기도홧성시 동탄반석로",
                distance: "1234",
                tags: ["여유어쩌고", "뭐어쩌고"],
                momentCount: 1,
                likeCount: 1),
            CourseOverview(
                id: 3,
                isEnrolled: true,
                title: "3번산책로",
                siGuDong: "경기도홧성시 동탄반석로",
                distance: "1234",
                tags: ["여유어쩌고"],
                momentCount: 1,
                likeCount: 1)
          ];
        }
    }
  }

  CourseDetail getDummyCourseDetail(int courseId) {
    List<CourseDetail> dummyCourseDetails = [
      CourseDetail(
          id: 1,
          title: "1번산책로",
          content: "1번산책로 설명",
          siGuDong: "경기도 화성시 동탄반석로",
          locations: [Location(latitude: 11.2, longitude: 11.1)],
          tags: [],
          distance: "1234",
          createdAt: "2023-12-11",
          userId: "user1",
          userNickName: "user1"),
      CourseDetail(
          id: 2,
          title: "2번산책로",
          content: "2번산책로 설명",
          siGuDong: "경기도 화성시 동탄반석로",
          locations: [Location(latitude: 11.2, longitude: 11.1)],
          tags: [],
          distance: "1234",
          createdAt: "2023-12-11",
          userId: "user1",
          userNickName: "user1"),
    ];

    if (dummyCourseDetails.length >= courseId) {
      return dummyCourseDetails[courseId - 1];
    } else {
      return CourseDetail(
          id: 1111,
          title: "범위 넘음",
          content: "1번산책로 설명",
          siGuDong: "경기도 화성시 동탄반석로",
          locations: [Location(latitude: 11.2, longitude: 11.1)],
          tags: [],
          distance: "1234",
          createdAt: "2023-12-11",
          userId: "user1",
          userNickName: "user1");
    }
  }

  List<Moment> getDummyMoment(int courseId) {
    List<List<Moment>> dummyMoments = [
      [
        Moment(
            id: 1,
            courseId: 1,
            courseTitle: "산책로1",
            nickname: "서현",
            content: "안녕하세요?1",
            createdAt: "2023-09-23",
            emotion: "SADNESS",
            weather: "CLOUDY_DAY"),
        Moment(
            id: 2,
            courseId: 1,
            courseTitle: "산책로1",
            nickname: "서현2",
            content: "안녕하세요?",
            createdAt: "2023-09-24",
            emotion: "FLUTTER",
            weather: "CLOUDY_DAY")
      ],
      [
        Moment(
            id: 1,
            courseId: 2,
            courseTitle: "산책로2",
            nickname: "서현",
            content: "안녕하세요?3",
            createdAt: "2023-09-23",
            emotion: "SADNESS",
            weather: "CLOUDY_DAY"),
        Moment(
            id: 2,
            courseId: 2,
            courseTitle: "산책로2",
            nickname: "서현2",
            content: "안녕하세요?4",
            createdAt: "2023-09-24",
            emotion: "FLUTTER",
            weather: "CLOUDY_DAY")
      ]
    ];

    if (dummyMoments.length >= courseId) {
      return dummyMoments[courseId - 1];
    } else {
      return [
        Moment(
            id: 1,
            courseId: 111,
            courseTitle: "범위 초과 산책로",
            nickname: "서현",
            content: "안녕하세요?",
            createdAt: "2023-09-23",
            emotion: "SADNESS",
            weather: "CLOUDY_DAY"),
        Moment(
            id: 2,
            courseId: 111,
            courseTitle: "범위 초과 산책로",
            nickname: "서현2",
            content: "안녕하세요?",
            createdAt: "2023-09-24",
            emotion: "FLUTTER",
            weather: "CLOUDY_DAY")
      ];
    }
  }

  List<Spot> getDummySpot(int courseId) {
    List<List<Spot>> dummySpots = [
      [
        Spot(
            id: 1,
            title: "기존 스팟1",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
        Spot(
            id: 1,
            title: "기존 스팟2",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
      ],
      [
        Spot(
            id: 1,
            title: "1",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
        Spot(
            id: 1,
            title: "1",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
      ],
    ];

    if (dummySpots.length >= courseId) {
      return dummySpots[courseId - 1];
    } else {
      return [
        Spot(
            id: 1,
            title: "1",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
        Spot(
            id: 1,
            title: "1",
            content: "1",
            location: Location(latitude: 10.0, longitude: 20.0),
            category: "CAFE_BAKERY"),
      ];
    }
  }

  List<Spot> getDummyNewSpot() {
    List<Spot> dummySpots = [
      Spot(
          id: 6,
          title: "새로운 스팟 1",
          content: "1",
          location: Location(latitude: 10.0, longitude: 20.0),
          category: "SHOPPING"),
      Spot(
          id: 7,
          title: "새로운 스팟 2",
          content: "1",
          location: Location(latitude: 10.0, longitude: 20.0),
          category: "FOOD"),
      Spot(
          id: 6,
          title: "새로운 스팟 3",
          content: "1",
          location: Location(latitude: 10.0, longitude: 20.0),
          category: "ACCOMMODATION"),
      Spot(
          id: 6,
          title: "새로운 스팟 4",
          content: "1",
          location: Location(latitude: 10.0, longitude: 20.0),
          category: "PUB_BAR"),
      Spot(
          id: 6,
          title: "새로운 스팟 5",
          content: "1",
          location: Location(latitude: 10.0, longitude: 20.0),
          category: "NATURE"),
    ];

    return dummySpots;
  }

  List<SimilarCourse> getDummySimilarCourses(int courseId) {
    if (courseId == 1) {
      return [
        SimilarCourse(
            id: 2,
            title: "산책로2",
            startLocationName: "시군구...",
            distance: "1234",
            tags: ["1", "2"]),
        SimilarCourse(
            id: 3,
            title: "산책로3",
            startLocationName: "시군구...",
            distance: "1234",
            tags: ["1", "2"])
      ];
    } else {
      return [];
    }
  }
}
