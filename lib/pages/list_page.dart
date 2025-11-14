import 'package:flutter/material.dart';
import 'login_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      4,
      (i) => {
        "title": "Help Lorem Ipsum 0${i + 1}",
        "subtitle": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        "progress": (i + 1) * 0.2,
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealTop,
        elevation: 0,
        title: const Text(
          "SEARCH FILTER",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 120, // lebih besar & proporsional
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    /// ICON BESAR
                    Container(
                      width: 90,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: tealTop.withOpacity(0.15),
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(18),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 45,
                          color: tealBottom,
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    /// TITLE + SUBTITLE + PROGRESS
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item["title"] as String,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              item["subtitle"] as String,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 13,
                              ),
                            ),
                            LinearProgressIndicator(
                              value: item["progress"] as double,
                              backgroundColor: Colors.grey[300],
                              color: tealBottom,
                              minHeight: 6, // lebih tebal
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// ARROW
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.chevron_right, size: 32),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
