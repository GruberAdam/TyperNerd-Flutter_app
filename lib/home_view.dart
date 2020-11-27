import 'package:flutter/material.dart';
import './post.dart';
import './post_list.dart';
import 'text_input_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void createPost(String text) {
    this.setState(() {
      posts.add(new Post(text, "Adam"));
    });
  }

  void deletePost(Post post) {
    this.setState(() {
      posts.remove(post);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XOO"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: PostList(this.posts, this.deletePost)),
          TextInputWidget(this.createPost),
        ],
      ),
    );
  }
}
