
import 'homepage.dart';

class Data {
  static List<Post> fetchFeedData() {
    return [
      Post(
        name: 'Luffy',
        profileImageUrl: 'https://i.pinimg.com/originals/76/da/03/76da03c579566626fa270bdb6df1280b.jpg',
        description: 'I am going to be the pirate king.', time: ' just now', image: "https://i.pinimg.com/originals/76/da/03/76da03c579566626fa270bdb6df1280b.jpg", ),
      Post(
        name: 'Naruto',
        profileImageUrl: 'https://i.pinimg.com/736x/5f/e9/ac/5fe9acc9d52b6742901adbb5da0f56bb.jpg',
        description: 'iam going to be hokage someday.', time: '1 min ago', image: 'https://i.pinimg.com/736x/5f/e9/ac/5fe9acc9d52b6742901adbb5da0f56bb.jpg', ),
      Post(name: 'Asta',
          profileImageUrl: 'https://i.pinimg.com/550x/bb/a0/83/bba0830edb7069f9d8d0c6e786357db8.jpg',
          description: 'I am going to be wizard king someday.', time: '10 min ago', image: 'https://i.pinimg.com/550x/bb/a0/83/bba0830edb7069f9d8d0c6e786357db8.jpg',
      ),
      Post(name: 'Hinita',
          profileImageUrl: 'https://i.pinimg.com/originals/15/b6/03/15b603f1de1545e7aeeae8a16ef7b9ce.png',
          description: 'Naruto kun =><=', time: '1 hr ago', image: 'https://i.pinimg.com/originals/15/b6/03/15b603f1de1545e7aeeae8a16ef7b9ce.png',
      ),
      Post(name: 'Gojo',
          profileImageUrl: 'https://i.pinimg.com/474x/5a/95/11/5a9511bfd9c9eebff8e58f3d91759930.jpg',
          description: 'Going to fight the king of curses will post the video later.', time: '1 day ago', image: 'ttps://i.pinimg.com/474x/5a/95/11/5a9511bfd9c9eebff8e58f3d91759930.jpg',
      ),
    ];
  }
}
