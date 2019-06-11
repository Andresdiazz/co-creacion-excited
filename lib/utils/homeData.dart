class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Writing things together is what we do best!', category: 'BELLEZA', imageUrl: 'assets/images/belleza.jpeg',),
  new IntroItem(title: 'Occasionally wearing pants is a good idea.', category: 'ROPA INTERIOR', imageUrl: 'assets/images/interior.jpg',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'STREAMING', imageUrl: 'assets/images/streamming.jpeg',),
];