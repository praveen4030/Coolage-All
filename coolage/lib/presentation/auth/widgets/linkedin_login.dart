import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_login/linkedin_login.dart';

class LinkedInLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CoolageAppBar(
            isCenter: true,
            actions: [],
            text: "",
          ),
        ),
        body: LinkedInUserWidget(
          destroySession: true,
          redirectUrl: "https://www.coolage.co.in/",
          clientId: "86bsqrlnmfbvm0",
          clientSecret: 'MJr4kDFgPXYOdZLh',
          projection: ProjectionParameters.fullProjection,
          onError: (UserFailedAction e) {
            debugPrint('Error: ${e.toString()}');
            debugPrint('Error: ${e.stackTrace.toString()}');
          },
          onGetUserProfile: (UserSucceededAction linkedInUser) {
            final token = linkedInUser.user.token.accessToken;
            String firstName =
                linkedInUser.user.firstName?.localized?.label ?? '';
            String lastName =
                linkedInUser.user.lastName?.localized?.label ?? '';
            String email = linkedInUser
                    .user.email?.elements?[0].handleDeep?.emailAddress ??
                '';
            String profileImageUrl = linkedInUser
                    .user
                    .profilePicture
                    ?.displayImageContent
                    ?.elements?[0]
                    .identifiers?[0]
                    .identifier ??
                '';
            final FirebaseAuth _auth = FirebaseAuth.instance;
            getFullUserProfile(token!);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Future<void> getFullUserProfile(String accessToken) async {
    String url =
        "https://api.linkedin.com/v1/people/~:(id,first-name,last-name,headline,picture-url,industry,summary,specialties,positions:(id,title,summary,start-date,end-date,is-current,company:(id,name,type,size,industry,ticker)),educations:(id,school-name,field-of-study,start-date,end-date,degree,activities,notes),associations,interests,num-recommenders,date-of-birth,publications:(id,title,publisher:(name),authors:(id,name),date,url,summary),patents:(id,title,summary,number,status:(id,name),office:(name),inventors:(id,name),date,url),languages:(id,language:(name),proficiency:(level,name)),skills:(id,skill:(name)),certifications:(id,name,authority:(name),number,start-date,end-date),courses:(id,name,number),recommendations-received:(id,recommendation-type,recommendation-text,recommender),honors-awards,three-current-positions,three-past-positions,volunteer)?oauth2_access_token=$accessToken";
    final response = await Dio().get(url);
    debugPrint(response.toString());
  }
}
