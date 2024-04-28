import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'assets/images/homem1.jpg',
    'assets/images/homem2.jpg',
    'assets/images/homem3.jpg',
    'assets/images/homem4.jpg',
    'assets/images/mulher1.jpg',
    'assets/images/mulher2.jpg',
    'assets/images/mulher3.jpg',
    'assets/images/mulher4.jpg',
  ];
  List<String> posts = [
    'assets/images/homem1.jpg',
    'assets/images/homem2.jpg',
    'assets/images/homem3.jpg',
    'assets/images/homem4.jpg',
    'assets/images/mulher1.jpg',
    'assets/images/mulher2.jpg',
    'assets/images/mulher3.jpg',
    'assets/images/mulher4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/Instagram-Logo.png",
          height: 65,
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.heart),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookMessenger),
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/story.png'),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Profile Name',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                  8,
                  (index) => Column(
                        children: [
                          //Header Post
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage('assets/images/story.png'),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(profileImages[index]),
                                  ),
                                ),
                              ),
                              Text('Profile Name'),
                              Spacer(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.more_vert))
                            ],
                          ),
                          //IMAGE POST
                          Image.asset(posts[index]),
                          Divider(),
                          //FOOTER POST
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.heart)
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.message)
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.paperPlane)
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border)
                              ),
                            ],
                          )
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
