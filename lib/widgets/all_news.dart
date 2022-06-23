import 'package:flutter/material.dart';
import 'package:flutter_17_fire/bloc/news_cubit.dart';
import 'package:flutter_17_fire/bloc/news_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    return BlocConsumer<NewsCubit, NewsStates>(
        builder: (context, state) => ListView.builder(
              itemCount: cubit.articles.length,
              itemBuilder: (context, index) => Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Text(
                        cubit.articles[index].title!,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          cubit.addToFave(index);
                        },
                        icon: (cubit.articles[index].isFave! == false)
                            ? const Icon(
                                Icons.favorite_outline,
                                size: 20,
                              )
                            : const Icon(
                                Icons.favorite,
                                size: 20,
                                color: Colors.red,
                              ))
                  ],
                ),
              ),
            ),
        listener: (context, state) {});
  }
}
