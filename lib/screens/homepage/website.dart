import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Upgrade',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Container(
              height: 550,
              color: const Color(0xFF0D7CD6),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Upgrading Solutions ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Text(
                            'Creating next generation products and services built to solve the problems you face. With Upgrade you don\'t have to look for the best solution anymore... You are looking at it.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color(0xFF0D7CD6),
                              side: const BorderSide(
                                color: Colors.white,
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Text(
                              'View Products',
                            ),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print('show projects');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/file.jpg',
                          fit: BoxFit.contain,
                          scale: width < 850 ? 2.5 : 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Center(
              child: Text(
                'Our Upgraded Solutions',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 36.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: 150,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1,
                  mainAxisExtent: 180,
                ),
                children: [
                  ProductWidget(
                    onPressed: () {},
                    icon: Icons.payments,
                    text: 'PayX',
                  ),
                  ProductWidget(
                    onPressed: () {},
                    icon: Icons.notes,
                    text: 'XPost',
                  ),
                  ProductWidget(
                    onPressed: () {},
                    icon: Icons.account_tree,
                    text: 'StartR',
                  ),
                  ProductWidget(
                    onPressed: () {},
                    icon: Icons.hiking,
                    text: 'Trekks',
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D7CD6),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                  child: Text(
                    'View all developer products',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Function() onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
