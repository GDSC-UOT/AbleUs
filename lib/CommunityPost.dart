import 'package:flutter/material.dart';

class ComPost extends StatefulWidget {
  String postTitle = 'Hehe';
  String postBody = 'Haha';
  String userName = 'John Wick';

  ComPost(
      {required this.postTitle,
      required this.postBody,
      required this.userName});

  @override
  State<ComPost> createState() => _ComPostState();
}

class _ComPostState extends State<ComPost> {
  String imagePath = 'images/carehome.jpg';

  int likeCounter = 78919;

  int commentCounter = 5648;

  IconData likeIcon = Icons.favorite_border;

  void likePost() {
    setState(() {
      if (likeIcon == Icons.favorite_border) {
        likeCounter++;
        likeIcon = Icons.favorite;
      } else if (likeIcon == Icons.favorite) {
        likeCounter--;
        likeIcon = Icons.favorite_border;
      }
    });
  }

  void comment() {
    setState(() {
      AlertDialog(
        title: Text('Walk Away John!'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xff07264E),
        border: Border.all(
          color: const Color(0xff07264E),
          width: 5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff07264E),
              border: Border.all(
                color: const Color(0xff07264E),
                width: 5,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Image.asset(
              'images/carehome.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFB943B),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.userName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 300,
                      height: 2,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffFB943B),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      widget.postTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Text(
                      widget.postBody,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 300,
                      height: 2,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffFB943B),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 25),
                    child: Row(
                      children: [
                        //Like Button
                        ElevatedButton.icon(
                          icon: Icon(
                            likeIcon,
                            color: const Color(0xffffffff),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFB943B),
                          ),
                          onPressed: likePost,
                          label: Text(
                            likeCounter.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 120),
                        ),
                        // Comment button
                        ElevatedButton.icon(
                          onPressed: comment,
                          icon: const Icon(
                            Icons.comment,
                            color: const Color(0xffffffff),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFB943B),
                          ),
                          label: Text(
                            commentCounter.toString(),
                            style: const TextStyle(
                              color: const Color(0xffffffff),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
