import 'package:flutter/material.dart';

void main() {
  runApp(Xin_Chao());
}

class Xin_Chao extends StatelessWidget {
  const Xin_Chao({super.key});

  Widget renderSpace(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: SizedBox(),
    );
  }

  Widget renderButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xFF37359C),
        ),
        margin: EdgeInsets.all(16),
        height: 65,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Get Started',
            style: TextStyle(
              color: Color(0xFFFFF9FF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }

  Widget renderBody(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
              width: 70,
              height: 70,
              child: Image.network(
                'https://raw.githubusercontent.com/coredxor/images/main/crot.png',
                fit: BoxFit.fill,
              )),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Chào mừng',
              style: TextStyle(
                color: Color(0xFFffffff),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'Chào mừng bạn đến với ứng dụng của chúng tôi',
              style: TextStyle(
                color: Color(0xFFFCFCFC),
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: SizedBox(),
            ),
          ),
          renderButton(context),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: SizedBox(),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://raw.githubusercontent.com/coredxor/images/main/zzz.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(children: [
                    renderSpace(context),
                    renderBody(context),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
