class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: '测试标题一',
      author: 'Natural',
      imageUrl:
          'https://n.sinaimg.cn/sinacn20110/575/w1920h1055/20190508/86b0-hwsffza7766335.jpg'),
  Post(
      title: '测试标题二',
      author: 'Natural',
      imageUrl:
          'https://n.sinaimg.cn/sinacn20110/569/w1920h1049/20190508/b663-hwsffza7768772.jpg'),
  Post(
      title: '测试标题三',
      author: 'Natural',
      imageUrl:
          'https://n.sinaimg.cn/sinacn20110/567/w1915h1052/20190508/fd26-hwsffza7768851.jpg'),
  Post(
      title: '测试标题四',
      author: 'Natural',
      imageUrl:
          'https://n.sinaimg.cn/sinacn20110/567/w1887h1080/20190508/26d1-hwsffza7768928.jpg')
];
