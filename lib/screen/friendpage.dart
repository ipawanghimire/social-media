import 'package:complexui/screen/theme.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class FriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        title: Text('My Friends'),
        backgroundColor: AppTheme.accentColor,
      ),
      body: ListView.builder(
        itemCount: Data.fetchFeedData().length,
        itemBuilder: (context, index) {
          final post = Data.fetchFeedData()[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(post.profileImageUrl),
            ),
            title: Text(post.name,style: TextStyle(
              color: AppTheme.textColor
            ),),
            trailing: IconButton(
              icon: Icon(Icons.chat,color: AppTheme.accentColor),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Chat features coming soon!'),
                    backgroundColor: AppTheme.accentColor,
                  ),
                );
              },
            ),
            contentPadding: EdgeInsets.all(8),
          );
        },
      ),
    );
  }
}
