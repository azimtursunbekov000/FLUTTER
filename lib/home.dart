import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "SingleChildScrollView Example",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.all(10),
        // reverse: true,
        physics: AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        // physics: BouncingScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        child: Row(
          children: [
            RedContainer(),
            BlueContainer(),
            BlackContainer(),
            PurpleContainer(),
          ],
        ),
      ),
    );
  }
}

class PurpleContainer extends StatelessWidget {
  const PurpleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.purple,
    );
  }
}

class BlueContainer extends StatelessWidget {
  const BlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
    );
  }
}

class BlackContainer extends StatelessWidget {
  const BlackContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.black,
    );
  }
}

class RedContainer extends StatelessWidget {
  const RedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "ListViewExample",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        physics: AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        children: [
          RedContainer(),
          BlueContainer(),
          BlackContainer(),
          PurpleContainer(),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chars = ['aa', 'bb', 'cc', 'dd', 'ee', 'ff'];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Color.fromRGBO(89, 164, 242, 1),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: Text(
          " ListView builder Example",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: chars.length,
        // itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 200,
            width: 200,
            color: Colors.red,
            child: Text(
              // "$index",
              '${chars[index]}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Color.fromRGBO(89, 164, 242, 1),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: Text(
          " Example",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            color: Colors.black,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Color.fromRGBO(89, 164, 242, 1),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Телефоны служб",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        children: [
          Text(
            "Медицина",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 83,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 232,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/medicine.png",
                        width: 51,
                        height: 51,
                      ),
                      Text(
                        "Единый телефон\nслужб",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 232,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Content(),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Полиция",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 83,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 232,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Content(),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Посольство",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 83,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 232,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Content(),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 232,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Content(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Транспорт",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 83,
            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 232,
                  height: 83,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Content(),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 10);
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Свои номера",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 83,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 232,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Content(),
                ),
                SizedBox(width: 10),
                Container(
                  width: 232,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Content(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/medicine.png",
          width: 51,
          height: 51,
        ),
        Text(
          "Единый телефон\nслужб",
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
