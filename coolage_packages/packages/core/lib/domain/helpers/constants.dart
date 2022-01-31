part of core;

class Constants {
  static const int USERS_LIMIT = 20;

  static const int BLOGS_LIMIT = 20;
  static const int PREVIOUS_ORDERS_LIMIT = 5;
  static const int FEED_POSTS_LIMIT = 20;
  static const int REFURBISHED_ITEMS_LIMIT = 20;
  static const int CITY_STORES_LIMIT = 20;
  static const int CATEGORY_STORES_LIMIT = 20;
  static const int CHATS_LIMIT = 20;
  static const int MESSAGES_LIMIT = 20;
  static const int MORE_USER_ORDERS_LIMIT = 10;

  static const String NOTICE = "Notice";
  static const String SEMINAR = "Seminar";
  static const String ACADEMICS = "Academics";
  static const String SPORTS = "Sports";
  static const String CLUBS = "Clubs";
  static const String PLACEMENT_INTERNSHIPS = "Placement & Internships";
  static const String OTHERS = "Others";
  static const String UG_GROUP = "UG";
  static const String PG_GROUP = "PG";
  static const String PHD_GROUP = "PHD";
  static const String FACULTY_GROUP = "FACULTY";
  static const String INDIVIDUAL_GROUP = "INDIVIDUAL";
  static const String APPROVED = "approved";
  static const String DECLINED = "declined";
  static const String PENDING = "pending";
  static const String EXPIRED = "expired";
  static const String USER_TYPE_STUDENT = "Student";
  static const String USER_TYPE_FACULTY = "Faculty";
  static const String USER_TYPE_STAFF = "Staff";
  static const String USER_TYPE_GUEST = "Guest";

  static const String APPROVAL_STATUS = "approvalStatus";

  static const String APP_VERSION = 'App Version (28.0.0)';
  static const String website = "website";
  static const String phoneNo = "phoneNo";
  static const String email = "email";

  static const studentInfo =
      "Select if you are enrolled in any UG, PG or PHD programme in your college or if you are an exchange student. ";
  static const facultyInfo =
      "Select if you are employed as a teaching faculty in any department or if you are a visiting or guest lecturar to your college ";
  static const staffInfo =
      "Select if you are employed in any non-teaching technical or non-technical profile by your college. ";
  static const guestInfo =
      "Select if you are visiting the college for a span of time and you are not enrolled in any of it’s programmes or employed by the college in any capacity. ";
}

class AppFeaturesConstants {
  static const String canteen = 'canteen';
  static const String home = 'home';
  static const String store = 'store';
}

class HiveConstants {
  static const int cartBox = 1;
  static const int itemModel = 2;
  static const int canteenBasicDetailsModel = 3;
  static const int canteenGeopointModel = 4;
  static const int deliverableZonesModel = 5;
  static const int categoryPriceModel = 6;

  static const String cartBoxName = 'CART_BOX_NAME';
  static const String itemModelName = 'ITEM_MODEL_NAME';
  static const String canteenBasicDetailsModelName =
      'CANTEEN_BASIC_DETAILS_MODEL_NAME';
  static const String canteenGeopointModelName = 'CANTEEN_GEOPOINT_MODEL_NAME';
  static const String deliverableZonesModelName =
      'DELIVERABLE_ZONES_MODEL_NAME';
  static const String categoryPriceModelName = 'CATEGORY_PRICE_MODEL_NAME';
}

class Lists {
  static const List<String> sexList = [
    "Male",
    "Female",
    "Non - Binary",
    "Other",
  ];

  static const List<String> getPronounList = [
    "she/her/hers",
    "he/him/his",
    "they/them/theirs",
  ];

  static const List<String> getImpairmentList = [
    "None",
    "Orthopaedically impaired",
    "Visually impaired",
    "Hearing impaired",
    "Speech impaired",
    "Cognitively impaired",
  ];

  static const List<String> getDesignationsList = [
    "Professor",
    "Assistant Professor",
    "Dean",
    "Head of Department",
    "Other teaching staff",
    "Other non-teaching staff",
  ];

  static const List<String> getUserTypes = [
    "Student",
    "Faculty",
    "Staff",
    "Guest"
  ];

