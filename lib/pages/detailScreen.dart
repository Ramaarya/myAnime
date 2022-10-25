import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailScreen extends StatefulWidget {
  final int item;
  final String title;
  final String image;
  final num score;
  final String synopsis;

  const DetailScreen({
    Key? key,
    required this.item,
    required this.title,
    required this.image,
    required this.score,
    required this.synopsis,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? dataAnime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataAnime = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('$dataAnime'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: NetworkImage('${widget.image}'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: screenWidht,
                height: 80,
                // color: Colors.blue,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        // color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              // title ====================================
                              fit: FlexFit.tight,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                // color: Colors.purple,
                                child: Text(
                                  'Title',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              // score ===================================
                              fit: FlexFit.tight,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                // color: Colors.yellow,
                                child: Text(
                                  'Score',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              // title ====================================
                              fit: FlexFit.tight,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                // color: Colors.purple,
                                child: Text(
                                  ': ${widget.title}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              // score ===================================
                              fit: FlexFit.tight,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                // color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Text(
                                      ': ${widget.score}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '${widget.synopsis}',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DataAnime {
  final String title;
  DataAnime({required this.title});
}
