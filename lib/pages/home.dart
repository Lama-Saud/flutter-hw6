import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: const Color(0xFF2653cc),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //const SizedBox(width: 10),
                Image.asset(
                  "lib/assets/logo.png",
                  width: 35,
                ),
              ],
            ),
            actions: const [
              Icon(
                Icons.menu,
                color: Color(0xFF474e75),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcom back",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFF091b4c)),
                ),
                Row(
                  children: [
                    const Text(
                      "Valeria",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF235fed),
                      ),
                    ),
                    Image.asset(
                      "lib/assets/bye.png",
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Total Team Members",
                            style: TextStyle(color: Color(0xFF737b9d), fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.info_outline,
                            color: Color(0xFFdcdbe3),
                            size: 20,
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "86",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0a1c4b),
                            ),
                          ),
                          // for the stack -------------------------------------
                          Stack(
                            children: const [
                              SingleImage(
                                imagePath: 'lib/assets/profile.png',
                                index: 0,
                              ),
                              SingleImage(
                                imagePath: 'lib/assets/profile2.png',
                                index: 1,
                              ),
                              SingleImage(
                                imagePath: 'lib/assets/profile3.png',
                                index: 2,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Color(0xFF0f2643)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Add team members",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingleImage extends StatelessWidget {
  final String imagePath;
  final double index;
  const SingleImage({
    required this.index,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const left = 23;
    return Container(
      margin: EdgeInsets.only(left: left * index),
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.all(2),
          color: Colors.white,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
