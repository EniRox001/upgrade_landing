import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.all(32.0),
              height: 600,
              color: const Color(0xFF0D7CD6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/file.jpg',
                          fit: BoxFit.cover,
                          scale: 2.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Text(
                      'Upgrading Solutions ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'Creating next generation products and services built to solve the problems you face. With Upgrade you don\'t have to look for the best solution anymore... You are looking at it.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 30.0),
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
                  fontSize: 24.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: 250,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  mainAxisExtent: 100,
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
