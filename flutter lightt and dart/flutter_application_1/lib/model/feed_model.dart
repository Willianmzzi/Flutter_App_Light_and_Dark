import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detail_page.dart';

class Feed {
  final String title;
  final String subtitle;
  final String imageUrl;

  Feed(this.title, this.subtitle, this.imageUrl);

  Feed.fromFaker(Faker faker)
      : title = faker.conference.name(),
        subtitle = faker.lorem.sentences(10).join().replaceAll('.', '. '),
        imageUrl = faker.image.image(random: true, keywords: ['programming']);
}

class FeedWidget extends StatelessWidget {
  const FeedWidget({key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(children: createList(context)),
    );
  }

  List<Widget> createList(BuildContext context) {
    // Gerar lista de Widgets com 20 elementos
    return List.generate(20, (index) {
      // Gerar um objeto da nossa model class a partir do Faker()
      final feed = Feed.fromFaker(faker);

      // Gerar Card com os dados a partir do objeto feed
      return Card(
        child: ListTile(
          leading: Image.network(feed.imageUrl),
          title: Text(
            feed.title,
          ),
          subtitle:
              Text(feed.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailWidget(
                  feed: feed,
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
