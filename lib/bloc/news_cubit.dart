import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_17_fire/bloc/news_states.dart';
import 'package:flutter_17_fire/models/article_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(InitalState()) {
    if (articles.isEmpty) {
      getNewsAndAddToFirebase();
    }
  }
  Dio dio = Dio();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<Article> articles = [];
  static NewsCubit get(BuildContext context) => BlocProvider.of(context);

  getNewsAndAddToFirebase() async {
    firestore.collection("articles").snapshots().listen((event) async {
      if (event.docs.isEmpty) {
        articles = [];

        var response = await dio.get(
            "https://newsapi.org/v2/everything?q=bitcoin&pageSize=30&page=1&apiKey=e60394104032466cae812699f6e6826f");
        if (response.statusCode == 200) {
          List<dynamic> data = response.data["articles"];
          data.forEach((element) async {
            //articles.add(Article.fromJson(element));
            Article a = Article.fromJson(element);
            a.id = firestore.collection("articles").doc().id;
            await firestore.collection("articles").doc(a.id).set(a.toJson());
          });
          emit(RefresState());
        }
      } else {
        articles = [];
        event.docs.forEach((element) {
          articles.add(Article.fromJson(element.data()));
        });
        emit(RefresState());
      }
    });
  }

  addToFave(int index) async {
    articles[index].isFave = !articles[index].isFave!;
    await firestore
        .collection("articles")
        .doc(articles[index].id)
        .update(articles[index].toJson());
    //emit(RefresState());
  }
}
