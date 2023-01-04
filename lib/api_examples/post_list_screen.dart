import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/modelclasses/post_model.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  List<PostModel> postlist = [];
  Future<List<PostModel>> getposts() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    http.Response response = await http.get(uri);
    // print("response.statusCode");
    // print(response.statusCode);
    // print("response.body");
    // print(response.body);

    var decodedBody = jsonDecode(response.body) as List;
    for (int i = 0; i < decodedBody.length; i++) {
      postlist.add(PostModel.fromJson(decodedBody[i]));
    }
    print("postlist.length");
    print(postlist.length);

    setState(() {});
    // PostModel obj = PostModel.fromJson(jsonResponse);
    // // var list = List<PostModel>.from(decodedBody.map);
    return postlist;
  }

  // Future<http.Response> getComments() async {
  //   Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");
  //   http.Response response = await http.get(uri);
  //   print("Comments status");
  //   print(response.statusCode);
  //   print("Comments Status body");
  //   print(response.body);
  //   return response;
  // }

  // Future<http.Response> getAlbums() async {
  //   Uri uriAlbums = Uri.parse("https://jsonplaceholder.typicode.com/albums");
  //   http.Response response = await http.get(uriAlbums);
  //   print("Albums status");
  //   print(response.statusCode);
  //   print("Albums body");
  //   print(response.body);
  //   return response;
  // }

  // Future<http.Response> getPhotos() async {
  //   Uri uriPhotos = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  //   http.Response response = await http.get(uriPhotos);
  //   print("Photos Status");
  //   print(response.statusCode);
  //   print("photos body");
  //   print(response.body);
  //   return response;
  // }

  // Future<http.Response> getTodos() async {
  //   Uri uriTodos = Uri.parse("https://jsonplaceholder.typicode.com/todos");
  //   http.Response response = await http.get(uriTodos);
  //   print("Todos");
  //   print(response.statusCode);
  //   print("Todos");
  //   print(response.body);
  //   return response;
  // }

  // Future<http.Response> getUsers() async {
  //   Uri uriUsers = Uri.parse("https://jsonplaceholder.typicode.com/users");
  //   http.Response response = await http.get(uriUsers);
  //   print("users");
  //   print(response.statusCode);
  //   print("body");
  //   print(response.body);
  //   return response;
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var resPosts = getposts();
    // var resComments = getComments();
    // var resAlbums = getAlbums();
    // var resPhotos = getAlbums();
    // var resTodos = getTodos();
    // var resUsers = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: postlist.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: postlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(postlist[index].title),
                    subtitle: Text(postlist[index].body),
                  );
                },
              ));
  }
}
