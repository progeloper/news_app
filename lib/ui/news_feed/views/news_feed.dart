import 'package:flutter/material.dart';
import 'package:components/components.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const NewsFeedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const NewsFeedView();
  }
}

class NewsFeedView extends StatelessWidget {
  const NewsFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const SimpleText(
          'Breaking News',
          textStyle: TextStyleEnum.headlineMedium,
        ),
        actions: [
          SimpleIconButton(
            icon: Icons.notifications,
            colorPalette: ColorPalette.primaryContainer,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Container();
                },
              );
            },
          ),
        ],
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            SimpleCarousel(
              carouselItems: [1, 2, 3].map((article) {
                return const SimpleCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1523995462485-3d171b5c8fa9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80',
                  title: 'Title',
                  tagline: 'Tagline',
                  labelText: 'Sports',
                );
              }).toList(),
            ),
            SimpleList(
              title: 'Popular',
              listItems: [1, 2, 3, 4, 5]
                  .map((article) => SimpleListTile(
                        title: 'Title',
                        subtitle: 'Subtitle',
                        tagline: 'Tagline',
                        leading: SimpleImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1523995462485-3d171b5c8fa9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80',
                          height: size.height * 0.15,
                          width: size.height * 0.15,
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