  static const List<String> countriesList = [
    "Afghan",
    "Andorran",
    "Argentine",
    "Azerbaijani",
    "Albanian",
    "Angolan",
    "Armenian",
    "Algerian",
    "Anguillan",
    "Australian",
    "American",
    "Austrian",
    "Bahamian",
    "Belarusian",
    "Bermudian",
    "Botswanan",
    "Bruneian",
    "Burundian",
    "Bahraini",
    "Belgian",
    "Bhutanese",
    "Brazilian",
    "Bulgarian",
    "Bangladeshi",
    "Belizean",
    "Bolivian",
    "British",
    "Burkinan",
    "Barbadian",
    "Beninese",
    "Burmese",
    "Cambodian",
    "Cayman Islander",
    "Chinese",
    "Congolese",
    "Cuban",
    "Czech",
    "Cameroonian",
    "Central African",
    "Colombian",
    "Cook Islander",
    "Cymraes",
    "Canadian",
    "Chadian",
    "Comoran",
    "Costa Rican",
    "Cymro",
    "Cape Verdean",
    "Chilean",
    "Congolese",
    "Croatian",
    "Cypriot",
    "Danish",
    "Dutch",
    "Dominican",
    "East Timorese",
    "English",
    "Ethiopian",
    "Ecuadorean",
    "Equatorial Guinean",
    "Egyptian",
    "Eritrean",
    "Emirati",
    "Estonian",
    "Faroese",
    "French",
    "Fijian",
    "Filipino",
    "Finnish",
    "Gabonese",
    "Ghanaian",
    "Grenadian",
    "Guinean",
    "Gambian",
    "Gibraltarian",
    "Guamanian",
    "Guyanese",
    "Georgian",
    "Greek",
    "Guatemalan",
    "German",
    "Greenlandic",
    "Haitian",
    "Honduran",
    "Hong Konger",
    "Hungarian",
    "Icelandic",
    "Iraqi",
    "Ivorian",
    "Indian",
    "Irish",
    "Indonesian",
    "Israeli",
    "Iranian",
    "Italian",
    "Jamaican",
    "Japanese",
    "Jordanian",
    "Kazakh",
    "Kosovan",
    "Kenyan",
    "Kuwaiti",
    "Kittitian",
    "Kyrgyz",
    "Lao",
    "Libyan",
    "Latvian",
    "Lebanese",
    "Lithuanian",
    "Liberian",
    "Luxembourger",
    "Macanese",
    "Malaysian",
    "Marshallese",
    "Mexican",
    "Mongolian",
    "Mosotho",
    "Macedonian",
    "Maldivian",
    "Martiniquais",
    "Micronesian",
    "Montenegrin",
    "Mozambican",
    "Malagasy",
    "Malian",
    "Mauritanian",
    "Moldovan",
    "Montserratian",
    "Malawian",
    "Maltese",
    "Mauritian",
    "Monegasque",
    "Moroccan",
    "Namibian",
    "Nicaraguan",
    "North Korean",
    "Nauruan",
    "Nigerian",
    "Northern Irish",
    "Nepalese",
    "Nigerien",
    "Norwegian",
    "New Zealander",
    "Niuean",
    "Omani",
    "Pakistani",
    "Papua New Guinean",
    "Polish",
    "Palauan",
    "Paraguayan",
    "Portuguese",
    "Palestinian",
    "Peruvian",
    "Prydeinig",
    "Panamanian",
    "Pitcairn Islander",
    "Puerto Rican",
    "Qatari",
    "Romanian",
    "Russian",
    "Rwandan",
    "Salvadorean",
    "Saudi Arabian",
    "Slovenian",
    "South Korean",
    "St Helenian",
    "Surinamese",
    "Syrian",
    "Sammarinese",
    "Scottish",
    "Sierra Leonean",
    "Solomon Islander",
    "South Sudanese",
    "St Lucian",
    "Swazi",
    "Samoan",
    "Senegalese",
    "Singaporean",
    "Somali",
    "Spanish",
    "Stateless",
    "Swedish",
    "Sao Tomean",
    "Serbian",
    "Slovak",
    "South African",
    "Sri Lankan",
    "Sudanese",
    "Swiss",
    "Taiwanese",
    "Togolese",
    "Tunisian",
    "Tuvaluan",
    "Tajik",
    "Tongan",
    "Turkish",
    "Tanzanian",
    "Trinidadian",
    "Turkmen",
    "Thai",
    "Tristanian",
    "Ugandan",
    "Ukrainian",
    "Uruguayan",
    "Uzbek",
    "Vatican citizen",
    "Vincentian",
    "Venezuelan",
    "Vietnamese",
    "Wallisian",
    "Welsh",
    "Yemeni",
    "Zambian",
    "Zimbabwean",
  ];
}
