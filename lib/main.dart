import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 82, 57, 27)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary ),),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text("Ahmad Yuda Hermawan"),
            Text("123210075"),
            BlogItem(
              blogTitle: "Blog Pertama",
              blogDescription: "Ini adalah blog pertama saya",
            ),
            BlogItem(
              blogTitle: "Blog Kedua",
              blogDescription: "Ini adalah blog kedua saya",
            ),
            BlogItem(
              blogTitle: "Blog Kedua",
              blogDescription: "Ini adalah blog kedua saya",
            ),
            BlogItem(
              blogTitle: "Blog Kedua",
              blogDescription: "Ini adalah blog kedua saya",
            ),
            BlogItem(
              blogTitle: "Blog Kedua",
              blogDescription: "Ini adalah blog kedua saya",
            ),
            BlogItem(
              blogTitle: "Blog Kedua",
              blogDescription: "Ini adalah blog kedua saya",
            ),
          ],
        )));
  }
}

class BlogItem extends StatelessWidget {
  const BlogItem({
    super.key,
    required this.blogTitle,
    required this.blogDescription,
  });

  final String blogTitle;
  final String blogDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: const Image(
                    image: AssetImage('images/gambar1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              blogTitle,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(blogDescription),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), 
                                      ),
                                      
                                    ),
                                    child: Text("Order Now")),
                                    SizedBox(width: 5),
                                OutlinedButton(
                                    onPressed: null,
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), 
                                            
                                      ),
                                      
                                    ),
                                    child: Text("Chat Admin"))
                              ],
                            )
                          ],
                        ))),
              ],
            )),
      ),
    );
  }
}
