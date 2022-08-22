import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:solusi_digital_flutter_assesment/constants/theme.dart';
import 'package:solusi_digital_flutter_assesment/models/news.dart';

class DetailNews extends StatelessWidget {
  final Articles articles;
  const DetailNews({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Berita")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  articles.urlToImage!,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                articles.title!,
                style: titleAppbar.copyWith(color: Colors.black),
              ),
              Text(
                articles.source!.name!,
                style: titleListTile,
              ),
              Text(
                articles.publishedAt!,
                style: titleListTile,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${articles.content}",
                maxLines: 100,
                style: titleListTile.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
