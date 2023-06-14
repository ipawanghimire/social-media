import 'package:complexui/screen/friendpage.dart';
import 'package:complexui/screen/login.dart';
import 'package:complexui/screen/profilepage.dart';
import 'package:complexui/screen/theme.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> feedData = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    feedData = Data.fetchFeedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,

      appBar: AppBar(
        backgroundColor: AppTheme.accentColor,
        title: Text(
          'Social App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppTheme.textColor,
          ),
        ),
      ),
      drawer: NavigationDrawer(),
      body:
      ListView.builder(
        itemCount: feedData.length,
        itemBuilder: (context, index) {
          final post = feedData[index];

          return Card(
            color: AppTheme.primaryColor.withOpacity(0.9),
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal:0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(post.profileImageUrl),
                        radius: 25.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        children: [
                          Text(
                            post.name,
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: AppTheme.textColor),
                          ),
                          Text(
                            post.time,
                            style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(post.description,style: TextStyle(
                      color: AppTheme.textColor
                  ),),
                  SizedBox(height: 10.0),
                  Center(
                    child: Image.network(
                      post.profileImageUrl,
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        color: post.isLiked ? AppTheme.accentColor : Colors.grey,
                        onPressed: () {
                          setState(() {
                            post.isLiked = !post.isLiked;
                            post.isDisliked = false;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.thumb_down),
                        color: post.isDisliked ? Colors.red : Colors.grey,
                        onPressed: () {
                          setState(() {
                            post.isDisliked = !post.isDisliked;
                            post.isLiked = false;
                          });
                        },
                      ),

                      IconButton(onPressed: (){
                        showSnackbar(context, 'Comment feature coming soon!');
                      }, icon: Icon(Icons.comment),
                        color: Colors.grey,)
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: AppTheme.accentColor,
      ),
    );
  }

}

class Post {
  final String name;
  final String profileImageUrl;
  final String description;
  final String time;
  final String image;
  bool isLiked;
  bool isDisliked;

  Post({
    required this.name,
    required this.profileImageUrl,
    required this.description,
    required this.time,
    required this.image,
    this.isLiked = false,
    this.isDisliked = false,

  });
}


class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.accentColor,
            ),
            child: Text(
              'GUFFapp',
              style: TextStyle(
                color: AppTheme.textColor,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.create, color: AppTheme.textColor,),
            title: Text('Create Post', style: TextStyle(
                color: AppTheme.textColor
            ),),
            onTap: () {
              showSnackbar(context, 'Add Post feature coming soon!');
            },
          ),
          ListTile(
            leading: Icon(Icons.home, color: AppTheme.textColor,),
            title: Text('Home', style: TextStyle(
                color: AppTheme.textColor
            ),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.group, color: AppTheme.textColor,),
            title: Text('Friends', style: TextStyle(
                color: AppTheme.textColor
            ),),
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FriendPage()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: AppTheme.textColor,),
            title: Text('Profile', style: TextStyle(
                color: AppTheme.textColor
            ),),
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: AppTheme.textColor,),
            title: Text('Logout', style: TextStyle(
                color: AppTheme.textColor
            ),),
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: AppTheme.accentColor,
      ),
    );
  }
}