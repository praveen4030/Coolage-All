class SliderModel {
  String? imageAssetPath;
  String? title;
  String? desc;

  SliderModel({
    this.imageAssetPath,
    this.title,
    this.desc,
  });
}

List<SliderModel> getOnboardingData() {
  final List<SliderModel> slides = [];
  final SliderModel sliderModel1 = SliderModel(
    title: "Canteens",
    desc:
        "Directly connect with the campus canteens. Order food from their Menu, and get them delivered / schedule a pickup.",
    imageAssetPath: "assets/illustrations/canteen.png",
  );
  // final SliderModel sliderModel2 = SliderModel(
  //   title: "Shops",
  //   desc:
  //       "Directly connect with the campus canteens. Order food from their Menu, and get them delivered / schedule a pickup.",
  //   imageAssetPath: "assets/illustrations/shops.png",
  // );
  final SliderModel sliderModel3 = SliderModel(
    title: "Feed",
    desc:
        "Channel campus related information, notices, events, announcements on the dedicated platform to your target audience  ",
    imageAssetPath: "assets/illustrations/notices.png",
  );
  final SliderModel sliderModel4 = SliderModel(
    title: "Services",
    desc: "Directly connect with all the service providers in your campus ",
    imageAssetPath: "assets/illustrations/services.png",
  );
  final SliderModel sliderModel5 = SliderModel(
    title: "Blogs",
    desc:
        "Share your ideas, discoveries, or write any article on any toipc that you want to share to the world or only to your college community.",
    imageAssetPath: "assets/illustrations/blogs.png",
  );
  slides.add(sliderModel1);
  slides.add(sliderModel3);
  slides.add(sliderModel4);
  slides.add(sliderModel5);

  return slides;
}

List<SliderModel> getSlides() {
  final List<SliderModel> slides = [];
  final SliderModel sliderModel1 = SliderModel(
    title: "Order Food",
    desc: "From your campus food outlets",
    imageAssetPath: "assets/illustrations/canteen.png",
  );
  final SliderModel sliderModel2 = SliderModel(
    title: "Get it delivered",
    desc: "To your doorstep",
    imageAssetPath: "assets/illustrations/canteen2.png",
  );
  final SliderModel sliderModel3 = SliderModel(
    title: "Or go Dine-in",
    desc: "Avoid long ques and save waiting time",
    imageAssetPath: "assets/illustrations/canteen3.png",
  );

  slides.add(sliderModel1);
  slides.add(sliderModel2);
  slides.add(sliderModel3);

  return slides;
}
