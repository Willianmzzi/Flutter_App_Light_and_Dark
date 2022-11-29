import 'package:flutter_application_1/model/feed_model.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              feed.imageUrl,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                feed.title,
                // Alteramos aqui...
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                feed.subtitle,
                // E aqui...
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
