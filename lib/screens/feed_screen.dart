import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() {
    return _FeedScreenState();
  }
}

class _FeedScreenState extends State<FeedScreen> {
  var _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).brightness == Brightness.light
            ? Colors.amber
            : const Color.fromARGB(255, 209, 54, 244),
        unselectedItemColor: Theme.of(context).brightness == Brightness.light
            ? const Color.fromARGB(255, 49, 49, 49)
            : const Color.fromARGB(255, 235, 235, 235),
        backgroundColor: Theme.of(context).canvasColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 153,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(255, 49, 49, 49)
                            : const Color.fromARGB(255, 235, 235, 235)),
                    boxShadow: const [BoxShadow(color: Colors.black12)]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? const Color.fromARGB(255, 42, 42, 42)
                                  : const Color.fromARGB(255, 231, 231, 231),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                          child:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Image(
                                      width: 220,
                                      image: AssetImage(
                                          'assets/images/fidget dark.png'))
                                  : const Image(
                                      width: 220,
                                      image: AssetImage(
                                          'assets/images/fidget light.png')),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.messenger_rounded))),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/camera puzzle.jpg"),
                            ),
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
      )),
    );
  }
}
